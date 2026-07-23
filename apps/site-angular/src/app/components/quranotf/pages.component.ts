import { Component, AfterViewInit, OnInit, ViewChildren, QueryList, ElementRef} from '@angular/core';



@Component({
    selector: 'quran-pages',
    templateUrl: './pages.component.ts.html',
    styleUrls: ['./pages.component.ts.scss'],
    host: { 'class': 'digitalkhatt' }
})
export class QuranPagesComponent implements OnInit, AfterViewInit {


  @ViewChildren('page') pageElements: QueryList<ElementRef>;


  constructor() {
  }

  ngOnInit() {    

  }

  ngAfterViewInit() {
    //let ii = this.pageElements;
  }


  



}
