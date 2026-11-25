import { AfterViewInit, ChangeDetectorRef, Component, DestroyRef, ElementRef, NgZone, ViewChild, inject } from '@angular/core';
import { takeUntilDestroyed } from '@angular/core/rxjs-interop';
import { FormControl } from '@angular/forms';
import { ActivatedRoute, Router, RouterLink, RouterOutlet } from '@angular/router';
import { BreakpointObserver } from '@angular/cdk/layout';
import { ScrollDispatcher } from '@angular/cdk/scrolling';
import { MatDialog } from '@angular/material/dialog';
import { EMPTY, animationFrameScheduler, from } from 'rxjs';
import { auditTime, catchError, distinctUntilChanged, map, switchMap } from 'rxjs/operators';
import { saveAs } from 'file-saver-es';

import { commonModules } from '../../app.config';
import { SidebarContentsService } from '../../services/navigation/sidebarcontents';
import { OPENTYPE_FONT_FAMILIES } from '../../services/opentype-fonts';
import {
  MushafLayoutType, NewMadinahQuranTextService, OldMadinahQuranTextService,
  QuranTextIndopak15Service, mushafTypeFromRouteSegment
} from '../../services/qurantext.service';
import { TajweedService } from '../../services/tajweed.service';
import { BaseMushafViewerComponent, DEFAULT_CACHE_SIZE, PDFPageViewBuffer } from '../mushaf-viewer/base-mushaf-viewer.component';
import { MushafSelectorComponent } from '../mushaf-viewer/mushaf-selector.component';
import { MushafSidebarComponent } from '../mushaf-sidebar/mushaf-sidebar.component';
import { PageNumberBoxComponent } from '../page-number-box/page-number-box.component';
import { PAGE_WIDTH, INTERLINE, PageView, fitMushafLines } from './page_view';

@Component({
  selector: 'app-otfmushaf-component',
  templateUrl: './otfmushaf.component.html',
  styleUrls: ['./otfmushaf.component.scss'],
  providers: [TajweedService],
  imports: [
    ...commonModules, RouterOutlet, RouterLink,
    MushafSidebarComponent, PageNumberBoxComponent, MushafSelectorComponent
  ]
})
export class OTFMushafComponent extends BaseMushafViewerComponent<PageView> implements AfterViewInit {
  protected readonly mushafRoutePrefix = 'ot';
  readonly fontWeight = new FormControl(400, { nonNullable: true });
  fontLoadError = '';

  @ViewChild('book', { static: true }) private book: ElementRef<HTMLElement>;

  private readonly destroyRef = inject(DestroyRef);
  private started = false;
  private renderFrame: number;

  get fontFamily(): string {
    return OPENTYPE_FONT_FAMILIES[this.mushafType];
  }

  constructor(
    sidebarContentsService: SidebarContentsService, scrollDispatcher: ScrollDispatcher,
    ngZone: NgZone, elRef: ElementRef, breakpointObserver: BreakpointObserver,
    matDialog: MatDialog, router: Router, route: ActivatedRoute,
    private cdr: ChangeDetectorRef, private tajweedService: TajweedService,
  ) {
    super(mushafTypeFromRouteSegment(route.snapshot.paramMap.get('type')),
      0.75, sidebarContentsService, scrollDispatcher, ngZone, elRef, breakpointObserver, matDialog, router, route);
  }

  ngAfterViewInit(): void {
    this.initViewArea();
    this.ngZone.runOutsideAngular(() => {
      this.fontWeight.valueChanges.pipe(
        auditTime(0, animationFrameScheduler),
        takeUntilDestroyed(this.destroyRef)
      ).subscribe(weight => {
        const book = this.book.nativeElement;
        book.style.fontWeight = String(weight);
        fitMushafLines(book);
      });
    });
    this.route.paramMap.pipe(
      map(params => mushafTypeFromRouteSegment(params.get('type'))),
      distinctUntilChanged(),
      switchMap(type => {
        this.fontLoadError = '';
        return from(this.loadFont(type)).pipe(catchError(error => {
          this.ngZone.run(() => {
            this.fontLoadError = 'Could not load the font.';
          });
          console.error(error);
          return EMPTY;
        }));
      }),
      takeUntilDestroyed(this.destroyRef)
    ).subscribe(type => this.ngZone.run(() => this.showMushaf(type)));
  }

  private async loadFont(type: MushafLayoutType): Promise<MushafLayoutType> {
    const family = OPENTYPE_FONT_FAMILIES[type];
    const faces = await document.fonts.load('400 12px "' + family + '"', 'بسم');
    if (!faces.length) {
      throw new Error('Missing web font ' + family);
    }
    return type;
  }

  private showMushaf(type: MushafLayoutType): void {
    if (this.started) {
      this.views.forEach(view => view.destroy());
      this.views = [];
      this.buffer = new PDFPageViewBuffer<PageView>(DEFAULT_CACHE_SIZE);
      this.highestPriorityPage = null;
    }

    this.applyMushafLayoutType(type);
    this.totalPages = this.quranTextService.nbPages;
    this.maxPages = this.totalPages;
    this.pages = new Array(this.maxPages);
    this.outline = this.quranTextService.outline;
    this.currentPageNumber = Math.max(1, Math.min(this.currentPageNumber, this.totalPages));
    this.setViewport(this.getScale(this.zoomCtrl.value), false);
    this.cdr.detectChanges();

    this.ngZone.runOutsideAngular(() => {
      if (this.started) {
        this.views = this.pageElements.map((element, index) => this.createPageView(element.nativeElement, index));
        this.setPage(this.currentPageNumber);
        this.update();
      } else {
        this.started = true;
        this.startCommonPostLoadFlow();
        this.renderFrame = requestAnimationFrame(() => {
          if (!this.loaded) this.update();
        });
      }
    });
  }

  protected createPageView(pageElement: HTMLElement, index: number): PageView {
    return new PageView(pageElement, index, this.viewport, this.quranTextService);
  }

  protected updateViewsGeometry(): void {
    this.views.forEach(view => view.update(this.viewport));
  }

  protected finalizeZoomViews(): void {
    this.updateViewsGeometry();
  }

  protected drawView(view: PageView): Promise<void> {
    return view.draw();
  }

  protected computeOutlineY(outline): number {
    return 0.2 * this.viewport.fontSize + this.viewport.width * INTERLINE / PAGE_WIDTH * outline.lineIndex;
  }

  override ngOnDestroy(): void {
    cancelAnimationFrame(this.renderFrame);
    super.ngOnDestroy();
    this.views.forEach(view => view.destroy());
  }

  saveTajweed(): void {
    const editions = {
      NewMadinah: NewMadinahQuranTextService,
      OldMadinah: OldMadinahQuranTextService,
      IndoPak15Lines: QuranTextIndopak15Service,
    };
    const quranText = {};
    const tajweedResult = {};
    for (const [name, service] of Object.entries(editions)) {
      quranText[name] = service.quranText;
      tajweedResult[name] = Object.fromEntries(service.quranText.map((_, index) => [
        index + 1, this.tajweedService.applyTajweedByPage(service, index)
      ]));
    }

    const json = JSON.stringify({ quranText, tajweedResult },
      (_, value) => value instanceof Map ? Object.fromEntries(value) : value, 2);
    saveAs(new Blob([json], { type: 'application/json;charset=utf-8' }), 'tajweed_data.json');
  }
}
