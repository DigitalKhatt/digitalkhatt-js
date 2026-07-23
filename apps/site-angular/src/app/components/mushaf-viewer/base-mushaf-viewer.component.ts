import { AfterViewInit, Directive, ElementRef, HostListener, Inject, NgZone, OnDestroy, OnInit, QueryList, TemplateRef, ViewChild, ViewChildren } from '@angular/core';
import { Subscription, animationFrameScheduler } from 'rxjs';
import { auditTime, startWith } from 'rxjs/operators';

import { TemplatePortal } from '@angular/cdk/portal';
import { UntypedFormControl, UntypedFormGroup, Validators } from '@angular/forms';
import { BreakpointObserver } from '@angular/cdk/layout';
import { CdkScrollable, ScrollDispatcher } from '@angular/cdk/scrolling';
import { MatDialog } from '@angular/material/dialog';
import { ActivatedRoute, NavigationEnd, Router } from '@angular/router';
import { SidebarContentsService } from '../../services/navigation/sidebarcontents';
import { AboutComponent } from '../about/about.component';
import { PageNumberBoxComponent } from '../page-number-box/page-number-box.component';
import { MushafLayoutType, NewMadinahQuranTextService, OldMadinahQuranTextService, QuranTextIndopak15Service, QuranTextService } from '../../services/qurantext.service';
import { RenderingStates } from './rendering_states';

export const MIN_SCALE = 0.25;
export const MAX_SCALE = 10.0;
export const DEFAULT_SCALE_DELTA = 1.1;
export const DEFAULT_CACHE_SIZE = 10;

export interface PageFormat {
  width: number,
  height: number,
  fontSize: number,
  // Set by the WASM viewer's updateViewsGeometry() when devicePixelRatio would push
  // the canvas backing store past maxCanvasPixels; the HarfBuzz viewer has no
  // equivalent since it draws lossless SVG paths, not a raster canvas.
  hasRestrictedScaling?: boolean
}

export interface MushafPageView {
  id: number;
  div: HTMLElement;
  renderingState: RenderingStates;
  resume(): void;
  pause(): void;
  destroy(): void;
  toggleLoadingIconSpinner?(viewVisible: boolean): void;
}

export class PDFPageViewBuffer<TView extends MushafPageView> {

  private data: TView[] = [];
  constructor(private size: number) {
  }

  push(view: TView) {
    let i = this.data.indexOf(view);
    if (i >= 0) {
      this.data.splice(i, 1);
    }
    this.data.push(view);
    if (this.data.length > this.size) {
      this.data.shift().destroy();
    }
  };
  resize(newSize: number, pagesToKeep?: { id: number }[]) {
    this.size = newSize;
    if (pagesToKeep) {
      const pageIdsToKeep = new Set();
      for (let i = 0, iMax = pagesToKeep.length; i < iMax; ++i) {
        pageIdsToKeep.add(pagesToKeep[i].id);
      }
      this.moveToEndOfArray(this.data, function (page) {
        return pageIdsToKeep.has(page.id);
      });
    }
    while (this.data.length > this.size) {
      this.data.shift().destroy();
    }
  };

  reset() {
    while (this.data.length > 0) {
      this.data.shift().destroy();
    }
  }

  private moveToEndOfArray(arr: TView[], condition: (view: TView) => boolean) {
    const moved: TView[] = [], len = arr.length;
    let write = 0;
    for (let read = 0; read < len; ++read) {
      if (condition(arr[read])) {
        moved.push(arr[read]);
      } else {
        arr[write] = arr[read];
        ++write;
      }
    }
    for (let read = 0; write < len; ++read, ++write) {
      arr[write] = moved[read];
    }
  }

  toggleLoadingIconSpinner(visibleIds: Set<number>) {
    for (const pageView of this.data) {
      if (visibleIds.has(pageView.id)) {
        continue;
      }
      pageView.toggleLoadingIconSpinner?.(/* viewVisible = */ false);
    }
  }
}

// Base class for HBMedinaComponent (HarfBuzz.js/SVG) and WasmMasahifComponent
// (WebAssembly/canvas): both page the same Quran layouts through a virtualized
// scroll viewport, but shape and paint each page very differently, so those
// parts are left to the subclasses via the abstract members below.
@Directive()
export abstract class BaseMushafViewerComponent<TView extends MushafPageView> implements OnInit, AfterViewInit, OnDestroy {

