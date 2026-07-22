import { Component, Input, ViewChild } from '@angular/core';
import { CdkDrag, DragDropModule } from '@angular/cdk/drag-drop';
import { CdkScrollable } from '@angular/cdk/scrolling';

// Draggable page-number indicator pinned to the right edge of the mushaf
// viewer, doubling as a scrollbar: dragging it scrolls the viewer, and
// scrolling the viewer moves it. Shared by HBMedinaComponent (HarfBuzz.js)
// and WasmMasahifComponent (WebAssembly), with HBMedina's markup, styling
// and drag<->scroll logic as the reference so the two renderers stay
// identical.
@Component({
  selector: 'app-page-number-box',
  templateUrl: './page-number-box.component.html',
  styleUrls: ['./page-number-box.component.scss'],
  imports: [DragDropModule]
})
export class PageNumberBoxComponent {
  @Input() loaded = false;
  @Input() pageNumber;

  // The viewer's scroll container. Assigned programmatically by the parent
  // in ngAfterViewInit — binding the parent's own ViewChild through the
  // template would risk ExpressionChangedAfterItHasBeenChecked.
  scrollable: CdkScrollable;

  dragPosition = { x: 0, y: 0 };
  private boxIsMoved = false;

  @ViewChild(CdkDrag, { static: false }) private boxRef: CdkDrag;

  // Called by the parent on every viewer scroll. A scroll that was itself
  // triggered by dragging the box must not re-derive the box position from
  // the scroll offset, or the box would fight the user's drag — hence the
  // one-shot boxIsMoved flag set in dragMoved().
  syncToScroll() {
    if (!this.boxIsMoved) {
      this.move();
    } else {
      this.boxIsMoved = false;
    }
  }

  // Repositions the box to reflect the current scroll offset. Also called
  // directly by the parent on window resize.
  move() {
    if (!this.scrollable || !this.boxRef) return;

    const viewAreaElement = this.scrollable.getElementRef().nativeElement;
    const offset = this.scrollable.measureScrollOffset('top');

    if (viewAreaElement.scrollHeight) {
      const perc = offset / (viewAreaElement.scrollHeight);

      const box = this.boxRef.element.nativeElement;

      const top = Math.floor((box.parentElement.clientHeight - box.offsetHeight) * perc);

      this.dragPosition = { x: 0, y: top };
    }
  }

  dragMoved(event) {
    if (!this.scrollable || !this.boxRef) return;

    const box = this.boxRef.element.nativeElement;

    const pos: any = this.boxRef.getFreeDragPosition();

    const viewAreaElement = this.scrollable.getElementRef().nativeElement;

    const height = box.parentElement.clientHeight - box.offsetHeight;

    const oldoffset = this.scrollable.measureScrollOffset('top');

    if ((pos.y === 0 && oldoffset === 0)
      || (pos.y === height && (oldoffset + viewAreaElement.clientHeight) === viewAreaElement.scrollHeight))
      return;

    const offset = Math.floor(pos.y / height * viewAreaElement.scrollHeight);

    this.boxIsMoved = true;
    this.scrollable.scrollTo({ top: offset });
  }
}
