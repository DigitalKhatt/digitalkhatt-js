import { Injectable, OnDestroy } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import {
  MushafLayoutType, NewMadinahQuranTextService,
  OldMadinahQuranTextService, QuranTextIndopak15Service, QuranTextService
} from '../../services/qurantext.service';
import { loadWasmModuleWithAllFonts } from './wasm-mushaf-bootstrap';

// Matches OtLayout::InterLineSpacing (design units) used by the C++ page
// layout, and just.service.ts's INTERLINE constant used by the DOM-based
// hbmedina renderer for the same decorative sura-name frame.
const INTERLINE_DESIGN_UNITS = 1800;
// Matches OtLayout::TopSpace. line.ystartposition is effectively each
// line's baseline-ish anchor (glyphs render with no vertical offset from
// it), sitting TopSpace design units below that line's own box top -- true
// for every line uniformly, since currentyPos in FeatureJustifier.cpp starts
// at TopSpace and advances by a constant InterLineSpacing per line with no
// per-type adjustment. Confirmed empirically against hbmedina's DOM
// rendering: page 1's `.linesuran` (line 0) sits at offset 0 from the page
// top, i.e. ystartposition[0] - TopSpace == 0, not ystartposition[0] itself.
const TOP_SPACE_DESIGN_UNITS = 1130;

// Matches QuranPdfWriterPdfHummus::drawSajdaRule (visualmetafont/src/Pdf/
// quranpdfwriterpdfhummus.cpp), the Qt-free PDF writer this WASM path was
// ported from: same GlyphLayoutInfo.beginsajda/endsajda fields, same
// currentxPos/currentyPos bookkeeping, and the same page-level
// `cm(scale, 0, 0, -scale, 0, pageHeight)` CTM as printPage()'s own
// designScale transform below -- so the bar sits at endY - (1100<<scaleBy)
// with no extra sign correction, unlike hbmedina's SVG path which uses an
// unrelated font-outline unit space (1200/60) rather than this design-unit one.
const SAJDA_BAR_Y_OFFSET_DESIGN_UNITS = 1100;
const SAJDA_BAR_THICKNESS_DESIGN_UNITS = 50;

interface ShapedGlyph {
  codepoint: number;
  lefttatweel: number;
  righttatweel: number;
  x_advance: number;
  x_offset: number;
  y_offset: number;
  cluster: number;
  color: number;
}

interface ShapedLine {
  type: number;
  ystartposition: number;
  xstartposition: number;
  xscale: number;
  fontSize: number;
  glyphs: ShapedGlyph[];
}

// Shared by every mushaf-viewer route and the About/glyph-demo screens: one
// module instance holding all three fonts (see wasm-mushaf-bootstrap.ts),
// plus one dedicated Worker that runs shapeMushafPage() -- including the
// "Optimize marks" physics solver, the dominant cost when that option is on
// -- off the main thread. The worker only shapes; this service still does
// all drawing (displayGlyph et al.) against its own instance of the same
// fonts, since displayGlyph() is a pure function of its glyph-id/tatweel
// arguments plus the loaded font and doesn't need to share state with
// whichever instance did the shaping.
@Injectable({ providedIn: 'root' })
export class WasmMushafService implements OnDestroy {
  readonly promise: Promise<WasmMushafService>;

  private module: any;
  private otLayouts: Record<MushafLayoutType, any> = {} as any;
  private readonly quranTextServices: Record<MushafLayoutType, QuranTextService> = {
    [MushafLayoutType.NewMadinah]: NewMadinahQuranTextService,
    [MushafLayoutType.OldMadinah]: OldMadinahQuranTextService,
    [MushafLayoutType.IndoPak15Lines]: QuranTextIndopak15Service,
  } as any;
  private readonly statusSubject = new BehaviorSubject({ error: null, message: '' });
  readonly statusObserver = this.statusSubject.asObservable();
  // Decorative sura-name frame, drawn around LineType.Sura lines the same
  // way hbmedina's CSS overlays assets/ayaframe.svg on its `.linesuran` div.
  // Preloaded during initialize() so it is always ready by the first printPage().
  private ayaFrameImage: HTMLImageElement;