  MushafLayoutTypeEnum = MushafLayoutType;

  protected sideBySideWidth = 992;
  mushafType: MushafLayoutType = MushafLayoutType.NewMadinah;

  fontsize;
  highestPriorityPage: TView;

  hasFloatingToc: boolean = false;
  isOpened: boolean = false;
  protected quranTextService: QuranTextService;

  scale;
  viewport: PageFormat;

  canvasWidth: number;
  canvasHeight: number;
  pages = [];
  scrollingSubscription: Subscription;
  itemSize;
  buffer: PDFPageViewBuffer<TView> = new PDFPageViewBuffer<TView>(DEFAULT_CACHE_SIZE);
  views: TView[] = [];
  outline: any = [];

  protected static readonly DEFAULT_SCALE = 15 / 1000;
  protected static readonly DEFAULT_PAGE_SIZE = { width: 255, height: 410, marginWidth: BaseMushafViewerComponent.DEFAULT_SCALE * 400 };

  pageSize = BaseMushafViewerComponent.DEFAULT_PAGE_SIZE;
  defaultFontSize: number;

  totalPages: number;
  maxPages: number;
  currentPageNumber;
  scrollState;
  protected _isScrollModeHorizontal = false;
  disableScroll: boolean = false;
  debug = false;

  @ViewChildren('page') pageElements: QueryList<ElementRef>;
  @ViewChild('testcanvas', { static: false }) testcanvasRef: ElementRef;
  @ViewChild(PageNumberBoxComponent, { static: false }) pageNumberBox: PageNumberBoxComponent;

  @ViewChild('viewerContainer', { static: false, read: CdkScrollable }) firstMyCustomDirective: CdkScrollable;

  @ViewChild('myPortal', { static: true }) myPortal: TemplatePortal<any>;
  @ViewChild('myReference', { static: true }) myReference: TemplateRef<any>;

  form: UntypedFormGroup;

  viewAreaElement: HTMLElement;

  isSideBySide: boolean;

  get mode() { return this.isSideBySide ? 'side' : 'over'; }

  zooms;
  zoomCtrl: UntypedFormControl;
  tajweedColorCtrl: UntypedFormControl;
  fontScaleCtrl: UntypedFormControl;
  fontScale: number;
  visibleViews;
  loaded: boolean = false;

  wasmStatus;

  hideElement: boolean = false;

  protected abstract readonly mushafRoutePrefix: string;

  constructor(
    mushafLayoutType: MushafLayoutType,
    defaultFontScale: number,
    protected sidebarContentsService: SidebarContentsService,
    public scrollDispatcher: ScrollDispatcher,
    protected ngZone: NgZone,
    protected elRef: ElementRef,
    protected breakpointObserver: BreakpointObserver,
    protected matDialog: MatDialog,
    protected router: Router,
    protected route: ActivatedRoute,
  ) {

    this.debug = this.route.snapshot.queryParams.debug !== undefined;

    switch (mushafLayoutType) {
      case MushafLayoutType.OldMadinah:
        this.mushafType = MushafLayoutType.OldMadinah;
        this.quranTextService = OldMadinahQuranTextService;
        this.defaultFontSize = this.pageSize.width / (16400 / 1000);
        break;
      case MushafLayoutType.IndoPak15Lines:
        this.mushafType = MushafLayoutType.IndoPak15Lines;
        this.quranTextService = QuranTextIndopak15Service;
        this.defaultFontSize = this.pageSize.width / (16400 / 1000);
        break;
      default:
        this.mushafType = MushafLayoutType.NewMadinah;
        this.quranTextService = NewMadinahQuranTextService;
        this.defaultFontSize = this.pageSize.width / (16200 / 1000);
        break;
    }

    this.router.events.subscribe((event) => {
      if (event instanceof NavigationEnd) {
        this.hideElement = event.url.includes('about');
      }
    });

    this.isSideBySide = breakpointObserver.isMatched('(min-width: ' + this.sideBySideWidth + 'px)');

    const lastPageNumber = parseInt(localStorage.getItem("lastPageNumber")) || 1;

    const currentPageNumber = new UntypedFormControl(lastPageNumber, [
      Validators.required
    ]);

    this.form = new UntypedFormGroup({
      currentPageNumber: currentPageNumber,
    });

    this.zoomCtrl = new UntypedFormControl('page-fit');
    this.tajweedColorCtrl = new UntypedFormControl(true);
    this.fontScale = defaultFontScale;
    this.fontScaleCtrl = new UntypedFormControl(this.fontScale);

    this.currentPageNumber = this.form.controls['currentPageNumber'].value;

    this.zooms = [
      { value: '0.5' },
      { value: '0.75' },
      { value: '1' },
      { value: '1.25' },
      { value: '1.5' },
      { value: '2' },
      { value: '3' },
      { value: '4' }
    ];

    this.totalPages = this.quranTextService.nbPages;
    this.maxPages = this.totalPages;

    this.pages = new Array(this.maxPages);

    this.itemSize = this.pageSize.height;

    this.fontsize = this.defaultFontSize;
  }

