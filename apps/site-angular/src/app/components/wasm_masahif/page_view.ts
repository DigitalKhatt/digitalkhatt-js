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

  pause() {
    if (this.renderingState === RenderingStates.RUNNING && this.resume == null) {
      this.renderingState = RenderingStates.PAUSED;
      this.paintTask?.cancel();
      this.resume = () => {
        if (this.renderingState === RenderingStates.PAUSED) {
          this.renderingState = RenderingStates.RUNNING;
        }
        this.resume = null;
      };
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

    let token = {
      cancelled: false,
      isCancelled: function () { return this.cancelled },
      cancel: function () {
        this.cancelled = true;
      },
    };

    if (this.paintTask) {
      this.paintTask.cancel();
    }

    this.paintTask = token;

    let div = this.div;

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
    } else {
      // Cancelled -- discard the new (incomplete, still-hidden) canvas and
      // restore whichever content was on screen before, then go back to
      // INITIAL rather than leaving renderingState stuck at RUNNING: draw()
      // only ever proceeds from INITIAL, so without this a page cancelled
      // this way could never be picked up again even after it becomes
      // relevant, and the abandoned canvas would linger in the DOM forever.
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
