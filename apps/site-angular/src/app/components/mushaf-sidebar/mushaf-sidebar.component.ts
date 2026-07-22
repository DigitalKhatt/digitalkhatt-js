import { Component, EventEmitter, Input, Output } from '@angular/core';
import { commonModules } from '../../app.config';

// Surah outline list shown in the mat-sidenav of both HBMedinaComponent
// (HarfBuzz.js) and WasmMasahifComponent (WebAssembly). Kept as a single
// component so the two renderers can't drift into using different fonts for
// the same list, as they had before this was factored out.
@Component({
  selector: 'app-mushaf-sidebar',
  templateUrl: './mushaf-sidebar.component.html',
  styleUrls: ['./mushaf-sidebar.component.scss'],
  imports: [...commonModules]
})
export class MushafSidebarComponent {
  @Input() outline: any[] = [];
  @Output() outlineSelected = new EventEmitter<any>();

  select(item: any) {
    this.outlineSelected.emit(item);
  }
}
