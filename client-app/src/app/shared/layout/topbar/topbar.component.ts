import { CommonModule } from '@angular/common';
import { Component, inject, input } from '@angular/core';
import { MenuItem } from 'primeng/api';
import { AvatarModule } from 'primeng/avatar';
import { BadgeModule } from 'primeng/badge';
import { ButtonModule } from 'primeng/button';
import { InputTextModule } from 'primeng/inputtext';
import { Menubar } from 'primeng/menubar';
import { Ripple } from 'primeng/ripple';
import { MenuService } from '../../services/menu.service';
import { Router, RouterModule } from '@angular/router';


@Component({
  selector: 'app-topbar',
  standalone: true,
  imports: [
    RouterModule,
    Menubar,
    BadgeModule,
    AvatarModule,
    InputTextModule,
    Ripple,
    CommonModule,
    ButtonModule
  ],
  templateUrl: './topbar.component.html',
})
export class TopbarComponent {

    items: MenuItem[] | undefined;
    menuItem = input.required<MenuItem>();
    hover: boolean = false;

    _menuService = inject(MenuService);
    _router = inject(Router);


    ngOnInit() {
      this.items = this._menuService.getSubMenuItems(this.menuItem().label?.toLowerCase());
    }

    backtToHome() : void {
        this._router.navigate(['/home']);
    }
}