  ngOnInit() {

  }

  abstract ngAfterViewInit(): void;

  protected abstract createPageView(pageElement: HTMLElement, index: number): TView;
  protected abstract updateViewsGeometry(duringZoom: boolean): void;
  protected abstract finalizeZoomViews(): void;
  protected abstract drawView(view: TView, canvasWidth: number, canvasHeight: number): Promise<any>;
  protected abstract computeOutlineY(outline: any): number;
  protected onFontScaleChanged(): void { }
  protected onVisiblePagesUpdated(visiblePages: any): void { }

  protected initViewArea() {
    this.viewAreaElement = this.firstMyCustomDirective.getElementRef().nativeElement;
    this.pageNumberBox.scrollable = this.firstMyCustomDirective;
  }

  protected startCommonPostLoadFlow() {

    this.pageElements.forEach((page, index) => {
      this.views[index] = this.createPageView(page.nativeElement, index);
    });

    this.scrollState = {
      right: true,
      down: true,
      lastX: this.viewAreaElement.scrollLeft,
      lastY: this.viewAreaElement.scrollTop
    };

    this.setPage(this.currentPageNumber);

    this.scrollingSubscription = this.firstMyCustomDirective.elementScrolled()
      .pipe(
        // Start off with a fake scroll event so we properly detect our initial position.
        startWith(null!),
        // Collect multiple events into one until the next animation frame. This way if
        // there are multiple scroll events in the same frame we only need to recheck
        // our layout once.
        auditTime(0, animationFrameScheduler),
      ).subscribe(() => {
        if (!this.disableScroll) {
          this.scrollUpdated()
        } else {
          this.disableScroll = false;
        }
      });

    this.zoomCtrl.valueChanges.subscribe(value => {
      if (value !== 'custom') {
        this.setZoom(value);
      }
    });

    this.outline = this.quranTextService.outline;

    this.tajweedColorCtrl.valueChanges.subscribe(() => {
      this.ngZone.runOutsideAngular(() => {
        this.resetBufferForTajweedColorChange();
        this.update();
      });
    });

    const layoutChanges = this.breakpointObserver.observe([
      '(orientation: portrait)',
      '(orientation: landscape)',
      '(hover: none)',
    ]);

    layoutChanges.subscribe(result => {
      if (result.breakpoints['(hover: none)']) {
        if (result.breakpoints['(orientation: portrait)']) {
          this.zoomCtrl.setValue('page-width');
        } else {
          this.zoomCtrl.setValue('page-width');
        }
      } else {
        this.zoomCtrl.setValue('page-fit');
      }
    });
  }

  fontSizeChanged() {
    this.fontScale = this.fontScaleCtrl.value;
    this.onFontScaleChanged();
    this.ngZone.runOutsideAngular(() => {
      this.setViewport(this.scale, false, false);
      this.resetBufferForFontScaleChange();
      this.updateViewsGeometry(false);
      this.update();
    });
  }

  // Hooks for a setting change that forces every buffered page to reshape.
  // Default: evict/destroy each buffered page's canvas immediately, exactly
  // as before. A subclass whose renderer can produce a smoother transition
  // (e.g. keeping the previous render visible until the replacement is
  // ready, rather than a blank gap) may override these instead.
  protected resetBufferForTajweedColorChange(): void {
    this.buffer.reset();
  }

  protected resetBufferForFontScaleChange(): void {
    this.buffer.reset();
  }
  formatLabel(value: number) {

    return Math.round(value * 100) + '%';
  }


  updatePageNumber(event) {
    let value = this.form.controls['currentPageNumber'].value;

    if (value < 1 || value > this.totalPages) {
      this.form.controls['currentPageNumber'].setValue(this.currentPageNumber);
    }
    else if (value !== this.currentPageNumber) {

      this.setPage(value)
    }
  }
  ngOnDestroy() {
    this.scrollingSubscription?.unsubscribe();
  }

