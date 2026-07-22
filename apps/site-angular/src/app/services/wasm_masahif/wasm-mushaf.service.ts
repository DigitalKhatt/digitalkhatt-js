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

    const halfHeight = (INTERLINE_DESIGN_UNITS << this.otLayout.scaleBy()) / 2;

    const corner1 = new DOMPoint(margin, ystartposition + halfHeight).matrixTransform(outerTransform);
    const corner2 = new DOMPoint(margin + pageWidth, ystartposition - halfHeight).matrixTransform(outerTransform);

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
    for (let lineIndex = 0; lineIndex < pageText.length; ++lineIndex) {
      const lineInfo = this.quranTextService.getLineInfo(pageIndex, lineIndex);
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
      let currentX = pageWidth + margin - line.xstartposition;
      const currentY = line.ystartposition;
      let lastX = currentX;
      let lastY = currentY;

      ctx.save();
      ctx.transform(1, 0, 0, -1, currentX, currentY);
      for (let glyphIndex = 0; glyphIndex < glyphs.size(); ++glyphIndex) {
        const glyph = glyphs.get(glyphIndex);
        currentX -= glyph.x_advance;
        const x = currentX + glyph.x_offset;
        const y = currentY - glyph.y_offset;
        ctx.translate(x - lastX, -(y - lastY));
        lastX = x;
        lastY = y;

        if (glyph.color) {
          ctx.fillStyle = `rgb(${(glyph.color >> 24) & 255},${(glyph.color >> 16) & 255},${(glyph.color >> 8) & 255})`;
        }
        ctx.save();
        ctx.scale(line.fontSize, line.fontSize);
        this.otLayout.displayGlyph(glyph.codepoint, glyph.lefttatweel,
          glyph.righttatweel, ctx);
        ctx.restore();
        if (glyph.color) ctx.fillStyle = 'rgb(0,0,0)';
      }
      ctx.restore();
      glyphs.delete?.();
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
