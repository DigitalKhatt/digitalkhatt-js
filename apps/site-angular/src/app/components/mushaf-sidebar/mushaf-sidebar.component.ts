import { Component, EventEmitter, Input, Output } from '@angular/core';
import { commonModules } from '../../app.config';
import { MushafLayoutType } from '../../services/qurantext.service';
import { OPENTYPE_FONT_FAMILIES } from '../../services/opentype-fonts';

// Shared surah outline for the Mushaf readers.
@Component({
  selector: 'app-mushaf-sidebar',
  templateUrl: './mushaf-sidebar.component.html',
  styleUrls: ['./mushaf-sidebar.component.scss'],
  imports: [...commonModules]
})
export class MushafSidebarComponent {
  @Input() outline: any[] = [];
  @Input() fontFamily = OPENTYPE_FONT_FAMILIES[MushafLayoutType.NewMadinah];
  @Output() outlineSelected = new EventEmitter<any>();

  select(item: any) {
    this.outlineSelected.emit(item);
  }
}
