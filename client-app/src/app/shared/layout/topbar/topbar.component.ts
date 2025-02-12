import { CommonModule } from '@angular/common';
import { Component, computed, inject, input } from '@angular/core';
import { MenuItem } from 'primeng/api';
import { AvatarModule } from 'primeng/avatar';
import { BadgeModule } from 'primeng/badge';
import { ButtonModule } from 'primeng/button';
import { InputTextModule } from 'primeng/inputtext';
import { Menubar } from 'primeng/menubar';
import { MenuService } from '../../services/menu.service';
import { Router, RouterModule } from '@angular/router';
import { Menu } from 'primeng/menu';
import { FormsModule } from '@angular/forms';
import { Popover } from 'primeng/popover';
import { LayoutService } from '../../services/layout.service';
import { Tooltip } from 'primeng/tooltip';

@Component({
  selector: 'app-topbar',
  standalone: true,
  imports: [
    RouterModule,
    Menubar,
    BadgeModule,
    AvatarModule,
    InputTextModule,
    CommonModule,
    ButtonModule,
    Menu,
    FormsModule,
    Popover,
    Tooltip
  ],
  templateUrl: './topbar.component.html',
})
export class TopbarComponent {

    menuItem = input<MenuItem>();
    _layoutService = inject(LayoutService);
    _menuService = inject(MenuService);
    options: MenuItem[] | undefined;
    _router = inject(Router);

    constructor() {
      this.options = this._menuService.getConfiguratinOptions();
    }

    backtToHome() : void {
        this._router.navigate(['/home']);
    }

    // Personalizacion del topbar
    menubarStyle = {
      border:{
        radius:'0px',
        color:'none'
      },
      background:'none',
      padding:'0.75rem'
    }
}
