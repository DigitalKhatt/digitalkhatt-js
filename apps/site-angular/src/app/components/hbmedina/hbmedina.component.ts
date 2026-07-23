import { AfterViewInit, Component, ElementRef, Inject, NgZone, OnInit, ViewChild } from '@angular/core';

import { UntypedFormControl } from '@angular/forms';
import { SidebarContentsService } from '../../services/navigation/sidebarcontents';

import { BreakpointObserver } from '@angular/cdk/layout';

import { ScrollDispatcher } from '@angular/cdk/scrolling';
import { MatDialog } from '@angular/material/dialog';
import { ActivatedRoute, Router, RouterLink, RouterOutlet } from '@angular/router';
import { MatSnackBar } from '@angular/material/snack-bar';
import { loadAndCacheFont, loadHarfbuzz } from "./harfbuzz"
import { MushafLayoutType, MUSHAFLAYOUTTYPE, NewMadinahQuranTextService, OldMadinahQuranTextService, QuranTextIndopak15Service, QuranTextService } from '../../services/qurantext.service';
import { TajweedService } from '../../services/tajweed.service';
import { saveAs } from 'file-saver-es';
import { commonModules } from '../../app.config';
import { MushafSidebarComponent } from '../mushaf-sidebar/mushaf-sidebar.component';
import { PageNumberBoxComponent } from '../page-number-box/page-number-box.component';
import { BaseMushafViewerComponent } from '../mushaf-viewer/base-mushaf-viewer.component';
import { PageView } from './page_view';

@Component({
  selector: 'app-medina-component',
  templateUrl: './hbmedina.component.ts.html',
  styleUrls: ['./hbmedina.component.ts.scss'],
  host: {
    '[class.oldmadina]': 'mushafType == MushafLayoutTypeEnum.OldMadinah',
    '[class.newmadina]': 'mushafType == MushafLayoutTypeEnum.NewMadinah',
    '[class.indopak]': 'mushafType == MushafLayoutTypeEnum.IndoPak15Lines'
  },
  providers: [TajweedService],
  imports: [...commonModules, RouterOutlet, RouterLink, MushafSidebarComponent, PageNumberBoxComponent]
})
export class HBMedinaComponent extends BaseMushafViewerComponent<PageView> implements OnInit, AfterViewInit {

  protected readonly mushafRoutePrefix = 'hb';

  texFormat: boolean;
  isJustifiedCtrl: UntypedFormControl;

  @ViewChild('calculatewidthElem', { static: false }) calculatewidthElem: ElementRef;
  @ViewChild('lineJustify', { static: false }) lineJustify: ElementRef;

  constructor(@Inject(MUSHAFLAYOUTTYPE) mushafLayoutType: MushafLayoutType,
    sidebarContentsService: SidebarContentsService,
    scrollDispatcher: ScrollDispatcher, ngZone: NgZone,
    elRef: ElementRef,
    breakpointObserver: BreakpointObserver,
    matDialog: MatDialog,
    router: Router,
    private tajweedService: TajweedService,
    private _snackBar: MatSnackBar,
    route: ActivatedRoute,
  ) {
    super(mushafLayoutType, /* defaultFontScale = */ 1, sidebarContentsService, scrollDispatcher, ngZone,
      elRef, breakpointObserver, matDialog, router, route);

    this.isJustifiedCtrl = new UntypedFormControl(true);
    this.texFormat = true;

    window.onerror = (msg, url, lineNo, columnNo, error) => {
      console.log("Error occured: " + msg + error.stack);
      this.wasmStatus = "Error";
      return false;
    }
  }

  ngAfterViewInit() {

    this.initViewArea();

    setTimeout(() => {

      this.ngZone.runOutsideAngular(async () => {

        await loadHarfbuzz("assets/hb.wasm")

        if (this.mushafType === MushafLayoutType.OldMadinah) {
          await loadAndCacheFont("oldmadina", "assets/fonts/hb/oldmadina.otf")
        } else if (this.mushafType === MushafLayoutType.NewMadinah) {
          await loadAndCacheFont("oldmadina", "assets/fonts/hb/madina.otf")
        } else {
          await loadAndCacheFont("oldmadina", "assets/fonts/hb/indopak.otf")
        }

        document.fonts.load("12px oldmadina").then(() => {

          this.setViewport(this.getScale(this.zoomCtrl.value), false);

          this.startCommonPostLoadFlow();

        })

      });
    });
  }

  protected createPageView(pageElement: HTMLElement, index: number): PageView {
    return new PageView(pageElement, index,
      this.calculatewidthElem.nativeElement, this.lineJustify.nativeElement,
      this.viewport, this.tajweedService, this.quranTextService);
  }

  protected updateViewsGeometry(duringZoom: boolean): void {
    this.views.forEach(a => a.update(this.viewport, duringZoom));
  }

  protected finalizeZoomViews(): void {
    this.views.forEach(a => a.update(this.viewport, false));
  }

  protected drawView(view: PageView, canvasWidth: number, canvasHeight: number): Promise<any> {
    return view.draw(canvasWidth, canvasHeight, this.texFormat, this.tajweedColorCtrl.value);
  }

  protected computeOutlineY(outline): number {
    const paddingTop = 0.2 * this.viewport.fontSize;
    return paddingTop + 1.77 * this.viewport.fontSize * outline.lineIndex;
  }

  replacer(key: any, value: any) {
    if (value instanceof Map) {
      const result: { [key: number]: string } = {};
      for (let [key, keyValue] of value) {
        result[key] = keyValue;
      }
      return result;
    } else {
      return value;
    }
  }

  saveTajweed() {

    const result = {
      quranText: {},
      tajweedResult: {}
    };

    type MushafLayoutTypeStrings = keyof typeof MushafLayoutType;

    const keys: MushafLayoutTypeStrings[] = Object.keys(MushafLayoutType) as MushafLayoutTypeStrings[];

    for (let mushafTypeName in MushafLayoutType) {
      if (isNaN(Number(mushafTypeName))) {
        const tajweedData = this.getTajweedData(mushafTypeName);


        result.quranText[mushafTypeName] = tajweedData.quranText;
        result.tajweedResult[mushafTypeName] = tajweedData.tajweedResult;
      }
    }

    const json = JSON.stringify(result, this.replacer, 2);

    const blob = new Blob([json], { type: "application/json;charset=utf-8" });
    saveAs(blob, `tajweed_data.json`);
  }

  getTajweedData(mushafTypeName: string) {

    let textService: QuranTextService;

    const mushafType = MushafLayoutType[mushafTypeName];

    switch (mushafType) {
      case MushafLayoutType.OldMadinah:
        textService = OldMadinahQuranTextService;
        break;
      case MushafLayoutType.IndoPak15Lines:
        textService = QuranTextIndopak15Service;
        break;
      default:
        textService = NewMadinahQuranTextService;
        break;
    }

    const quranText = textService.quranText;

    const tajweedResult = new Map();

    for (let pageIndex = 0; pageIndex < quranText.length; pageIndex++) {
      const lineTajweed = this.tajweedService.applyTajweedByPage(textService, pageIndex);
      tajweedResult.set(pageIndex + 1, lineTajweed);
    }

    return {
      quranText,
      tajweedResult
    };

  }
}
