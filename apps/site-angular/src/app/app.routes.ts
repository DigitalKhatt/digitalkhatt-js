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
    // A single parameterized route (rather than one child route per mushaf,
    // as 'hb'/'ot' below still do) so that switching masahif -- via
    // WasmMasahifComponent.selectMushaf()'s router.navigate() -- stays on
    // the same routeConfig object and Angular's default shouldReuseRoute
    // (see CacheRouteReuseStrategy) reuses the existing component instance
    // instead of destroying and recreating it. WasmMasahifComponent reads
    // the type from ActivatedRoute.paramMap (mushafTypeFromRouteSegment)
    // rather than the MUSHAFLAYOUTTYPE DI token the other viewers use.
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
        path: 'oldmedina',
        component: OTFMushafComponent,
        providers: [{ provide: MUSHAFLAYOUTTYPE, useValue: MushafLayoutType.OldMadinah }],
        data: {
          type: 'oldmedina'
        },
      },
      {
        path: 'newmedina',
        component: OTFMushafComponent,
        providers: [{ provide: MUSHAFLAYOUTTYPE, useValue: MushafLayoutType.NewMadinah }],
        data: {
          type: 'newmedina'
        },
      },
      {
        path: 'indopak15',
        component: OTFMushafComponent,
        providers: [{ provide: MUSHAFLAYOUTTYPE, useValue: MushafLayoutType.IndoPak15Lines }],
        data: {
          type: 'indopak15'
        },
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
