import { CdkPortalOutlet } from '@angular/cdk/portal';
import { Component, OnInit, ViewChild, ViewContainerRef } from '@angular/core';
import { PWAService } from './services/PWA.service';
import { SidebarContentsService } from './services/navigation/sidebarcontents';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  imports: [RouterOutlet],
  standalone: true
})
export class AppComponent implements OnInit {
  title = 'app';

  isStarting = false;
  isSideBySide = true;

  get mode() { return this.isSideBySide ? 'side' : 'over'; }

  @ViewChild(CdkPortalOutlet, { static: true }) outlet;

  @ViewChild('toolbarButtonsContainer', { read: ViewContainerRef, static: true }) _toolbarButtonsContainer: ViewContainerRef;


  constructor(private sidebarContentsService: SidebarContentsService, private pwaService: PWAService) {
  }

  ngOnInit() {
    this.sidebarContentsService.setOutlet(this.outlet);
    this.sidebarContentsService.setContainer(this._toolbarButtonsContainer);
  }

  updateHostClasses() {

  }


}
