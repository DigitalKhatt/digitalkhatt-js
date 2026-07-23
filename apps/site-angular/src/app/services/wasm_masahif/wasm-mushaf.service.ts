import { Inject, Injectable, OnDestroy } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import {
  MUSHAFLAYOUTTYPE, MushafLayoutType, NewMadinahQuranTextService,
  OldMadinahQuranTextService, QuranTextIndopak15Service, QuranTextService
} from '../../services/qurantext.service';

const ASSET_ROOT = 'assets/wasm_masahif';
// Bump when deploying a newly linked main/side-module set. Dynamic WASM
// modules must not be mixed with an older cached main module because their
// C++ runtime symbols and table entries form one ABI unit.
const WASM_ASSET_VERSION = '20260722-42';

const SHARED_FONT_FILES = [
  'mfplain.mp',
  'mpost.mp',
  'vmf.mp',
] as const;

const FONT_CONFIG = {
  [MushafLayoutType.NewMadinah]: { directory: 'madina', project: 'madina.mp', library: 'libmadina.wasm' },
  [MushafLayoutType.OldMadinah]: { directory: 'oldmadina', project: 'oldmadina.mp', library: 'liboldmadina.wasm' },
  [MushafLayoutType.IndoPak15Lines]: { directory: 'indopak', project: 'indopak.mp', library: 'libindopak.wasm' },
} as const;

const DIR_CONFIG = {
  ["libmadina.wasm"]: "madina",
  ["liboldmadina.wasm"]: "oldmadina",
  ["libindopak.wasm"]: "indopak",

} as const;

const FONT_FILES = ['glyphs.mp', 'features.fea', 'parameters.json'] as const;

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

@Injectable()
export class WasmMushafService implements OnDestroy {
  readonly quranShaper = this;
  readonly promise: Promise<WasmMushafService>;
  useJustification = true;
  // Must match applyForceCtrl's initial unchecked state. valueChanges does
  // not emit that initial value, and starting true blocks the first render
  // in optimizeLayout() while the UI misleadingly shows optimization off.
  applyForce = false;

  private module: any;
  private otLayout: any;
  private fontScale = 0.9;
  private readonly fontConfig;
  private readonly quranTextService: QuranTextService;
  private readonly statusSubject = new BehaviorSubject({ error: null, message: '' });
  readonly statusObserver = this.statusSubject.asObservable();
  // Decorative sura-name frame, drawn around LineType.Sura lines the same
  // way hbmedina's CSS overlays assets/ayaframe.svg on its `.linesuran` div.
  // Preloaded during initialize() so it is always ready by the first printPage().
  private ayaFrameImage: HTMLImageElement;

  constructor(@Inject(MUSHAFLAYOUTTYPE) mushafType: MushafLayoutType) {
    this.fontConfig = FONT_CONFIG[mushafType];
    this.quranTextService = mushafType === MushafLayoutType.OldMadinah
      ? OldMadinahQuranTextService
      : mushafType === MushafLayoutType.IndoPak15Lines
        ? QuranTextIndopak15Service : NewMadinahQuranTextService;
    this.promise = this.initialize();
  }

