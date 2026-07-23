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
  providers: [WasmMushafService],
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

        this.quranService.quranShaper.setScalePoint(this.fontScale);

        this.startCommonPostLoadFlow();

        this.applyForceCtrl.valueChanges.subscribe(value => {
          this.ngZone.runOutsideAngular(() => {
            this.quranService.applyForce = value;
            this.buffer.reset();
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

  protected onFontScaleChanged(): void {
    this.quranService.quranShaper.setScalePoint(this.fontScale);
  }

  protected createPageView(pageElement: HTMLElement, index: number): PageView {
    return new PageView(pageElement, index, this.quranService, this.viewport);
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

  protected drawView(view: PageView, canvasWidth: number, canvasHeight: number): Promise<any> {
    return view.draw(canvasWidth, canvasHeight, this.tajweedColorCtrl.value, this.viewport.hasRestrictedScaling);
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