  private worker: Worker;
  private requestSeq = 0;
  private readonly pendingRequests = new Map<number, {
    resolve: (lines: ShapedLine[] | null) => void;
    reject: (error: any) => void;
  }>();
  // The worker can only shape one page at a time. Rather than letting every
  // page that becomes highest-priority fire its own requestShaping() call
  // (which would just pile up behind each other in the worker's own message
  // queue, wasting time on pages scrolled past before their turn), at most
  // one request is ever actually sent (`activeRequestId`) plus at most one
  // waiting to be sent next (`queuedNext`) -- a newer caller always displaces
  // whatever was queued but not yet sent, so the worker converges on
  // whatever is current instead of working through a backlog. This
  // deliberately does NOT serialize the rest of printPage() (drawing, or
  // waiting on a pause/resume decision) -- only the actual worker request,
  // so a page waiting on pausePromise never blocks another page from shaping.
  private activeRequestId: number | null = null;
  private queuedNext: { requestId: number; message: any } | null = null;

  constructor() {
    this.promise = this.initialize();
  }

  private async initialize(): Promise<WasmMushafService> {
    try {
      const workerReady = this.startWorker();

      const { module, otLayouts } = await loadWasmModuleWithAllFonts(
        message => this.setStatus(null, message));
      this.module = module;
      this.otLayouts = otLayouts;

      this.setStatus(null, 'Loading page decorations');
      await this.loadAyaFrameImage();

      await workerReady;

      this.setStatus(null, 'Ready');
      return this;
    } catch (error) {
      if (this.module && error && typeof (error as any).excPtr === 'number') {
        const details = this.module.getExceptionMessage(error);
        error = new Error(Array.isArray(details) ? details.join(': ') : String(details));
      }
      this.setStatus(error, 'Error loading WebAssembly mushaf');
      throw error;
    }
  }

  private startWorker(): Promise<void> {
    this.worker = new Worker(
      new URL('./wasm-mushaf-shaping.worker', import.meta.url), { type: 'module' });

    return new Promise((resolve, reject) => {
      const onReadyOrError = (event: MessageEvent) => {
        if (event.data?.type === 'ready') {
          this.worker.removeEventListener('message', onReadyOrError);
          this.worker.addEventListener('message', event => this.handleWorkerMessage(event));
          resolve();
        } else if (event.data?.type === 'error') {
          this.worker.removeEventListener('message', onReadyOrError);
          reject(new Error(event.data.message));
        }
      };
      this.worker.addEventListener('message', onReadyOrError);
    });
  }

  private handleWorkerMessage(event: MessageEvent): void {
    const data = event.data;
    const pending = this.pendingRequests.get(data.requestId);
    if (pending) {
      this.pendingRequests.delete(data.requestId);
      if (data.type === 'shapePageResult') {
        pending.resolve(data.lines);
      } else {
        pending.reject(new Error(data.message));
      }
    }

    if (data.requestId !== this.activeRequestId) return;
    this.activeRequestId = null;
    if (this.queuedNext) {
      const next = this.queuedNext;
      this.queuedNext = null;
      this.activeRequestId = next.requestId;
      this.worker.postMessage(next.message);
    }
  }

  // A running shapeMushafPage() call in the worker can't be interrupted mid-
  // flight any more than it could when it ran in-process (same reality noted
  // by page_view.ts's PageView.draw() comment) -- so cancellation here just
  // means "the caller stops waiting," not "the worker stops computing."
  // printPage() re-checks its own token after this resolves and discards a
  // stale result rather than drawing it. Only one request is ever actually
  // in flight to the worker at a time (see activeRequestId/queuedNext
  // above); a caller whose request gets displaced before ever being sent
  // resolves with `null` here rather than hanging or eventually shaping a
  // page nobody wants anymore.
  private requestShaping(mushafType: MushafLayoutType, pageIndex: number, fontScale: number,
    tajweedColor: boolean, applyForce: boolean, textLines: string[], widthRatios: number[],
    lineTypes: number[]): Promise<ShapedLine[] | null> {
    const requestId = ++this.requestSeq;
    const message = {
      type: 'shapePage', requestId, mushafType, pageIndex, fontScale, tajweedColor, applyForce,
      textLines, widthRatios, lineTypes,
    };

    const result = new Promise<ShapedLine[] | null>((resolve, reject) => {
      this.pendingRequests.set(requestId, { resolve, reject });
    });

    if (this.activeRequestId === null) {
      this.activeRequestId = requestId;
      this.worker.postMessage(message);
    } else {
      if (this.queuedNext) {
        const superseded = this.pendingRequests.get(this.queuedNext.requestId);
        this.pendingRequests.delete(this.queuedNext.requestId);
        superseded?.resolve(null);
      }
      this.queuedNext = { requestId, message };
    }

    return result;
  }

