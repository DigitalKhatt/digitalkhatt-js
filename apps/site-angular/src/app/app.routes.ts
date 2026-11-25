import { Routes } from '@angular/router';
import { HBMedinaComponent } from './components/hbmedina/hbmedina.component';
import { AboutComponent } from './components/about/about.component';
import { QuranOTFComponent } from './components/quranotf/quranotf.component';
import { OldMedinaComponent } from './components/oldmedina/oldmedina.component';
import { MUSHAFLAYOUTTYPE, MushafLayoutType } from './services/qurantext.service';
import { CompareTajweedComponent } from './components/comparetajweed/comparetajweed.component';
import { CompareMushafComponent } from './components/comparemushaf/comparemushaf.component';
import { PageNotFoundComponent } from './components/pagenotfound/pagenotfound.component';
import { PrecomputedComponent } from './components/precomputed/precomputed.component';
import { OTFMushafComponent } from './components/otfmushaf/otfmushaf.component';
import { WasmMasahifComponent } from './components/wasm_masahif/quran.component';

export const routes: Routes = [
  {
    path: '',
    pathMatch: 'full',
    redirectTo: 'digitalmushaf'
  },
  {
    path: '',
    children: [
      {
        path: 'digitalmushaf',
        component: HBMedinaComponent,
        data: {
          type: 'newmedina'
        },
      }
    ]
  },
  {
    path: 'about',
    component: AboutComponent
  },
  {
    path: 'otf',
    children: [
      {
        path: 'digitalmushaf',
        component: QuranOTFComponent
      },
      {
        path: 'oldmedina',
        component: OldMedinaComponent
      }
    ]
  },
  {
    path: 'hb',
    children: [
      {
        path: 'oldmedina',
        component: HBMedinaComponent,
        providers: [{ provide: MUSHAFLAYOUTTYPE, useValue: MushafLayoutType.OldMadinah }],
        data: {
          type: 'oldmedina'
        },
      },
      {
        path: 'newmedina',
        component: HBMedinaComponent,
        providers: [{ provide: MUSHAFLAYOUTTYPE, useValue: MushafLayoutType.NewMadinah }],
        data: {
          type: 'newmedina'
        },
      },
      {
        path: 'indopak15',
        component: HBMedinaComponent,
        providers: [{ provide: MUSHAFLAYOUTTYPE, useValue: MushafLayoutType.IndoPak15Lines }],
        data: {
          type: 'indopak15'
        },
      }
    ]
  },
  {
    // A parameterized route keeps the reader alive while switching editions.
    path: 'wasm',
    children: [
      {
        path: ':type',
        component: WasmMasahifComponent,
      }
    ]
  },
  {
    path: 'ot',
    children: [
      {
        path: '',
        pathMatch: 'full',
        redirectTo: 'newmedina'
      },
      {
        path: ':type',
        canMatch: [(_route, segments) => ['newmedina', 'oldmedina', 'indopak15'].includes(segments[0]?.path)],
        component: OTFMushafComponent
      }
    ]
  },
  {
    path: 'comparetajweed',
    component: CompareTajweedComponent,
  },
  {
    path: 'comparemushaf',
    component: CompareMushafComponent,
  },
  {
    path: 'precomputed',
    component: PrecomputedComponent,
  },
  {
    path: '**',
    component: PageNotFoundComponent
  },
];
