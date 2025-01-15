import { Component, inject, OnInit } from '@angular/core';
// Proyecto
import { OptionComponent } from "../../components/option/option.component";
// PrimeNG
import { AvatarModule } from 'primeng/avatar';
import { ButtonModule } from 'primeng/button';
import { MenuItem } from 'primeng/api';
import { Tooltip } from 'primeng/tooltip';
import { MenuService } from '../../services/menu.service';

@Component({
  selector: 'app-main-menu',
  standalone: true,
  imports: [
    AvatarModule,
    ButtonModule,
    OptionComponent,
    Tooltip
  ],
  templateUrl: './main-menu.component.html',
})
export class MainMenuComponent implements OnInit{
  menuItem : MenuItem[] | undefined;
  private _menuService = inject(MenuService);

  ngOnInit(): void {
    // this.menuItem = [
    //   {
    //     label: "Inventario",
    //     icon: "pi pi-warehouse",
    //     styleClass: "bg-red-400",
    //     routerLink:"/inventario"
    //   },
    //   {
    //     label: "Ventas",
    //     icon: "pi pi-shopping-cart",
    //     styleClass: "bg-green-400",
    //     routerLink:"/ventas"
    //   },
    //   {
    //     label: "Empleados",
    //     icon: "pi pi-users",
    //     styleClass: "bg-blue-400"
    //   },
    //   {
    //     label: "Reportes",
    //     icon: "pi pi-chart-line",
    //     styleClass: "bg-purple-400"
    //   },
    //   {
    //     label: "Proveedores",
    //     icon: "pi pi-truck",
    //     styleClass: "bg-yellow-400"
    //   },
    //   {
    //     label: "Configuración",
    //     icon: "pi pi-cog",
    //     styleClass: "bg-gray-400"
    //   },
    //   {
    //     label: "Finanzas",
    //     icon: "pi pi-dollar",
    //     styleClass: "bg-teal-400"
    //   },
    //   {
    //     label: "Tareas",
    //     icon: "pi pi-briefcase",
    //     styleClass: "bg-orange-400"
    //   }
    // ];    
    this.menuItem = this._menuService.getMenuItems();
  }
  
  toggleDarkMode() {
    const element = document.querySelector('html');
    element!.classList.toggle('my-app-dark');
  }
}
