import { Component, inject, OnInit } from '@angular/core';
// Proyecto
import { OptionComponent } from "../../components/option/option.component";
// PrimeNG
import { AvatarModule } from 'primeng/avatar';
import { ButtonModule } from 'primeng/button';
import { MenuItem } from 'primeng/api';
import { MenuService } from '../../services/menu.service';
import { TopbarComponent } from "../../layout/topbar/topbar.component";

@Component({
  selector: 'app-main-menu',
  standalone: true,
  imports: [
    AvatarModule,
    ButtonModule,
    OptionComponent,
],
  templateUrl: './main-menu.component.html',
})
export class MainMenuComponent implements OnInit{
  menuItem : MenuItem[] | undefined;
  private _menuService = inject(MenuService);

  ngOnInit(): void {
    this.menuItem = this._menuService.getMenuItems();
  }
}
