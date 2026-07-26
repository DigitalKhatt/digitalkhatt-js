import { MushafLayoutType } from '../../services/qurantext.service';

export const ASSET_ROOT = 'assets/wasm_masahif';
// Bump when deploying a newly linked main/side-module set. Dynamic WASM
// modules must not be mixed with an older cached main module because their
// C++ runtime symbols and table entries form one ABI unit.
export const WASM_ASSET_VERSION = '20260722-43';

// Bump when SHARED_FONT_FILES, any FONT_CONFIG[type].project file, or any
// FONT_FILES content changes, so browsers fetch the new copies instead of
// serving stale cached ones. Independent from WASM_ASSET_VERSION: font data
// can change without the linked module set changing, and vice versa.
export const FONT_ASSET_VERSION = '2';

export const SHARED_FONT_FILES = [
  'mfplain.mp',
  'mpost.mp',
  'vmf.mp',
] as const;

export const FONT_CONFIG = {
  [MushafLayoutType.NewMadinah]: { directory: 'madina', project: 'madina.mp', library: 'libmadina.wasm' },
  [MushafLayoutType.OldMadinah]: { directory: 'oldmadina', project: 'oldmadina.mp', library: 'liboldmadina.wasm' },
  [MushafLayoutType.IndoPak15Lines]: { directory: 'indopak', project: 'indopak.mp', library: 'libindopak.wasm' },
} as const;

export const DIR_CONFIG = {
  ["libmadina.wasm"]: "madina",
  ["liboldmadina.wasm"]: "oldmadina",
  ["libindopak.wasm"]: "indopak",
} as const;

export const FONT_FILES = ['glyphs.mp', 'features.fea', 'parameters.json'] as const;

// The engine (OtLayout/GlyphVis/etc) is statically linked into the main
// module and is font-agnostic; libmadina.wasm/liboldmadina.wasm/libindopak.wasm
// are thin per-font plugins (see madinafont/CMakeLists.txt's "headers only,
// never link digitalkhatt_otlayout here" comment). That's what makes it safe
// for one module instance to dlopen all three and hold three independent
// OtLayoutMushaf instances at once, shared by every consumer (mushaf viewer
// routes + the About/glyph-demo screens) instead of each loading its own
// module copy.
export const ALL_MUSHAF_TYPES: MushafLayoutType[] = [
  MushafLayoutType.NewMadinah,
  MushafLayoutType.OldMadinah,
  MushafLayoutType.IndoPak15Lines,
];

export function errorMessage(module: any, error: any): string {
  if (module && error && typeof error.excPtr === 'number') {
    const details = module.getExceptionMessage(error);
    return Array.isArray(details) ? details.join(': ') : String(details);
  }
  return error?.message || String(error);
}

async function copyAssetToFs(module: any, assetPath: string, fsPath: string): Promise<void> {
  // Absolute path: a worker script's relative URLs resolve against its own
  // (bundler-chosen, unpredictable) chunk path, not the document's origin,
  // so this must not depend on the caller's base URL.
  const response = await fetch(`/${ASSET_ROOT}/${assetPath}?v=${FONT_ASSET_VERSION}`);
  if (!response.ok) {
    throw new Error(`Unable to load ${assetPath}: HTTP ${response.status}`);
  }
  module.FS.writeFile(`/${fsPath}`, new Uint8Array(await response.arrayBuffer()));
}

// Shared by WasmMushafService (main thread, draws) and the shaping worker
// (shapes only) so both hold an identically-loaded module with all three
// fonts available, and so there is a single place to update when the WASM
// asset layout changes.
export async function loadWasmModuleWithAllFonts(
  onStatus?: (message: string) => void,
): Promise<{ module: any; otLayouts: Record<MushafLayoutType, any> }> {
  onStatus?.('Fetching/Compiling WebAssembly');

  // Keep Emscripten's large generated loader as a deployable asset. It
  // contains dynamic-linking code that should execute unchanged instead
  // of being rewritten into Angular's application bundle.
  const loaderUrl = `/${ASSET_ROOT}/VisualMetaFontWasm.js?v=${WASM_ASSET_VERSION}`;
  const { default: createVisualMetaFontModule } = await import(
    /* @vite-ignore */ /* webpackIgnore: true */ loaderUrl
  );

  let module: any;
  try {
    module = await createVisualMetaFontModule({
      locateFile: (path: string) => {
        if (DIR_CONFIG[path]) {
          return `/${ASSET_ROOT}/fonts/${DIR_CONFIG[path]}/${path}?v=${WASM_ASSET_VERSION}`;
        }
        const assetPath = path.startsWith('/') ? path : `/${ASSET_ROOT}/${path}`;
        return `${assetPath}?v=${WASM_ASSET_VERSION}`;
      },
      // All three fonts are loaded eagerly so one module instance can serve
      // every consumer (mushaf viewer, regardless of route, plus the About/
      // glyph-demo screens) without ever needing to reload for a different
      // font.
      dynamicLibraries: ALL_MUSHAF_TYPES.map(type => FONT_CONFIG[type].library),
      noInitialRun: true,
    });
  } catch (error) {
    throw new Error(`WASM module loading: ${errorMessage(module, error)}`);
  }

  onStatus?.('Loading DigitalKhatt fonts');
  await Promise.all(SHARED_FONT_FILES.map(name => copyAssetToFs(module, name, name)));
  for (const type of ALL_MUSHAF_TYPES) {
    const fontConfig = FONT_CONFIG[type];
    const fontDirectory = `fonts/${fontConfig.directory}`;
    module.FS.mkdirTree(`/${fontDirectory}`);
    await Promise.all([
      copyAssetToFs(module, `${fontDirectory}/${fontConfig.project}`, `${fontDirectory}/${fontConfig.project}`),
      ...FONT_FILES.map(name => copyAssetToFs(module, `${fontDirectory}/${name}`, `${fontDirectory}/${name}`)),
    ]);
  }

  const otLayouts = {} as Record<MushafLayoutType, any>;
  for (const type of ALL_MUSHAF_TYPES) {
    const fontConfig = FONT_CONFIG[type];
    try {
      otLayouts[type] = new module.OtLayoutMushaf(`fonts/${fontConfig.directory}/${fontConfig.project}`);
    } catch (error) {
      const stage = module.getInitializationStage?.() || 'unknown stage';
      throw new Error(`font initialization (${fontConfig.directory}, ${stage}): ${errorMessage(module, error)}`);
    }
  }

  return { module, otLayouts };
}