  private errorMessage(error: any): string {
    if (this.module && error && typeof error.excPtr === 'number') {
      const details = this.module.getExceptionMessage(error);
      return Array.isArray(details) ? details.join(': ') : String(details);
    }
    return error?.message || String(error);
  }

  private loadAyaFrameImage(): Promise<void> {
    return new Promise((resolve, reject) => {
      const img = new Image();
      img.onload = () => resolve();
      img.onerror = () => reject(new Error('Unable to load assets/ayaframe.svg'));
      img.src = 'assets/ayaframe.svg';
      this.ayaFrameImage = img;
    });
  }

  private setStatus(error: any, message: string): void {
    this.statusSubject.next({ error, message });
  }

  // Draws the decorative sura-name frame around a LineType.Sura line,
  // mirroring hbmedina's `.linesuran` CSS (background: ayaframe.svg;
  // background-size: contain; background-position: top). `outerTransform`
  // is the page-level design-space -> canvas-pixel matrix, captured before
  // any per-line transform, so the box is placed in canvas pixels rather
  // than the flipped/rotated coordinate space glyph paths are drawn in
  // (drawImage does not self-correct for that flip the way path fills do).
  private drawSurahFrame(ctx: CanvasRenderingContext2D, outerTransform: DOMMatrix,
    pageWidth: number, margin: number, ystartposition: number, scaleBy: number): void {
    const img = this.ayaFrameImage;
    if (!img?.naturalWidth) return;

    const interLine = INTERLINE_DESIGN_UNITS << scaleBy;
    // Top of this line's box, not ystartposition itself -- see
    // TOP_SPACE_DESIGN_UNITS above.
    const boxTop = ystartposition - (TOP_SPACE_DESIGN_UNITS << scaleBy);

    const corner1 = new DOMPoint(margin, boxTop).matrixTransform(outerTransform);
    const corner2 = new DOMPoint(margin + pageWidth, boxTop + interLine).matrixTransform(outerTransform);

    const x = Math.min(corner1.x, corner2.x);
    const y = Math.min(corner1.y, corner2.y);
    const boxWidth = Math.abs(corner2.x - corner1.x);
    const boxHeight = Math.abs(corner2.y - corner1.y);

    const aspectRatio = img.naturalWidth / img.naturalHeight;
    let drawWidth = boxWidth;
    let drawHeight = drawWidth / aspectRatio;
    if (drawHeight > boxHeight) {
      drawHeight = boxHeight;
      drawWidth = drawHeight * aspectRatio;
    }

    ctx.save();
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.drawImage(img, x + (boxWidth - drawWidth) / 2, y, drawWidth, drawHeight);
    ctx.restore();
  }

  // GlyphLayoutInfo.beginsajda/endsajda (set by quranshaper.h's QuranShaper::
  // shapePage) are never populated on the OtLayoutMushaf::shapeMushafPage path
  // this canvas renderer uses. Instead locate the sajda word span the same
  // way hbmedina/page_view.ts does: QuranTextService already ran the sajda
  // regex per-line and stored word indices, so split the line text on spaces
  // (matching qurantext.service.ts's own word-index counting) to get the
  // start/end character (cluster) index of the marked phrase.
  private getSajdaClusterRange(lineText: string, sajda: { startWordIndex: number; endWordIndex: number })
    : { start: number; end: number } {
    const wordBounds: { start: number; end: number }[] = [];
    let wordStart = 0;
    for (let i = 0; i <= lineText.length; i++) {
      if (i === lineText.length || lineText[i] === ' ') {
        wordBounds.push({ start: wordStart, end: i - 1 });
        wordStart = i + 1;
      }
    }
    return {
      start: wordBounds[sajda.startWordIndex].start,
      end: wordBounds[sajda.endWordIndex].end,
    };
  }

