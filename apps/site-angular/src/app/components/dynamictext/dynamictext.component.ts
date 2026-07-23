import { Component, AfterViewInit, OnInit, HostListener, Input, ViewChild, ElementRef, OnChanges, SimpleChanges } from '@angular/core';
import { WasmMushafService } from '../../services/wasm_masahif/wasm-mushaf.service';
import { MushafLayoutType } from '../../services/qurantext.service';
import { commonModules } from '../../app.config';

const CSS_UNITS = 96.0 / 72.0;
// Always shown inside AboutComponent, which is pinned to NewMadinah -- see
// about.component.ts's ABOUT_MUSHAF_TYPE comment.
const DYNAMIC_TEXT_MUSHAF_TYPE = MushafLayoutType.NewMadinah;

@Component({
    selector: 'quran-dynamictext',
    templateUrl: './dynamictext.component.html',
    styleUrls: ['./dynamictext.component.scss'],
    imports : [...commonModules]
})
export class DynamicTextComponent implements OnInit, AfterViewInit, OnChanges {
  quranShaper: WasmMushafService;

  @Input() text: string;
  @Input() min: number = 50;
  @Input() max: number = 50;
  @Input() scale: number = 1;

  private width: number;
  private height: number = 30;
  tatweel: number = 0;


  CSS_UNITS = CSS_UNITS;

  @ViewChild("canvas", { static: true }) canvasEleRef: ElementRef<HTMLCanvasElement>;

  ctx: CanvasRenderingContext2D;

  private totalscale: number;


  constructor(
    private quranService: WasmMushafService,
  ) {
  }

  ngOnInit() {
    this.ctx = this.canvasEleRef.nativeElement.getContext('2d');

    this.quranService.promise.then((respone: WasmMushafService) => {
      this.quranShaper = respone;

      this.initCanavas();

    });

  }

  ngOnChanges(changes: SimpleChanges) {
    if (this.quranShaper) {
      this.initCanavas();
    }
  }

  ngAfterViewInit() {
  }

  linewidthChanged(event) {
    this.drawText(event.value);
  }

  initCanavas() {

    let ctx = this.ctx;
    let canvas = this.ctx.canvas;

    this.width = this.quranShaper.shapeText(DYNAMIC_TEXT_MUSHAF_TYPE, this.text, 0, 1, false, false, ctx);



    var wd = (this.width + this.max) * this.scale * this.CSS_UNITS;

    let rectifiedScale = this.scale;

    var parentWidth = this.canvasEleRef.nativeElement.offsetParent.clientWidth;

    if (wd > parentWidth) {
      rectifiedScale = this.scale * (parentWidth / wd);
      wd = parentWidth;
    }


    var hd = this.height * rectifiedScale * this.CSS_UNITS;
    canvas.style.width = wd + "px";
    canvas.style.height = hd + "px";

    let outputScale = this.quranService.getOutputScale(ctx);
    canvas.width = wd * outputScale.sx;
    canvas.height = hd * outputScale.sy;


    this.totalscale = outputScale.sx * this.CSS_UNITS * rectifiedScale;
    ctx.transform(this.totalscale, 0, 0, this.totalscale, canvas.width, canvas.height * 2 / 3);

    this.drawText(this.tatweel);

  }

  drawText(lineWidth) {

    this.clearCanvas(this.ctx);

    let width = this.width + lineWidth;

    if (width < 1) width = 1;

    this.quranShaper.shapeText(DYNAMIC_TEXT_MUSHAF_TYPE, this.text, width, 1, true, true, this.ctx);

    this.drawLine();

  }

  clearCanvas(ctx) {
    ctx.save();
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    // Will always clear the right space
    ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height);
    ctx.restore();
  }

  drawLine() {
    let context = this.ctx;
    let canvas = context.canvas;

    context.beginPath();
    context.moveTo(-this.width, -this.height * 2 / 3);
    context.lineTo(-this.width, this.height);
    context.lineWidth = 1;
    // set line color
    context.strokeStyle = 'rgba(0,0,0,0.1)';
    context.stroke();
  }



  @HostListener('window:resize', ['$event'])
  onResize(event) {
    if (this.quranShaper) {
      this.initCanavas();
    }

  }



}