  navigateTo(page) {
    if (page === 'first') {
      this.setPage(1);
    } else if (page === 'prev') {
      this.setPage(this.currentPageNumber - 1);
    } else if (page === 'next') {
      this.setPage(this.currentPageNumber + 1);
    } else if (page === 'last') {
      this.setPage(this.totalPages);
    }
  }

  setPage(pageNumber) {

    let offset = (pageNumber - 1) * this.itemSize;
    this.currentPageNumber = pageNumber;
    this.form.controls['currentPageNumber'].setValue(this.currentPageNumber);
    localStorage.setItem("lastPageNumber", this.currentPageNumber);
    this.firstMyCustomDirective.scrollTo({ top: offset });

  }
  protected setViewport(scale, updateView: boolean, duringZoom: boolean = false) {
    const borderWidth = 2;
    this.scale = scale;
    this.fontsize = this.defaultFontSize * scale * this.fontScale
    this.viewport = {
      width: Math.floor(this.pageSize.width * this.scale),
      height: Math.floor(this.pageSize.height * this.scale + borderWidth),
      fontSize: this.fontsize
    }

    this.itemSize = this.viewport.height

    if (updateView) {
      this.updateViewsGeometry(duringZoom);
    }

  }

  @HostListener('window:resize', ['$event'])
  onResize(event) {

    let width = event.target.innerWidth;

    this.isSideBySide = width >= this.sideBySideWidth;

    this.pageNumberBox?.move();

    this.ngZone.runOutsideAngular(() => {
      this.updateViewsGeometry(false);
      this.update();
    });

  }

  update() {

    const visible = this._getVisiblePages();
    const visiblePages = visible.views, numVisiblePages = visiblePages.length;

    if (numVisiblePages === 0) {
      return;
    }

    const newCacheSize = Math.max(DEFAULT_CACHE_SIZE, 2 * numVisiblePages + 1);
    this.buffer.resize(newCacheSize, visiblePages);

    this.forceRendering(visible)

    if (visible.views && visible.views.length) {
      this.ngZone.run(() => {
        this.currentPageNumber = visible.views[0].id;
        this.form.controls['currentPageNumber'].setValue(this.currentPageNumber);
        this.visibleViews = visible;
        this.loaded = true;
      });
    }


  }

  setOutline(outline) {

    const y = this.computeOutlineY(outline);

    let offset = outline.pageIndex * this.itemSize + y;
    this.currentPageNumber = outline.pageIndex + 1;
    this.form.controls['currentPageNumber'].setValue(this.currentPageNumber);

    this.firstMyCustomDirective.scrollTo({ top: offset });
  }

  zoom(event) {

    let newScale;

    newScale = this.scale;

    newScale = (newScale * event.scale).toFixed(3);
    newScale = Math.ceil(+newScale * 1000) / 1000;
    newScale = Math.max(MIN_SCALE, Math.min(MAX_SCALE, newScale));

    let pageIndex = (this.visibleViews.first.id - 1) || 0;

    var element = this.views[pageIndex].div;

    var displY = event.clientY - 48;
    var displX = event.clientX;

    const top = this.firstMyCustomDirective.measureScrollOffset('top');
    const start = this.firstMyCustomDirective.measureScrollOffset('start');

    this.ngZone.runOutsideAngular(() => {

      var nbpagesY = (top + displY) / this.itemSize;
      var nbpagesX = (start + displX) / this.viewport.width;

      this.disableScroll = true;
      this.setViewport(newScale, true, true);

      var ytop = nbpagesY * this.itemSize - displY;
      var xstart = nbpagesX * this.viewport.width - displX;

      this.firstMyCustomDirective.scrollTo({ top: ytop, start: xstart });


    });


  }

  endzoom(event) {

    this.ngZone.runOutsideAngular(() => {

      this.finalizeZoomViews();

      this.update();
    });
  }

  zoomIn() {

    let newScale = this.scale;

    newScale = (newScale * DEFAULT_SCALE_DELTA).toFixed(2);
    newScale = Math.ceil(+newScale * 10) / 10;
    newScale = Math.min(MAX_SCALE, newScale);

    this.zoomCtrl.setValue('custom');

    this.setScale(newScale);

  }
  @HostListener('document:keydown.control.+', ['$event'])
  @HostListener('document:keydown.control.=', ['$event'])
  zout(event: KeyboardEvent) {
    this.zoomIn();
    event.preventDefault();

  }