  // Draws the horizontal sajda-verse rule, mirroring hbmedina's per-line SVG
  // <line> overlay and QuranPdfWriterPdfHummus::drawSajdaRule. `startX`/`endX`
  // are the same currentX pen-position values tracked while placing glyphs
  // in printPage() below, so they're already in outerTransform's design space
  // -- same treatment as drawSurahFrame above.
  private drawSajdaBar(ctx: CanvasRenderingContext2D, outerTransform: DOMMatrix,
    startX: number, endX: number, ystartposition: number, scaleBy: number): void {
    const y = ystartposition - (SAJDA_BAR_Y_OFFSET_DESIGN_UNITS << scaleBy);

    const p1 = new DOMPoint(startX, y).matrixTransform(outerTransform);
    const p2 = new DOMPoint(endX, y).matrixTransform(outerTransform);
    // Thickness only needs to travel through outerTransform's scale, not its
    // translation, so measure it as a vector rather than transforming a point.
    const thicknessVector = new DOMPoint(0, SAJDA_BAR_THICKNESS_DESIGN_UNITS << scaleBy)
      .matrixTransform(new DOMMatrix([outerTransform.a, outerTransform.b, outerTransform.c, outerTransform.d, 0, 0]));

    ctx.save();
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.strokeStyle = 'black';
    ctx.lineWidth = Math.hypot(thicknessVector.x, thicknessVector.y);
    ctx.beginPath();
    ctx.moveTo(p1.x, p1.y);
    ctx.lineTo(p2.x, p2.y);
    ctx.stroke();
    ctx.restore();
  }

  executeMetapost(mushafType: MushafLayoutType, code: string): number {
    return this.otLayouts[mushafType].executeMetapost(code);
  }

  drawPathByName(mushafType: MushafLayoutType, name: string, ctx: CanvasRenderingContext2D): void {
    this.otLayouts[mushafType].drawPathByName(name, ctx);
  }

  shapeText(mushafType: MushafLayoutType, text: string, lineWidth: number, fontScalePerc: number,
    applyJustification: boolean, tajweedColor: boolean, ctx: CanvasRenderingContext2D): number {
    return this.otLayouts[mushafType].shapeText(
      text, lineWidth, fontScalePerc, applyJustification, tajweedColor, false, ctx);
  }

  getOutputScale(ctx: any): { sx: number; sy: number; scaled: boolean } {
    const devicePixelRatio = window.devicePixelRatio || 1;
    const backingStoreRatio = ctx.webkitBackingStorePixelRatio
      || ctx.mozBackingStorePixelRatio
      || ctx.msBackingStorePixelRatio
      || ctx.oBackingStorePixelRatio
      || ctx.backingStorePixelRatio
      || 1;
    const pixelRatio = devicePixelRatio / backingStoreRatio;
    return { sx: pixelRatio, sy: pixelRatio, scaled: pixelRatio !== 1 };
  }

