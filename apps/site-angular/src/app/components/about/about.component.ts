import { Component, AfterViewInit, OnInit, HostListener } from '@angular/core';
import { WasmMushafService } from '../../services/wasm_masahif/wasm-mushaf.service';
import { Title } from '@angular/platform-browser';
import { NavigationEnd, Router, RouterLink } from '@angular/router';
import { commonModules } from '../../app.config';
import { DynamicTextComponent } from '../dynamictext/dynamictext.component';
import { JoinLettersComponent } from '../joinletters/joinletters.component';

const CSS_UNITS = 96.0 / 72.0;

@Component({
  selector: 'app-about-component',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.scss'],
  imports: [...commonModules, DynamicTextComponent, JoinLettersComponent, RouterLink],
  providers: [WasmMushafService]
})
export class AboutComponent implements OnInit, AfterViewInit {
  quranShaper: WasmMushafService;
  contexts;
  tatweel;
  loaded;
  ltat;
  rtat;
  glyphNames = ['behshape.isol.expa', 'behshape.fina.expa', 'feh.isol.expa', 'feh.fina.expa', 'kaf.fina.expa', 'kaf.fina.afterlam.expa', 'noon.isol.expa', 'noon.fina.expa', 'alefmaksura.isol.expa', 'yehshape.fina.expa', 'qaf.isol.expa', 'qaf.fina.expa', 'seen.isol.expa', 'seen.fina.expa',
    'sad.isol.expa', 'sad.fina.expa'];

  pageSize = { width: 255, height: 410 };

  constructor(
    private quranService: WasmMushafService, private titleService: Title, private router: Router
  ) {

    this.contexts = []
    this.tatweel = 0;
    this.titleService.setTitle("About DigitalKhatt");
    this.router.events.subscribe(val => {
      if (val instanceof NavigationEnd) {
        let fragmentIdx = val.urlAfterRedirects.lastIndexOf('#');
        if (fragmentIdx >= 0 && fragmentIdx < val.urlAfterRedirects.length - 1) {
          let fragment = val.urlAfterRedirects.substring(fragmentIdx + 1);
          console.log('fragment: ' + fragment);
          let element = document.getElementById(fragment);
          if (element) {
            element.scrollIntoView();
          }

        }
      }
    })
    this.ltat = 0;
    this.rtat = 0;
  }

  ngOnInit() {

  }

  ngAfterViewInit() {

    this.quranService.promise.then((respone: WasmMushafService) => {
      this.quranShaper = respone;

      this.initCanavas();

      setTimeout(() => { this.loaded = true; });

    });


  }

  tatweelChanged(event) {

    this.contexts.forEach((ctx, index) => {
      this.clearCanvas(ctx);
      this.drawGlyph(ctx, this.glyphNames[index], event.value, 0);
    });
  }

  ltatChanged(event) {
    this.ltat = event.value;
  }
  rtatChanged(event) {
    this.rtat = event.value;
  }




  initCanavas() {
    this.contexts = [];



    this.glyphNames.forEach((item, index) => {
      var canvas = document.getElementById(item) as any;

      const ctx = canvas.getContext('2d');

      let outputScale = this.quranService.getOutputScale(ctx);

      var wd = 60;
      var ht = 40;

      canvas.width = wd * outputScale.sx;

      canvas.height = ht * outputScale.sy;

      canvas.style.width = wd + "px";
      canvas.style.height = ht + "px";

      //ctx.translate(0, canvas.height * 2 / 3);
      //ctx.scale(0.001, 0.001);

      //let scale = canvas.width / this.pageSize.width;
      let scale = (wd / 3000) * outputScale.sx;
      ctx.transform(scale, 0, 0, -scale, 0, canvas.height * 2 / 3);

      this.clearCanvas(ctx);



      this.drawGlyph(ctx, this.glyphNames[index], this.tatweel, 0);

      this.contexts.push(ctx);
    });
  }

  clearCanvas(ctx) {
    ctx.save();
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    // Will always clear the right space
    ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height);
    ctx.restore();
  }

  @HostListener('window:resize', ['$event'])
  onResize(event) {
    if (this.quranShaper) {
      this.initCanavas();
    }

  }

  drawGlyph(ctx, glyphName, leftatweel, righttatweel) {

    //var code = "ignore_exp_parameters:=1;lefttatweel:=" + leftatweel + ";righttatweel:=0;";
    var code = "beginchar(testglyph,55,-1,-1,-1);";
    code = code + glyphName + "_(" + (leftatweel || 0) + "," + (righttatweel || 0) + ");";
    code = code + "endchar;";

    var status = this.quranShaper.executeMetapost(code);

    this.quranShaper.drawPathByName("testglyph", ctx);

    /*
    var path = this.quranShaper.getPathByName("testglyph");

    var draw = (new Function("return " + path))();

    draw(ctx);*/

    //var glyphCode = this.quranShaper.getGlyphCode(glyphName);

    //this.quranShaper.displayGlyph(glyphCode, 0, 0, ctx);

  }


}