  setScale(newScale) {

    if (!this.visibleViews) {
      this.setViewport(newScale, true);
      return;
    }

    let oldScale = this.scale;

    let pageIndex = (this.visibleViews.first.id - 1) || 0;

    var element = this.views[pageIndex].div;

    const top = this.firstMyCustomDirective.measureScrollOffset('top');

    let offset = ((Math.max(0, top - element.offsetTop) / oldScale) * newScale);

    this.ngZone.runOutsideAngular(() => {

      this.setViewport(newScale, true);

      this.firstMyCustomDirective.scrollTo({ top: pageIndex * this.itemSize + offset });

      this.update();
    });
  }

  @HostListener('document:keydown.control.-', ['$event'])
  zin(event: KeyboardEvent) {
    this.zoomOut();
    event.preventDefault();
  }
  zoomOut() {

    let newScale = this.scale;

    newScale = (newScale / DEFAULT_SCALE_DELTA).toFixed(2);
    newScale = Math.floor(+newScale * 10) / 10;
    newScale = Math.max(MIN_SCALE, newScale);

    this.zoomCtrl.setValue('custom');

    this.setScale(newScale);
  }

  isViewFinished(view: TView) {
    return view.renderingState === RenderingStates.FINISHED;
  }

  getHighestPriority(visible, views: TView[], scrolledDown, totalPages) {

    let visibleViews = visible.views;

    let numVisible = visibleViews.length;
    if (numVisible === 0) {
      return null;
    }
    for (let i = 0; i < numVisible; ++i) {
      let view = visibleViews[i].view;
      if (!this.isViewFinished(view)) {
        return view;
      }
    }

    // All the visible views have rendered; try to render next/previous pages.
    if (scrolledDown) {
      let nextPageIndex = visible.last.id;
      // IDs start at 1, so no need to add 1.
      if (views[nextPageIndex] && !this.isViewFinished(views[nextPageIndex]) && nextPageIndex < totalPages) {
        return views[nextPageIndex];
      }
    } else {
      let previousPageIndex = visible.first.id - 2;
      if (views[previousPageIndex] &&
        !this.isViewFinished(views[previousPageIndex])) {
        return views[previousPageIndex];
      }
    }
    // Everything that needs to be rendered has been.
    return null;
  }

  forceRendering(currentlyVisiblePages?) {
    let visiblePages = currentlyVisiblePages || this._getVisiblePages();

    let scrollAhead = (this._isScrollModeHorizontal ? this.scrollState.right : this.scrollState.down);
    let pageView = this.getHighestPriority(visiblePages, this.views, scrollAhead, this.totalPages);

    this.onVisiblePagesUpdated(visiblePages);

    if (pageView) {
      this.buffer.push(pageView);
      return this.renderView(pageView);
    }
    return false;
  }

  protected renderView(view: TView): boolean {
    const oldHigh = this.highestPriorityPage;
    switch (view.renderingState) {
      case RenderingStates.FINISHED:
        return false;
      case RenderingStates.PAUSED:
        this.highestPriorityPage = view;
        view.resume();
        break;
      case RenderingStates.RUNNING:
        this.highestPriorityPage = view;
        break;
      case RenderingStates.INITIAL:
        this.highestPriorityPage = view;
        this.drawView(view, this.canvasWidth, this.canvasHeight)
          .catch(error => {
            console.log(error)
          })
          .finally(() => {
            this.forceRendering(null)
          });
        break;
    }
    if (oldHigh != null && oldHigh != this.highestPriorityPage) {
      oldHigh.pause()
    }
    return true;
  }