  async printPage(mushafType: MushafLayoutType, pageIndex: number, ctx: CanvasRenderingContext2D,
    token: any, tajweedColor: boolean, applyForce: boolean, fontScale: number): Promise<void> {
    if (token.isCancelled()) return;

    const quranTextService = this.quranTextServices[mushafType];
    const pageText = quranTextService.quranText[pageIndex];
    const lineInfos = [];
    const textLines: string[] = [];
    const widthRatios: number[] = [];
    const lineTypes: number[] = [];
    for (let lineIndex = 0; lineIndex < pageText.length; ++lineIndex) {
      const lineInfo = quranTextService.getLineInfo(pageIndex, lineIndex);
      lineInfos.push(lineInfo);
      textLines.push(pageText[lineIndex]);
      widthRatios.push(lineInfo.lineWidthRatio);
      lineTypes.push(lineInfo.lineType);
    }

    const lines = await this.requestShaping(
      mushafType, pageIndex, fontScale, tajweedColor, applyForce, textLines, widthRatios, lineTypes);

    if (lines === null) {
      // Displaced before the worker ever got to it (a newer page's request
      // took this slot) -- nothing was shaped, so there's nothing to wait
      // on a pause/resume decision for. Mark cancelled so draw() reports
      // this the same way any other skipped render does.
      token.cancel();
      return;
    }

    if (!(await token.waitIfPaused())) return;

    const otLayout = this.otLayouts[mushafType];
    const scaleBy = otLayout.scaleBy();
    // Same fixed page-space transform used by QuranPdfWriterPdfHummus;
    // line.fontSize already contains the requested font scale.
    const designScale = 72 / (4800 << scaleBy);
    const pageWidth = otLayout.mushafPageWidth();
    const margin = 400 << scaleBy;

    ctx.save();
    ctx.transform(designScale, 0, 0, -designScale, 0, 410);
    const outerTransform = ctx.getTransform();

    for (let lineIndex = 0; lineIndex < lines.length; ++lineIndex) {
      if (token.isCancelled()) break;
      const line = lines[lineIndex];

      if (line.type === 1 /* LineType::Sura */) {
        this.drawSurahFrame(ctx, outerTransform, pageWidth, margin, line.ystartposition, scaleBy);
      }

      const glyphs = line.glyphs;
      const lineOriginX = pageWidth + margin - line.xstartposition;
      const lineOriginY = line.ystartposition;
      let currentX = 0;

      // Mirrors QuranPdfWriterPdfHummus's beginsajda/endsajda tracking: the
      // rule spans from the pen position entering the first sajda glyph
      // (before this glyph's own advance/offset) to the position exiting
      // the last sajda glyph (after its advance). The begin/end cluster
      // indexes come from QuranTextService (see getSajdaClusterRange
      // above), not GlyphLayoutInfo.beginsajda/endsajda.
      const sajda = lineInfos[lineIndex].sajda;
      const sajdaRange = sajda ? this.getSajdaClusterRange(pageText[lineIndex], sajda) : undefined;
      let startSajdaX: number | undefined;
      let endSajdaX: number | undefined;

      for (let glyphIndex = 0; glyphIndex < glyphs.length; ++glyphIndex) {
        const glyph = glyphs[glyphIndex];
        const glyphEntryX = currentX;
        currentX -= glyph.x_advance;
        const x = currentX + glyph.x_offset;
        const y = lineOriginY - glyph.y_offset;

        if (sajdaRange) {
          if (glyph.cluster === sajdaRange.start && startSajdaX === undefined) startSajdaX = glyphEntryX;
          if (glyph.cluster === sajdaRange.end && endSajdaX === undefined) endSajdaX = currentX;
        }

        if (glyph.color) {
          ctx.fillStyle = `rgb(${(glyph.color >> 24) & 255},${(glyph.color >> 16) & 255},${(glyph.color >> 8) & 255})`;
        }

        // Absolute per-glyph placement -- everything is computed straight
        // from the line's fixed origin (lineOriginX/lineOriginY) and this
        // glyph's own x/y, so there's no lastX/lastY delta to carry across
        // iterations, and a single setTransform replaces the previous
        // translate + save/scale/restore trio.
        const localX = lineOriginX + line.xscale * x;
        ctx.setTransform(outerTransform.translate(localX, y).scale(line.xscale * line.fontSize, -line.fontSize));
        otLayout.displayGlyph(glyph.codepoint, glyph.lefttatweel, glyph.righttatweel, ctx);

        if (glyph.color) ctx.fillStyle = 'rgb(0,0,0)';
      }
      ctx.setTransform(outerTransform);

      if (startSajdaX !== undefined && endSajdaX !== undefined) {
        // startSajdaX/endSajdaX are relative to lineOriginX (currentX starts
        // at 0 above), so bring them through the same lineOriginX + xscale*x
        // mapping used for glyph placement to get back to outerTransform's
        // absolute design space.
        this.drawSajdaBar(ctx, outerTransform,
          lineOriginX + line.xscale * startSajdaX,
          lineOriginX + line.xscale * endSajdaX,
          lineOriginY, scaleBy);
      }
    }

    ctx.restore();
    otLayout.clearAlternates();
  }

  ngOnDestroy(): void {
    for (const otLayout of Object.values(this.otLayouts)) {
      (otLayout as any)?.delete?.();
    }
    this.worker?.terminate();
    this.statusSubject.complete();
  }
}
