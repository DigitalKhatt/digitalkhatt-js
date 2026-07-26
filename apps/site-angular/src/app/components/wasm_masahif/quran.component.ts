import { Component, AfterViewInit, OnInit, ElementRef, NgZone, ChangeDetectorRef } from '@angular/core';
import { WasmMushafService } from '../../services/wasm_masahif/wasm-mushaf.service';

import { UntypedFormControl } from '@angular/forms';
import { SidebarContentsService } from '../../services/navigation/sidebarcontents';

import { BreakpointObserver } from '@angular/cdk/layout';

import { MatDialog } from '@angular/material/dialog';
import { ActivatedRoute, Router, RouterLink, RouterOutlet } from '@angular/router';
import { ScrollDispatcher } from '@angular/cdk/scrolling';
import { commonModules } from '../../app.config';
import { MushafLayoutType, mushafTypeFromRouteSegment, mushafTypeToRouteSegment } from '../../services/qurantext.service';
import { MushafSidebarComponent } from '../mushaf-sidebar/mushaf-sidebar.component';
import { PageNumberBoxComponent } from '../page-number-box/page-number-box.component';
import { BaseMushafViewerComponent, PDFPageViewBuffer, DEFAULT_CACHE_SIZE } from '../mushaf-viewer/base-mushaf-viewer.component';
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

  // Single-finger tap on the viewer toggles fullscreen -- the "tap to
  // immerse/tap to leave" pattern common in mobile reader/video apps.
  // Desktop keeps the explicit toolbar button + native Escape-to-exit
  // instead (a plain mouse click on the page shouldn't hijack fullscreen).
  // Distinguished from a scroll drag by requiring the touch to stay within
  // TAP_MAX_MOVEMENT_PX and end within TAP_MAX_DURATION_MS; multi-touch
  // (pinch) never arms it since only a single touch point starts the timer.
  private static readonly TAP_MAX_MOVEMENT_PX = 10;
  private static readonly TAP_MAX_DURATION_MS = 300;
  private tapStartX = 0;
  private tapStartY = 0;
  private tapStartTime = 0;

  // Set in the constructor -- see there for why touch capability, not just
  // isIOS/isAndroid, decides this.
  isTouchDevice = false;

  loading = true;

  applyForceCtrl: UntypedFormControl;

  constructor(
    private quranService: WasmMushafService,
    private cdr: ChangeDetectorRef,
    sidebarContentsService: SidebarContentsService,
    scrollDispatcher: ScrollDispatcher, ngZone: NgZone,
    elRef: ElementRef,
    breakpointObserver: BreakpointObserver,
    matDialog: MatDialog,
    router: Router,
    route: ActivatedRoute) {
    // Unlike hb/ot, the wasm route has no per-mushaf MUSHAFLAYOUTTYPE
    // provider (see app.routes.ts) -- all three masahif share the single
    // 'wasm/:type' route, so the initial type comes from the URL segment
    // itself. ngOnInit's paramMap subscription below picks up any later
    // change to that same segment (a router.navigate() from selectMushaf()).
    super(mushafTypeFromRouteSegment(route.snapshot.paramMap.get('type')),
      /* defaultFontScale = */ 1, sidebarContentsService, scrollDispatcher, ngZone,
      elRef, breakpointObserver, matDialog, router, route);

    this.applyForceCtrl = new UntypedFormControl(false);
    this.updateApplyForceAvailability();

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

    // Hides the toolbar's fullscreen button on phones/tablets, where
    // onViewerTouchStart/End's tap gesture already toggles fullscreen --
    // the button would just be a redundant, easy-to-fat-finger control
    // there. Checked via touch capability rather than only isIOS/isAndroid:
    // iPadOS Safari's default UA impersonates desktop Mac Safari (no "iPad"
    // substring), so UA sniffing alone misses tablets exactly like the ones
    // named in this request.
    this.isTouchDevice = isIOS || isAndroid
      || (typeof navigator !== 'undefined' && navigator.maxTouchPoints > 0);
  }

  onViewerTouchStart(event: TouchEvent): void {
    if (event.touches.length !== 1) {
      // Second finger landed (pinch) -- disarm, this isn't a tap.
      this.tapStartTime = 0;
      return;
    }
    this.tapStartX = event.touches[0].clientX;
    this.tapStartY = event.touches[0].clientY;
    this.tapStartTime = Date.now();
  }

  onViewerTouchEnd(event: TouchEvent): void {
    if (this.tapStartTime === 0 || event.touches.length > 0) {
      // Not armed, or a finger is still down (mid pinch/multi-touch release).
      this.tapStartTime = 0;
      return;
    }

    const elapsed = Date.now() - this.tapStartTime;
    this.tapStartTime = 0;

    const touch = event.changedTouches[0];
    if (!touch || elapsed > WasmMasahifComponent.TAP_MAX_DURATION_MS) {
      return;
    }

    const distance = Math.hypot(touch.clientX - this.tapStartX, touch.clientY - this.tapStartY);
    if (distance > WasmMasahifComponent.TAP_MAX_MOVEMENT_PX) {
      return;
    }

    this.toggleFullScreen();
  }

  override ngOnInit(): void {
    super.ngOnInit();

    // paramMap replays the current segment immediately on subscribe, which
    // switchMushaf()'s own newType===this.mushafType guard already no-ops
    // against -- the constructor above applied that same initial value, and
    // views/pageElements aren't ready for a rebuild this early anyway (that
    // only happens after ngAfterViewInit). Only a later router.navigate()
    // (selectMushaf(), or the user editing the URL/using back-forward)
    // actually changes the segment and triggers a rebuild.
    this.route.paramMap.subscribe(params => {
      this.switchMushaf(mushafTypeFromRouteSegment(params.get('type')));
    });
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

  // Called from the toolbar's mushaf-switcher menu. Navigates rather than
  // calling switchMushaf() directly, so the URL reflects the current mushaf
  // (bookmarkable/shareable, works with back/forward) -- since this stays
  // on the same 'wasm/:type' routeConfig (see app.routes.ts), Angular's
  // default shouldReuseRoute keeps this same component instance alive and
  // just re-emits ActivatedRoute.paramMap, which ngOnInit's subscription
  // above turns back into the actual switchMushaf() rebuild.
  selectMushaf(newType: MushafLayoutType): void {
    if (newType === this.mushafType) {
      return;
    }
    this.router.navigate([`/${this.mushafRoutePrefix}/${mushafTypeToRouteSegment(newType)}`]);
  }

  // Switches masahif in place -- no component destroy/recreate (see
  // selectMushaf() above) and no re-running the (already-resolved, since
  // WasmMushafService is a shared singleton -- see the constructor comment
  // above) WASM load. quranService.printPage()/shapeText() etc. all take
  // mushafType as an explicit per-call argument, so the only state actually
  // baked in per mushaf is: this.mushafType/quranTextService/defaultFontSize
  // (applyMushafLayoutType), the page count/outline derived from it, and
  // each PageView's own captured mushafType (baked in at construction, see
  // page_view.ts) -- so every existing view must be torn down and rebuilt
  // rather than just marked stale.
  private switchMushaf(newType: MushafLayoutType): void {
    if (newType === this.mushafType) {
      return;
    }

    this.views.forEach(view => view.destroy());
    this.views = [];
    this.buffer = new PDFPageViewBuffer<PageView>(DEFAULT_CACHE_SIZE);
    this.highestPriorityPage = null;

    this.applyMushafLayoutType(newType);
    this.updateApplyForceAvailability();

    this.totalPages = this.quranTextService.nbPages;
    this.maxPages = this.totalPages;
    this.outline = this.quranTextService.outline;

    this.setViewport(this.getScale(this.zoomCtrl.value), false);
    this.pages = new Array(this.maxPages);

    // pages.length just changed, but *ngFor won't necessarily add/remove any
    // page divs for it -- switching between two masahif with the same page
    // count (e.g. New/Old Madinah, both 604) reuses the exact same DOM nodes
    // under trackByIndex, so pageElements.changes never fires. Forcing
    // change detection synchronously (rather than waiting on that event)
    // works either way: it flushes the *ngFor diff when the count did
    // change, and is a no-op otherwise, and pageElements is up to date
    // immediately after in both cases.
    this.cdr.detectChanges();

    this.ngZone.runOutsideAngular(() => {
      this.pageElements.forEach((page, index) => {
        this.views[index] = this.createPageView(page.nativeElement, index);
      });

      this.setPage(Math.min(this.currentPageNumber, this.totalPages));
      this.update();
    });
  }

  // IndoPak's "Optimize marks" (applyForceCtrl) physics-solver pass isn't
  // meant for this mushaf -- forced off and disabled so it can't be toggled
  // on there, re-enabled for New/Old Madinah. {emitEvent: false} since
  // switchMushaf() already does its own full destroy/rebuild + update()
  // regardless -- letting this trigger the applyForceCtrl.valueChanges
  // subscription (markAllViewsStale + update) too would just be redundant
  // work on views that are about to be destroyed anyway.
  private updateApplyForceAvailability(): void {
    if (this.mushafType === MushafLayoutType.IndoPak15Lines) {
      this.applyForceCtrl.setValue(false, { emitEvent: false });
      this.applyForceCtrl.disable({ emitEvent: false });
    } else {
      this.applyForceCtrl.enable({ emitEvent: false });
    }
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