  _getVisiblePages() {

    let scrollEl = this.firstMyCustomDirective.getElementRef().nativeElement;

    let top = this.firstMyCustomDirective.measureScrollOffset('top')
    if (top < 0) top = 0;
    const bottom = top + scrollEl.clientHeight;
    const left = this.firstMyCustomDirective.measureScrollOffset('start'), right = left + scrollEl.clientWidth;

    const firstVisibleIndex = Math.floor(top / this.itemSize);

    let lastVisibleIndex = Math.floor(bottom / this.itemSize);

    lastVisibleIndex = Math.min(this.totalPages - 1, lastVisibleIndex);

    let visible = [];
    for (let currIndex = firstVisibleIndex; currIndex <= lastVisibleIndex; currIndex++) {
      const view = this.views[currIndex], element = view.div;
      const currentWidth = element.offsetLeft + element.clientLeft;
      const currentHeight = element.offsetTop + element.clientTop;
      const viewWidth = element.clientWidth, viewHeight = element.clientHeight;
      const viewRight = currentWidth + viewWidth;
      const viewBottom = currentHeight + viewHeight;

      const hiddenHeight = Math.max(0, top - currentHeight) +
        Math.max(0, viewBottom - bottom);
      const hiddenWidth = Math.max(0, left - currentWidth) +
        Math.max(0, viewRight - right);
      const percent = ((viewHeight - hiddenHeight) * (viewWidth - hiddenWidth) *
        100 / viewHeight / viewWidth) | 0;

      visible.push({
        id: view.id,
        x: currentWidth,
        y: currentHeight,
        view,
        percent,
      });
    }

    const first = visible[0], last = visible[visible.length - 1];

    visible.sort(function (a, b) {
      let pc = a.percent - b.percent;
      if (Math.abs(pc) > 0.001) {
        return -pc;
      }
      return a.id - b.id; // ensure stability
    });


    return { first, last, views: visible, };
  }

  updateHostClasses() {

  }

  getScale(value) {

    let container = this.elRef.nativeElement;

    let scale = parseFloat(value);
    if (scale > 0) {
      return scale;
    } else {

      const SCROLLBAR_PADDING = 6;
      const VERTICAL_PADDING = 48 // task bar height;

      const noPadding = false;

      let hPadding = noPadding ? 0 : SCROLLBAR_PADDING;
      let vPadding = noPadding ? 0 : VERTICAL_PADDING;

      if (!noPadding && this._isScrollModeHorizontal) {
        [hPadding, vPadding] = [vPadding, hPadding]; // Swap the padding values.
      }
      let pageWidthScale = (container.clientWidth) / (this.pageSize.width);
      let pageHeightScale = (container.clientHeight - vPadding) / (this.pageSize.height);

      switch (value) {
        case 'page-actual':
          scale = 1;
          break;
        case 'page-width':
          scale = pageWidthScale;
          break;
        case 'page-height':
          scale = pageHeightScale;
          break;
        case 'page-fit':
          scale = Math.min(pageWidthScale, pageHeightScale);
          break;
        case 'custom':
          scale = this.scale;
          break;
        default:
          return 1;
      }
    }

    return scale;
  }

  setZoom(value) {

    let scale = this.getScale(value);

    this.setScale(scale);

  }

  toggleFullScreen() {
    let doc = window.document as any;
    var docEl = this.viewAreaElement as any;

    var requestFullScreen = docEl.requestFullscreen || docEl.mozRequestFullScreen || docEl.webkitRequestFullScreen || docEl.msRequestFullscreen;
    var cancelFullScreen = doc.exitFullscreen || doc.mozCancelFullScreen || doc.webkitExitFullscreen || doc.msExitFullscreen;

    if (requestFullScreen && !doc.fullscreenElement && !doc.mozFullScreenElement && !doc.webkitFullscreenElement && !doc.msFullscreenElement) {
      requestFullScreen.call(docEl);
    } else if (cancelFullScreen) {
      cancelFullScreen.call(doc);
    }
  }

  protected scrollUpdated() {

    let currentX = this.viewAreaElement.scrollLeft;
    let lastX = this.scrollState.lastX;
    if (currentX !== lastX) {
      this.scrollState.right = currentX > lastX;
    }
    this.scrollState.lastX = currentX;
    let currentY = this.viewAreaElement.scrollTop;
    let lastY = this.scrollState.lastY;
    if (currentY !== lastY) {
      this.scrollState.down = currentY > lastY;
    }
    this.scrollState.lastY = currentY;

    this.pageNumberBox?.syncToScroll();

    this.ngZone.runOutsideAngular(() => {
      this.update();
    });
  }

  openAbout() {
    const dialogRef = this.matDialog.open(AboutComponent, {
      height: '98%',
      width: '100vw',
      panelClass: 'full-screen-modal',
      data: {}
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
    });

  }

  navigateToMushaf(layoutIndex) {
    if (layoutIndex === 3) {
      this.router.navigate([`/${this.mushafRoutePrefix}/indopak15`]);
    }
  }
}
