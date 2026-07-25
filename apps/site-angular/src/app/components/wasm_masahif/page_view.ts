import { RenderingStates } from '../mushaf-viewer/rendering_states';
import { WasmMushafService } from '../../services/wasm_masahif/wasm-mushaf.service';
import { MushafLayoutType } from '../../services/qurantext.service';

class PageView {
  renderingState: RenderingStates;
  private viewport;
  private canvas;
  // A previous, already-visible canvas kept on screen (instead of reset()'s
  // immediate teardown) while a page setting like "Optimize marks" that
  // affects every page is toggled -- see markStaleForRerender(). draw() swaps
  // it out for the freshly rendered replacement only once that's ready,
  // avoiding a blank flash in between.
  private staleCanvas;
  private loadingIconDiv;
  private paintTask;
  private pausePromise: Promise<boolean>;
  id;
  resume;

  public renderingId;
  zoomLayer;
  hasRestrictedScaling;

  constructor(public div, private pageIndex, private quranService: WasmMushafService,
    private mushafType: MushafLayoutType, viewport) {
    this.renderingState = RenderingStates.INITIAL;

    this.id = pageIndex + 1;
    this.renderingId = 'page' + this.id;

    this.viewport = viewport;

    this.div.style.width = Math.floor(this.viewport.width) + 'px';
    this.div.style.height = Math.floor(this.viewport.height) + 'px';

    this.paintTask = null;
    this.resume = null;

    this.zoomLayer = null;

    this.hasRestrictedScaling = false;
  }

  // Unlike hbmedina's chunked DOM rendering, the WASM shaping call inside
  // draw() can't be interrupted mid-flight -- by the time pause() is called
  // (the scheduler has moved priority to a different page), that call is
  // already running in the worker and will finish regardless, a sunk cost.
  // But once it finishes, printPage() has a real choice: draw the result, or
  // not. pausePromise is what lets it wait there for a resume decision --
  // same pattern as otfmushaf/page_view.ts's chunked-rendering pause(), just
  // with the wait point moved to "after shaping" instead of "after each
  // line" since that's the only place our (opaque, single-call) WASM path
  // has a real checkpoint. Awaiting an unresolved promise costs nothing and
  // blocks nothing else -- other pages keep shaping/drawing independently
  // while this one waits.
  pause() {
    if (this.renderingState === RenderingStates.RUNNING && this.resume == null) {
      this.renderingState = RenderingStates.PAUSED;
      this.pausePromise = new Promise<boolean>(resolve => {
        this.resume = () => {
          if (this.renderingState === RenderingStates.PAUSED) {
            this.renderingState = RenderingStates.RUNNING;
            resolve(true);
          } else {
            resolve(false);
          }
          this.resume = null;
        };
      });
    }
  }

  toggleLoadingIconSpinner(viewVisible = false) {
    this.loadingIconDiv?.classList.toggle("notVisible", !viewVisible);
  }

  // Used when a setting that affects every page (e.g. "Optimize marks") is
  // toggled: unlike reset(), this does NOT tear down the DOM immediately, so
  // whatever is currently on screen keeps showing until draw() has a
  // freshly-rendered replacement ready to reveal -- an abrupt blank-then-
  // repaint reads as broken once each re-render round-trips through the
  // shaping worker instead of finishing synchronously.
  markStaleForRerender() {
    if (this.renderingState === RenderingStates.INITIAL) {
      return;
    }
    if (this.paintTask) {
      this.paintTask.cancel();
      this.paintTask = null;
    }
    this.renderingState = RenderingStates.INITIAL;
    if (this.resume) {
      this.resume();
    }
    if (this.canvas) {
      this.staleCanvas = this.canvas;
      this.canvas = null;
    }
  }

