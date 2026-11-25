import { createHash, randomUUID } from 'node:crypto';
import { mkdir, rename, rm, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { fileURLToPath } from 'node:url';

const latestReleaseUrl = 'https://api.github.com/repos/DigitalKhatt/typesetting/releases/latest';
const assetDirectory = fileURLToPath(new URL('../src/assets/fonts/opentype/', import.meta.url));
const fontNames = [
  'DigitalKhattNewMadina-VF.woff2',
  'DigitalKhattOldMadina-VF.woff2',
  'DigitalKhattIndoPak-VF.woff2',
];

async function download(url) {
  const response = await fetch(url, { signal: AbortSignal.timeout(30_000) });
  if (!response.ok) throw new Error(`HTTP ${response.status} while downloading ${url}`);
  return response;
}

async function writeFont(filename, contents) {
  const target = join(assetDirectory, filename);
  const temporary = target + '.' + randomUUID() + '.tmp';
  try {
    await writeFile(temporary, contents);
    await rename(temporary, target);
  } finally {
    await rm(temporary, { force: true });
  }
}

async function updateFonts() {
  const release = await (await download(latestReleaseUrl)).json();
  const files = await Promise.all(fontNames.map(async filename => {
    const asset = release.assets.find(item => item.name === filename);
    if (!asset) throw new Error(`Release ${release.tag_name} is missing ${filename}`);

    const response = await download(asset.browser_download_url);
    const contents = Buffer.from(await response.arrayBuffer());
    if (contents.subarray(0, 4).toString() !== 'wOF2') {
      throw new Error(`Invalid WOFF2 file ${filename}`);
    }
    const digest = 'sha256:' + createHash('sha256').update(contents).digest('hex');
    if (digest !== asset.digest) {
      throw new Error(`Checksum mismatch for ${filename} in ${release.tag_name}`);
    }
    return [filename, contents];
  }));

  await mkdir(assetDirectory, { recursive: true });
  await Promise.all(files.map(([filename, contents]) => writeFont(filename, contents)));
  console.log(`Updated ${files.length} WOFF2 fonts from ${release.tag_name}.`);
}

updateFonts().catch(error => {
  console.error(error.message);
  process.exitCode = 1;
});
