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
    ButtonModule
  ],
  templateUrl: './topbar.component.html',
})
export class TopbarComponent {

    menuItem = input<MenuItem>();
    hover: boolean = false;

    _menuService = inject(MenuService);
    _router = inject(Router);

    backtToHome() : void {
        this._router.navigate(['/home']);
    }

    toggleDarkMode() {
      const element = document.querySelector('html');
      element!.classList.toggle('dark');
    }

    // Personalizacion del topbar
    amberTolbar = {
      border:{
        radius:'0px',
        color:'none'
      },
      background:'none',
      padding:'none'
    }
}