  async draw(canvasWidth, canvasHeight, tajweedColor, applyForce, fontScale, hasRestrictedScaling) {

    if (this.renderingState !== RenderingStates.INITIAL) {
      return Promise.resolve();
    }


    let cancelled = false;
    let token = {
      isCancelled: () => cancelled,
      cancel: () => { cancelled = true; },
      waitIfPaused: async (): Promise<boolean> => {
        if (this.renderingState === RenderingStates.PAUSED) {
          const resumed = await this.pausePromise;
          if (!resumed) return false;
        }
        return !cancelled;
      },
    };

    if (this.paintTask) {
      this.paintTask.cancel();
    }

    this.paintTask = token;

    this.canvas = document.createElement('canvas');
    this.canvas.setAttribute('hidden', 'hidden');

    // Keep the canvas hidden until the page has fully rendered -- WASM shapes
    // and draws a page in one shot (no partial/incremental paint to reveal
    // early), so there is nothing useful to show before completion.
    let isCanvasHidden = true;
    let showCanvas = () => {
      if (isCanvasHidden) {
        this.canvas.removeAttribute('hidden');
        isCanvasHidden = false;
      }
    };

    this.div.appendChild(this.canvas);

    this.canvas.style.width = this.viewport.width + 'px';
    this.canvas.style.height = this.viewport.height + 'px';

    this.canvas.width = canvasWidth;
    this.canvas.height = canvasHeight;

    this.div.setAttribute('data-loaded', true);

    this.renderingState = RenderingStates.RUNNING;

    let ctx = this.canvas.getContext('2d', { alpha: true });

    let scale = canvasWidth / 255;
    ctx.transform(scale, 0, 0, -scale, 0, canvasHeight);

    this.hasRestrictedScaling = hasRestrictedScaling;

    await this.quranService.printPage(
      this.mushafType, this.pageIndex, ctx, token, tajweedColor, applyForce, fontScale);

    // printPage() itself already stops short of drawing once it notices
    // cancellation (see pause() above) -- shaping (unavoidable, already
    // finished by the time we get here) still happened, but the separate
    // drawing pass was skipped. Reflect that here: don't finalize a result
    // that was never actually drawn.
    if (!token.isCancelled()) {
      // Every place that reassigns this.paintTask away from a token
      // (draw()'s own re-entry guard above, markStaleForRerender(),
      // reset()) calls cancel() on the old one first -- so !isCancelled()
      // here already guarantees token === this.paintTask; no separate
      // ownership check needed on this side.
      this.renderingState = RenderingStates.FINISHED;
      showCanvas();
      if (this.staleCanvas) {
        this.staleCanvas.width = 0;
        this.staleCanvas.height = 0;
        this.staleCanvas.remove();
        this.staleCanvas = null;
      }
      if (this.loadingIconDiv) {
        this.div.removeChild(this.loadingIconDiv);
        delete this.loadingIconDiv;
      }
      this.resetZoomLayer(/* removeFromDOM = */ true);
    } else if (token === this.paintTask) {
      // Cancelled, but still the current (sole) attempt for this page --
      // isCancelled() alone can't tell that apart from being superseded by
      // a newer draw() call for this SAME page (see the trailing `else`
      // below): both set it true. This is the other way to get cancelled
      // -- our own pause() was never resumed, or our shaping request was
      // displaced by a different page's in WasmMushafService's coalescing
      // queue (requestShaping()) -- and in both cases nothing else owns
      // these fields yet, so discarding the incomplete canvas and going
      // back to INITIAL is safe. Without this, a page cancelled this way
      // could never be picked up again even after it becomes relevant, and
      // the abandoned canvas would linger in the DOM forever.
      if (this.canvas) {
        this.canvas.width = 0;
        this.canvas.height = 0;
        this.canvas.remove();
      }
      if (this.staleCanvas) {
        this.canvas = this.staleCanvas;
        this.staleCanvas = null;
      } else {
        this.canvas = null;
      }
      this.renderingState = RenderingStates.INITIAL;
      this.resume = null;
    }
    // else: cancelled AND token !== this.paintTask -- a newer draw() call
    // for this same page already took over every field above; there's
    // nothing left for this (superseded) call to do.

    if (token === this.paintTask) {
      this.paintTask = null;
    }
  }

  reset(keepZoomLayer = false) {

    let div = this.div;
    div.style.width = Math.floor(this.viewport.width) + 'px';
    div.style.height = Math.floor(this.viewport.height) + 'px';

    if (this.paintTask) {
      this.paintTask.cancel();
      this.paintTask = null;
    }

    this.renderingState = RenderingStates.INITIAL;

    if (this.resume) {
      this.resume();
    }

    div.removeAttribute('data-loaded');

    let childNodes = div.childNodes;
    let currentZoomLayerNode = (keepZoomLayer && this.zoomLayer) || null;

    for (let i = childNodes.length - 1; i >= 0; i--) {
      let node = childNodes[i];
      if (currentZoomLayerNode === node) {
        continue;
      }
      div.removeChild(node);
    }

    if (!currentZoomLayerNode) {
      if (this.canvas) {
        this.canvas.width = 0;
        this.canvas.height = 0;
        delete this.canvas;
      }
      this.resetZoomLayer();
    }

    // Already removed from the DOM by the childNodes loop above if present;
    // just release the reference and its backing store, matching this.canvas.
    if (this.staleCanvas) {
      this.staleCanvas.width = 0;
      this.staleCanvas.height = 0;
      this.staleCanvas = null;
    }

    this.loadingIconDiv = document.createElement('div');
    this.loadingIconDiv.className = 'loadingIcon notVisible';
    div.appendChild(this.loadingIconDiv);
  }

  update(viewport, isScalingRestricted, duringZoom: boolean = false) {
    this.viewport = viewport;

    if (this.canvas) {
      if ((this.hasRestrictedScaling && isScalingRestricted) || duringZoom) {
        this.canvas.style.width = this.viewport.width + 'px';
        this.canvas.style.height = this.viewport.height + 'px';
        this.div.style.width = this.viewport.width + 'px';
        this.div.style.height = this.viewport.height + 'px';
        return;
      }

      if (!this.zoomLayer && !this.canvas.hasAttribute('hidden')) {
        this.zoomLayer = this.canvas;
        this.zoomLayer.style.position = 'absolute';
      }
    }

    if (this.zoomLayer) {
      this.zoomLayer.style.width = this.viewport.width + 'px';
      this.zoomLayer.style.height = this.viewport.height + 'px';
    }

    this.reset(true);
  }

  destroy() {
    this.reset(false);
  }

  private resetZoomLayer(removeFromDOM = false) {
    if (!this.zoomLayer) {
      return;
    }
    let zoomLayerCanvas = this.zoomLayer;
    // Zeroing the width and height causes Firefox to release graphics
    // resources immediately, which can greatly reduce memory consumption.
    zoomLayerCanvas.width = 0;
    zoomLayerCanvas.height = 0;

    if (removeFromDOM) {
      // Note: `ChildNode.remove` doesn't throw if the parent node is undefined.
      this.zoomLayer.remove();
    }
    this.zoomLayer = null;
  }

}

export { PageView };
