import { Component, AfterViewInit, OnInit, HostListener, Input, ViewChild, ElementRef } from '@angular/core';
import { QuranService } from '../../services/quranservice/quranservice.service';
import { QuranShaper } from '../../services/quranservice/quran_shaper';
import { Title } from '@angular/platform-browser';
import { commonModules } from '../../app.config';



@Component({
  selector: 'quran-pagenotfound',
  templateUrl: './pagenotfound.component.html',
  styleUrls: ['./pagenotfound.component.scss'],
  imports: [...commonModules]
})
export class PageNotFoundComponent implements OnInit, AfterViewInit {
  quranShaper: QuranShaper;
  constructor(
    private quranService: QuranService, private titleService: Title
  ) {

  }

  ngOnInit() {

  }

  ngAfterViewInit() {
  }

}
