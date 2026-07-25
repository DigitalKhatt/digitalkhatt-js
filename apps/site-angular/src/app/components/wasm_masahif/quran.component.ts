import { Component, AfterViewInit, OnInit, ElementRef, NgZone, Inject } from '@angular/core';
import { WasmMushafService } from '../../services/wasm_masahif/wasm-mushaf.service';

import { UntypedFormControl } from '@angular/forms';
import { SidebarContentsService } from '../../services/navigation/sidebarcontents';

import { BreakpointObserver } from '@angular/cdk/layout';

import { MatDialog } from '@angular/material/dialog';
import { ActivatedRoute, Router, RouterLink, RouterOutlet } from '@angular/router';
import { ScrollDispatcher } from '@angular/cdk/scrolling';
import { commonModules } from '../../app.config';
import { MushafLayoutType, MUSHAFLAYOUTTYPE } from '../../services/qurantext.service';
import { MushafSidebarComponent } from '../mushaf-sidebar/mushaf-sidebar.component';
import { PageNumberBoxComponent } from '../page-number-box/page-number-box.component';
import { BaseMushafViewerComponent } from '../mushaf-viewer/base-mushaf-viewer.component';
import { PageView } from './page_view';

// OtLayout::InterLineSpacing (design units), converted to the same "255x410
// pt" page-space printPage() targets (72 / 4800 pt/unit). Unlike hbmedina's
// DOM-flowed lines, the WASM engine positions every line at a fixed pitch
// independent of font scale, so this must not be multiplied by fontScale the
// way hbmedina's viewport.fontSize-based line height is.
//
// Line N's box top is N * InterLineSpacing -- NOT OtLayout::TopSpace +
// N * InterLineSpacing, which is line.ystartposition itself (see
// wasm-mushaf.service.ts's TOP_SPACE_DESIGN_UNITS comment: ystartposition is
// each line's baseline-ish anchor, sitting TopSpace below its own box top).
// Confirmed against hbmedina: its own setOutline() has no per-line TopSpace
// term either, just a small fixed paddingTop.
const POINTS_PER_DESIGN_UNIT = 72 / 4800;
const INTERLINE_PT = 1800 * POINTS_PER_DESIGN_UNIT;

@Component({
  selector: 'app-wasm-masahif',
  templateUrl: './quran.component.html',
  styleUrls: ['./quran.component.scss'],
  host: {
    '[class.oldmadina]': 'mushafType == MushafLayoutTypeEnum.OldMadinah',
    '[class.newmadina]': 'mushafType == MushafLayoutTypeEnum.NewMadinah',
    '[class.indopak]': 'mushafType == MushafLayoutTypeEnum.IndoPak15Lines'
  },
  imports: [...commonModules, RouterOutlet, RouterLink, MushafSidebarComponent, PageNumberBoxComponent]
})
export class WasmMasahifComponent extends BaseMushafViewerComponent<PageView> implements OnInit, AfterViewInit {

  protected readonly mushafRoutePrefix = 'wasm';

  private maxCanvasPixels = 16777216;

  loading = true;

  applyForceCtrl: UntypedFormControl;

  constructor(@Inject(MUSHAFLAYOUTTYPE) mushafLayoutType: MushafLayoutType,
    private quranService: WasmMushafService,
    sidebarContentsService: SidebarContentsService,
    scrollDispatcher: ScrollDispatcher, ngZone: NgZone,
    elRef: ElementRef,
    breakpointObserver: BreakpointObserver,
    matDialog: MatDialog,
    router: Router,
    route: ActivatedRoute) {
    super(mushafLayoutType, /* defaultFontScale = */ 1, sidebarContentsService, scrollDispatcher, ngZone,
      elRef, breakpointObserver, matDialog, router, route);

    this.applyForceCtrl = new UntypedFormControl(false);

    this.quranService.statusObserver.subscribe((status) => {
      if (status.error) {
        this.loading = false;
        this.wasmStatus = status.message;
        console.log("Error : " + JSON.stringify(status.error));
      } else {
        this.wasmStatus = status.message + " ...";
      }
    })

    window.onerror = (msg, url, lineNo, columnNo, error) => {
      console.log("Error occured: " + msg + error.stack);
      this.loading = false;
      this.wasmStatus = "Error";
      return false;
    }

    let userAgent = (typeof navigator !== 'undefined' && navigator.userAgent) || '';
    let isAndroid = /Android/.test(userAgent);
    let isIOS = /\b(iPad|iPhone|iPod)(?=;)/.test(userAgent);

    if (isIOS || isAndroid) {
      this.maxCanvasPixels = 5242880;
    }
  }

