import { Component, EventEmitter, Input, Output } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';
import { MushafLayoutType } from '../../services/qurantext.service';

@Component({
  selector: 'app-mushaf-selector',
  imports: [MatButtonModule, MatIconModule, MatMenuModule],
  template: `
    <button type="button" mat-icon-button [matMenuTriggerFor]="menu" title="Switch Mushaf" aria-label="Switch Mushaf">
      <mat-icon>menu_book</mat-icon>
    </button>
    <mat-menu #menu="matMenu" class="panelClass">
      @for (edition of editions; track edition.type) {
        <button type="button" mat-menu-item [disabled]="mushafType === edition.type"
                (click)="mushafSelected.emit(edition.type)">
          @if (mushafType === edition.type) {
            <mat-icon>check</mat-icon>
          }
          {{edition.label}}
        </button>
      }
    </mat-menu>
  `
})
export class MushafSelectorComponent {
  @Input({ required: true }) mushafType: MushafLayoutType;
  @Output() mushafSelected = new EventEmitter<MushafLayoutType>();

  readonly editions = [
    { type: MushafLayoutType.NewMadinah, label: 'New Madinah' },
    { type: MushafLayoutType.OldMadinah, label: 'Old Madinah' },
    { type: MushafLayoutType.IndoPak15Lines, label: 'IndoPak (15 lines)' },
  ];
}
