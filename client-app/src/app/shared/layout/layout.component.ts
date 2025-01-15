import { Component, inject, OnInit } from '@angular/core';
import { ActivatedRoute, Router, RouterModule } from '@angular/router';
import { TopbarComponent } from "./topbar/topbar.component";
import { MenuItem } from 'primeng/api';
import { MenuService } from '../services/menu.service';

@Component({
  selector: 'app-layout',
  standalone: true,
  imports: [
    RouterModule,
    TopbarComponent
  ],
  templateUrl: './layout.component.html',
})
export class LayoutComponent implements OnInit {
  selectedMenuItem: MenuItem | undefined;

  // private route = inject(ActivatedRoute);
  private router = inject(Router);
  private activatedRoute = inject(ActivatedRoute);
  private _menuService = inject(MenuService);

  ngOnInit() {
    // Obtener la ruta activa completa con ActivatedRoute
    const currentRoute = this.router.url.split('/')[1]; // Obtiene la primera parte de la ruta después de "/"

    // Asegúrate de que 'getMenu' se está llamando correctamente con la ruta adecuada
    this.selectedMenuItem = this._menuService.getMenu(currentRoute);

    console.log('Ruta actual:', currentRoute);
    console.log('Menú seleccionado:', this.selectedMenuItem);
  }
}
