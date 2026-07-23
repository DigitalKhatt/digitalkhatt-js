/// <reference lib="webworker" />

import { MushafLayoutType } from '../../services/qurantext.service';
import { loadWasmModuleWithAllFonts } from './wasm-mushaf-bootstrap';

// Owns a module instance and all three fonts' OtLayoutMushaf objects, used
// exclusively to run shapeMushafPage() (including the "Optimize marks"
// physics solver) off the main thread. Drawing stays on the main thread
// against its own, separately-loaded instance -- displayGlyph() is a pure
// function of (codepoint, lefttatweel, righttatweel) plus the loaded font,
// so it doesn't need to share state with the instance that did the shaping.
let module: any;
let otLayouts: Record<MushafLayoutType, any>;

const ready = loadWasmModuleWithAllFonts().then(result => {
  module = result.module;
  otLayouts = result.otLayouts;
  postMessage({ type: 'ready' });
}).catch((error: any) => {
  postMessage({ type: 'error', message: error?.message || String(error) });
});

interface ShapePageRequest {
  type: 'shapePage';
  requestId: number;
  mushafType: MushafLayoutType;
  pageIndex: number;
  fontScale: number;
  tajweedColor: boolean;
  applyForce: boolean;
  textLines: string[];
  widthRatios: number[];
  lineTypes: number[];
}

addEventListener('message', async (event: MessageEvent<ShapePageRequest>) => {
  const data = event.data;
  if (data.type !== 'shapePage') return;

  // A shapePage request can only arrive after 'ready' has been posted (the
  // main thread awaits it before issuing any request), but guard anyway in
  // case initialization itself failed.
  await ready;
  if (!otLayouts) return;

  const { requestId, mushafType, pageIndex, fontScale, tajweedColor, applyForce,
    textLines, widthRatios, lineTypes } = data;

  try {
    const otLayout = otLayouts[mushafType];

    const vecTextLines = new module.VectorString();
    const vecWidthRatios = new module.VectorDouble();
    const vecLineTypes = new module.VectorInt();
    for (let i = 0; i < textLines.length; ++i) {
      vecTextLines.push_back(textLines[i]);
      vecWidthRatios.push_back(widthRatios[i]);
      vecLineTypes.push_back(lineTypes[i]);
    }

    const result = otLayout.shapeMushafPage(
      pageIndex, fontScale, tajweedColor, applyForce,
      vecTextLines, vecWidthRatios, vecLineTypes);
    vecTextLines.delete();
    vecWidthRatios.delete();
    vecLineTypes.delete();

    const page = result.page;
    const lines = [];
    for (let lineIndex = 0; lineIndex < page.size(); ++lineIndex) {
      const line = page.get(lineIndex);
      const glyphsVec = line.glyphs;
      const glyphs = [];
      for (let glyphIndex = 0; glyphIndex < glyphsVec.size(); ++glyphIndex) {
        const glyph = glyphsVec.get(glyphIndex);
        glyphs.push({
          codepoint: glyph.codepoint,
          lefttatweel: glyph.lefttatweel,
          righttatweel: glyph.righttatweel,
          x_advance: glyph.x_advance,
          x_offset: glyph.x_offset,
          y_offset: glyph.y_offset,
          cluster: glyph.cluster,
          color: glyph.color,
        });
      }
      lines.push({
        // line.type is an embind enum_<LineType> instance; .value is the
        // plain numeric LineType (Sura === 1). Extracted here since embind
        // enum wrapper objects aren't structured-cloneable.
        type: line.type?.value,
        ystartposition: line.ystartposition,
        xstartposition: line.xstartposition,
        xscale: line.xscale,
        fontSize: line.fontSize,
        glyphs,
      });
      glyphsVec.delete?.();
    }

    // Mirrors the main thread's own clearAlternates() call at the end of
    // today's printPage(): shapeMushafPage()'s optimizePage() pass populates
    // this instance's tempGlyphs cache with entries keyed by a different
    // GlyphParameters.scalex than displayGlyph() ever uses on the main
    // thread, so they're never reused there -- without this call they'd
    // leak across every page shaped on this worker.
    otLayout.clearAlternates();
    page.delete?.();
    result.originalPage?.delete?.();
    result.delete?.();

    postMessage({ type: 'shapePageResult', requestId, lines });
  } catch (error: any) {
    const message = module && typeof error?.excPtr === 'number'
      ? (module.getExceptionMessage(error) ?? []).join?.(': ') ?? String(error)
      : (error?.message || String(error));
    postMessage({ type: 'shapePageError', requestId, message });
  }
});