  ngAfterViewInit() {

    this.initViewArea();

    this.setViewport(this.getScale(this.zoomCtrl.value), false);

    this.quranService.promise.then(() => {
      this.ngZone.runOutsideAngular(async () => {

        this.startCommonPostLoadFlow();

        // Now that WasmMushafService is a shared singleton (see wasm-mushaf.
        // service.ts), its promise is already resolved on every mushaf route
        // after the first one visited in a session, so this .then() runs
        // synchronously-ish instead of after several seconds of WASM
        // loading. That exposes a latent race in the base class's initial
        // scroll-subscription pass (startCommonPostLoadFlow's auditTime(0,
        // animationFrameScheduler) + startWith(null) can fire before this
        // freshly-mounted route's scroll container has settled, finding zero
        // visible pages and leaving `loaded` false forever) that the old
        // per-route instance's multi-second load time used to mask by
        // accident. Retry once on the next frame as a safety net.
        requestAnimationFrame(() => requestAnimationFrame(() => {
          if (!this.loaded) {
            this.update();
          }
        }));

        this.applyForceCtrl.valueChanges.subscribe(() => {
          this.ngZone.runOutsideAngular(() => {
            this.markAllViewsStale();
            this.update();
          });
        });

      });

    }).catch((error) => {
      this.wasmStatus = "Error during compilation. Cannot proceede"
      const message = this.wasmStatus;
      if (error && error.message) {
        this.wasmStatus = "Error during compilation. Cannot proceede." + error.message;
      }
      this.loading = false;
      console.log(message, error);
    });

  }

  protected createPageView(pageElement: HTMLElement, index: number): PageView {
    return new PageView(pageElement, index, this.quranService, this.mushafType, this.viewport);
  }

  // buffer.reset() (the base class default) destroys every buffered page's
  // canvas immediately, blanking the screen until the (now worker-round-
  // tripped, so noticeably slower than before) re-render catches up.
  // markStaleForRerender() instead keeps each page's current canvas on
  // screen until its replacement is actually ready -- see page_view.ts.
  private markAllViewsStale(): void {
    for (const view of this.views) {
      view.markStaleForRerender();
    }
  }

  protected override resetBufferForTajweedColorChange(): void {
    this.markAllViewsStale();
  }

  // No markAllViewsStale() here: fontSizeChanged() calls updateViewsGeometry()
  // right after this, whose PageView.update() already promotes the current
  // canvas to a stretched placeholder kept on screen until the replacement
  // is ready -- the same zoomLayer mechanism pinch-zoom uses -- but only if
  // the canvas hasn't already been torn down by a buffer reset first.
  protected override resetBufferForFontScaleChange(): void {
  }

  protected updateViewsGeometry(duringZoom: boolean): void {
    var ctx = this.testcanvasRef.nativeElement.getContext('2d', { alpha: true, });

    let outputScale = this.quranService.getOutputScale(ctx);

    this.viewport.hasRestrictedScaling = false;

    if (this.maxCanvasPixels > 0) {

      let pixelsInViewport = this.viewport.width * this.viewport.height;
      let maxScale = Math.sqrt(this.maxCanvasPixels / pixelsInViewport);
      if (outputScale.sx > maxScale || outputScale.sy > maxScale) {
        outputScale.sx = maxScale;
        outputScale.sy = maxScale;
        outputScale.scaled = true;
        this.viewport.hasRestrictedScaling = true;
      }
    }

    let canvasWidth = Math.round(this.viewport.width * outputScale.sx);
    let canvasHeight = Math.round(this.viewport.height * outputScale.sy);

    this.canvasWidth = canvasWidth;
    this.canvasHeight = canvasHeight;

    this.views.forEach(a => a.update(this.viewport, this.viewport.hasRestrictedScaling, duringZoom));
  }

  protected finalizeZoomViews(): void {
    this.views.forEach(a => a.update(this.viewport, this.viewport.hasRestrictedScaling, false));
  }

  // The shared worker can only shape one page at a time, but that's now
  // enforced at the right layer -- a coalescing single-slot queue inside
  // WasmMushafService.requestShaping() -- instead of here. That lets the
  // scheduler start multiple pages' draw() calls concurrently (one shaping,
  // another sitting in PageView.pause()'s pausePromise waiting to see if
  // it's still wanted) without one blocking the other, matching how
  // hbmedina's/otfmushaf's chunked, genuinely-interruptible renderers were
  // already free to do.
  protected drawView(view: PageView, canvasWidth: number, canvasHeight: number): Promise<any> {
    return view.draw(canvasWidth, canvasHeight, this.tajweedColorCtrl.value,
      this.applyForceCtrl.value, this.fontScale, this.viewport.hasRestrictedScaling);
  }

  protected computeOutlineY(outline): number {
    return 14 + INTERLINE_PT * outline.lineIndex * this.scale;
  }

  protected onVisiblePagesUpdated(visiblePages): void {
    const visibleIds = new Set<number>()
    for (const visisbleView of visiblePages.views) {
      const pageView = visisbleView.view;
      pageView?.toggleLoadingIconSpinner(/* viewVisible = */ true);
      visibleIds.add(visisbleView.id)
    }

    this.buffer.toggleLoadingIconSpinner(visibleIds);
  }
}
