import { Component, AfterViewInit, OnInit, ViewChildren, QueryList, ElementRef} from '@angular/core';
import { QuranService } from '../../services/quranservice/quranservice.service';
import { QuranShaper } from '../../services/quranservice/quran_shaper';



@Component({
    selector: 'quran-pages',
    templateUrl: './pages.component.ts.html',
    styleUrls: ['./pages.component.ts.scss'],
    host: { 'class': 'digitalkhatt' }    
})
export class QuranPagesComponent implements OnInit, AfterViewInit {
  

  @ViewChildren('page') pageElements: QueryList<ElementRef>;
 

  constructor(
    private quranService: QuranService,
  ) {
  }

  ngOnInit() {    

  }

  ngAfterViewInit() {
    //let ii = this.pageElements;
  }


  



}