  private async initialize(): Promise<WasmMushafService> {
    try {
      this.setStatus(null, 'Fetching/Compiling WebAssembly');

      // Keep Emscripten's large generated loader as a deployable asset. It
      // contains dynamic-linking code that should execute unchanged instead
      // of being rewritten into Angular's application bundle.
      const loaderUrl = `/${ASSET_ROOT}/VisualMetaFontWasm.js?v=${WASM_ASSET_VERSION}`;
      const { default: createVisualMetaFontModule } = await import(
        /* @vite-ignore */ /* webpackIgnore: true */ loaderUrl
      );

      try {
        this.module = await createVisualMetaFontModule({
          locateFile: (path: string) => {
            if (path === this.fontConfig.library) {
              return `${ASSET_ROOT}/fonts/${this.fontConfig.directory}/${path}?v=${WASM_ASSET_VERSION}`;
            } else if (DIR_CONFIG[path]) {
              return `${ASSET_ROOT}/fonts/${DIR_CONFIG[path]}/${path}?v=${WASM_ASSET_VERSION}`;
            }
            const assetPath = path.startsWith('/') ? path : `${ASSET_ROOT}/${path}`;
            return `${assetPath}?v=${WASM_ASSET_VERSION}`;
          },
          // Keep the loader's registry key equal to OtLayout.cpp's dlopen()
          // basename while locateFile maps its HTTP request to the selected
          // route's isolated asset directory.
          dynamicLibraries: [this.fontConfig.library],
          noInitialRun: true,
        });
      } catch (error) {
        throw new Error(`WASM module loading: ${this.errorMessage(error)}`);
      }

      this.setStatus(null, 'Loading DigitalKhatt font');
      await Promise.all(SHARED_FONT_FILES.map(name => this.copyAssetToFs(name, name)));
      const fontDirectory = `fonts/${this.fontConfig.directory}`;
      this.module.FS.mkdirTree(`/${fontDirectory}`);
      await Promise.all([
        this.copyAssetToFs(`${fontDirectory}/${this.fontConfig.project}`, `${fontDirectory}/${this.fontConfig.project}`),
        ...FONT_FILES.map(name => this.copyAssetToFs(`${fontDirectory}/${name}`, `${fontDirectory}/${name}`)),
      ]);

      try {
        this.otLayout = new this.module.OtLayoutMushaf(
          `${fontDirectory}/${this.fontConfig.project}`);
      } catch (error) {
        const stage = this.module.getInitializationStage?.() || 'unknown stage';
        throw new Error(`font initialization (${stage}): ${this.errorMessage(error)}`);
      }
      this.setStatus(null, 'Loading page decorations');
      await this.loadAyaFrameImage();

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

  private errorMessage(error: any): string {
    if (this.module && error && typeof error.excPtr === 'number') {
      const details = this.module.getExceptionMessage(error);
      return Array.isArray(details) ? details.join(': ') : String(details);
    }
    return error?.message || String(error);
  }

  private async copyAssetToFs(assetPath: string, fsPath: string): Promise<void> {
    const response = await fetch(`${ASSET_ROOT}/${assetPath}`);
    if (!response.ok) {
      throw new Error(`Unable to load ${assetPath}: HTTP ${response.status}`);
    }
    this.module.FS.writeFile(`/${fsPath}`, new Uint8Array(await response.arrayBuffer()));
  }

  private setStatus(error: any, message: string): void {
    this.statusSubject.next({ error, message });
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

  // Draws the decorative sura-name frame around a LineType.Sura line,
  // mirroring hbmedina's `.linesuran` CSS (background: ayaframe.svg;
  // background-size: contain; background-position: top). `outerTransform`
  // is the page-level design-space -> canvas-pixel matrix, captured before
  // any per-line transform, so the box is placed in canvas pixels rather
  // than the flipped/rotated coordinate space glyph paths are drawn in
  // (drawImage does not self-correct for that flip the way path fills do).
  private drawSurahFrame(ctx: CanvasRenderingContext2D, outerTransform: DOMMatrix,
    pageWidth: number, margin: number, ystartposition: number): void {
    const img = this.ayaFrameImage;
    if (!img?.naturalWidth) return;

    const scaleBy = this.otLayout.scaleBy();
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
    startX: number, endX: number, ystartposition: number): void {
    const scaleBy = this.otLayout.scaleBy();
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

  executeMetapost(code: string): number {
    return this.otLayout.executeMetapost(code);
  }

  drawPathByName(name: string, ctx: CanvasRenderingContext2D): void {
    this.otLayout.drawPathByName(name, ctx);
  }

  shapeText(text: string, lineWidth: number, fontScalePerc: number, applyJustification: boolean,
      tajweedColor: boolean, ctx: CanvasRenderingContext2D): number {
    return this.otLayout.shapeText(text, lineWidth, fontScalePerc, applyJustification, tajweedColor, false, ctx);
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

  setScalePoint(percent: number): void {
    this.fontScale = percent;
  }

  async printPage(pageIndex: number, ctx: CanvasRenderingContext2D, token: any,
    tajweedColor: boolean): Promise<void> {
    if (token.isCancelled()) return;

    const textLines = new this.module.VectorString();
    const widthRatios = new this.module.VectorDouble();
    const lineTypes = new this.module.VectorInt();
    const pageText = this.quranTextService.quranText[pageIndex];
    const lineInfos = [];
    for (let lineIndex = 0; lineIndex < pageText.length; ++lineIndex) {
      const lineInfo = this.quranTextService.getLineInfo(pageIndex, lineIndex);
      lineInfos.push(lineInfo);
      textLines.push_back(pageText[lineIndex]);
      widthRatios.push_back(lineInfo.lineWidthRatio);
      lineTypes.push_back(lineInfo.lineType);
    }

    const result = this.otLayout.shapeMushafPage(
      pageIndex, this.fontScale, tajweedColor, this.applyForce,
      textLines, widthRatios, lineTypes);
    textLines.delete();
    widthRatios.delete();
    lineTypes.delete();
    const page = result.page;
    const scaleBy = this.otLayout.scaleBy();
    // Same fixed page-space transform used by QuranPdfWriterPdfHummus;
    // line.fontSize already contains the requested font scale.
    const designScale = 72 / (4800 << scaleBy);
    const pageWidth = this.otLayout.mushafPageWidth();
    const margin = 400 << scaleBy;

    ctx.save();
    ctx.transform(designScale, 0, 0, -designScale, 0, 410);
    const outerTransform = ctx.getTransform();

    for (let lineIndex = 0; lineIndex < page.size(); ++lineIndex) {
      if (token.isCancelled()) break;
      const line = page.get(lineIndex);

      // line.type is an embind enum_<LineType> instance, not a raw number;
      // its numeric value lives on .value (LineType::Sura == 1).
      if (line.type?.value === 1 /* LineType::Sura */) {
        this.drawSurahFrame(ctx, outerTransform, pageWidth, margin, line.ystartposition);
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

      for (let glyphIndex = 0; glyphIndex < glyphs.size(); ++glyphIndex) {
        const glyph = glyphs.get(glyphIndex);
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
        this.otLayout.displayGlyph(glyph.codepoint, glyph.lefttatweel,
          glyph.righttatweel, ctx);

        if (glyph.color) ctx.fillStyle = 'rgb(0,0,0)';
      }
      ctx.setTransform(outerTransform);
      glyphs.delete?.();

      if (startSajdaX !== undefined && endSajdaX !== undefined) {
        // startSajdaX/endSajdaX are relative to lineOriginX (currentX starts
        // at 0 above), so bring them through the same lineOriginX + xscale*x
        // mapping used for glyph placement to get back to outerTransform's
        // absolute design space.
        this.drawSajdaBar(ctx, outerTransform,
          lineOriginX + line.xscale * startSajdaX,
          lineOriginX + line.xscale * endSajdaX,
          lineOriginY);
      }
    }

    ctx.restore();
    this.otLayout.clearAlternates();
    page.delete?.();
    result.originalPage?.delete?.();
    result.delete?.();
  }

  ngOnDestroy(): void {
    this.otLayout?.delete?.();
    this.statusSubject.complete();
  }
}
