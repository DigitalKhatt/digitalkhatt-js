import { RenderingStates } from '../mushaf-viewer/rendering_states';
import { WasmMushafService } from '../../services/wasm_masahif/wasm-mushaf.service';

class PageView {
  renderingState: RenderingStates;
  private viewport;
  private canvas;
  private loadingIconDiv;
  private paintTask;
  id;
  resume;

  public renderingId;
  zoomLayer;
  hasRestrictedScaling;

  constructor(public div, private pageIndex, private quranService: WasmMushafService, viewport) {
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

  // Unlike hbmedina's chunked DOM rendering, draw() below has no internal
  // checkpoint that awaits a pause -- the WASM call can't be interrupted
  // mid-flight. pause()/resume() still exist so the component's cooperative
  // scheduler (renderView/forceRendering) can track priority the same way;
  // they just don't stall an in-flight render.
  pause() {
    if (this.renderingState === RenderingStates.RUNNING && this.resume == null) {
      this.renderingState = RenderingStates.PAUSED;
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

  async draw(canvasWidth, canvasHeight, tajweedColor, hasRestrictedScaling) {

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

    await this.quranService.printPage(this.pageIndex, ctx, token, tajweedColor);

    // Only cancellation withholds the result: the WASM call itself can't be
    // interrupted mid-flight the way hbmedina's chunked DOM rendering can, so
    // a pause() that raced with an in-flight draw must not discard already
    // -completed work -- finalize it once printPage resolves regardless of
    // renderingState.
    if (!token.isCancelled()) {
      this.renderingState = RenderingStates.FINISHED;
      showCanvas();
      if (this.loadingIconDiv) {
        this.div.removeChild(this.loadingIconDiv);
        delete this.loadingIconDiv;
      }
      this.resetZoomLayer(/* removeFromDOM = */ true);
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
