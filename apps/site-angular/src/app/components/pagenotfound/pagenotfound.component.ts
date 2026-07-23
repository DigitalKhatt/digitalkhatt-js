import { Component, AfterViewInit, OnInit, HostListener, Input, ViewChild, ElementRef } from '@angular/core';
import { Title } from '@angular/platform-browser';
import { commonModules } from '../../app.config';



@Component({
  selector: 'quran-pagenotfound',
  templateUrl: './pagenotfound.component.html',
  styleUrls: ['./pagenotfound.component.scss'],
  imports: [...commonModules]
})
export class PageNotFoundComponent implements OnInit, AfterViewInit {
  constructor(
    private titleService: Title
  ) {

  }

  ngOnInit() {

  }

  ngAfterViewInit() {
  }

}
