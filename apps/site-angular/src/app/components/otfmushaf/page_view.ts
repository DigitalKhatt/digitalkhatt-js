/*
 * Copyright 2012 Mozilla Foundation (Some code is derived from https://github.com/mozilla/pdf.js/blob/master/web/pdf_page_view.js)
 */
import { LineType, QuranTextService } from '../../services/qurantext.service';
import { MushafPageView, PageFormat } from '../mushaf-viewer/base-mushaf-viewer.component';
import { RenderingStates } from '../mushaf-viewer/rendering_states';

export const PAGE_WIDTH = 17000;
export const INTERLINE = 1800;
const MARGIN = 400;

export function fitMushafLines(root: HTMLElement): void {
  const lines = Array.from(root.querySelectorAll<HTMLElement>('.justifyline'));
  for (const line of lines) {
    line.style.transform = '';
  }

  const range = document.createRange();
  const scales = lines.map(line => {
    const box = line.getBoundingClientRect();
    range.selectNodeContents(line);
    const width = box.right - range.getBoundingClientRect().left;
    return box.width > 0 && width > box.width ? box.width / width : 1;
  });

  lines.forEach((line, index) => {
    if (scales[index] < 1) {
      line.style.transform = 'scaleX(' + scales[index] + ')';
    }
  });
}

export class PageView implements MushafPageView {
  readonly id: number;
  renderingState = RenderingStates.INITIAL;
  private viewport: PageFormat;

  constructor(
    public readonly div: HTMLElement, private readonly pageIndex: number, viewport: PageFormat,
    private readonly quranTextService: QuranTextService,
  ) {
    this.id = pageIndex + 1;
    this.update(viewport);
  }

  async draw(): Promise<void> {
    if (this.renderingState !== RenderingStates.INITIAL) return;

    this.renderingState = RenderingStates.RUNNING;
    const content = document.createDocumentFragment();
    const scale = this.viewport.width / PAGE_WIDTH;
    const margin = MARGIN * scale;
    const lineWidth = this.viewport.width - 2 * margin;
    const lineHeight = INTERLINE * scale;

    const lines = this.quranTextService.quranText[this.pageIndex];
    for (const [lineIndex, text] of lines.entries()) {
      const info = this.quranTextService.getLineInfo(this.pageIndex, lineIndex);
      const line = document.createElement('div');
      line.classList.add('line');
      line.style.height = lineHeight + 'px';
      const firstBasmala = this.pageIndex < 2 && lineIndex === 1;
      const widthRatio = info.lineType === LineType.Content && !firstBasmala ? info.lineWidthRatio : 1;
      const sideMargin = margin + lineWidth * (1 - widthRatio) / 2;
      line.style.marginInline = sideMargin + 'px';

      if (info.lineType === LineType.Content && !firstBasmala) {
        const body = document.createElement('div');
        body.className = 'justifyline';
        body.style.lineHeight = line.style.height;
        body.style.fontSize = this.viewport.fontSize + 'px';
        this.setLineText(body, text, info.sajda?.text);
        line.append(body);
      } else if (info.lineType === LineType.Sura) {
        line.classList.add('linesuran');
        line.style.textAlign = 'center';
        if (this.pageIndex < 2) {
          line.style.paddingBottom = 2 * lineHeight + 'px';
        }
        const title = document.createElement('span');
        title.className = 'innersura';
        title.textContent = text;
        title.style.lineHeight = line.style.height;
        title.style.fontSize = 0.9 * this.viewport.fontSize + 'px';
        line.append(title);
      } else {
        line.classList.add('linebism');
        const basmala = document.createElement('span');
        basmala.className = this.pageIndex < 2 ? 'bismfeature' : 'basmfeature';
        basmala.textContent = text;
        basmala.style.lineHeight = line.style.height;
        basmala.style.fontSize = 0.95 * this.viewport.fontSize + 'px';
        line.append(basmala);
      }

      content.append(line);
    }

    this.div.append(content);
    fitMushafLines(this.div);
    this.div.dataset.loaded = 'true';
    this.renderingState = RenderingStates.FINISHED;
  }

  private setLineText(element: HTMLElement, text: string, sajda: string | undefined): void {
    const start = sajda ? text.indexOf(sajda) : -1;
    if (start === -1) {
      element.textContent = text;
      return;
    }
    const marker = document.createElement('span');
    marker.className = 'sajda';
    marker.textContent = sajda;
    element.append(text.slice(0, start), marker, text.slice(start + sajda.length));
  }

  // A DOM page is composed synchronously before returning to the shared scheduler.
  pause(): void {}
  resume(): void {}

  update(viewport: PageFormat): void {
    this.viewport = viewport;
    this.div.style.width = viewport.width + 'px';
    this.div.style.height = viewport.height + 'px';
    this.div.style.fontSize = viewport.fontSize + 'px';
    this.destroy();
  }

  destroy(): void {
    this.div.replaceChildren();
    this.div.dataset.loaded = 'false';
    this.renderingState = RenderingStates.INITIAL;
  }
}
