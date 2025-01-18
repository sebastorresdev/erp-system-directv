import { Component, inject, OnInit, signal } from '@angular/core';
import { NavigationEnd, Router, RouterModule } from '@angular/router';
import { TopbarComponent } from "./topbar/topbar.component";
import { MenuItem } from 'primeng/api';
import { MenuService } from '../services/menu.service';
import { Subscription } from 'rxjs';

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

  selectedMenuItem = signal<MenuItem | undefined>(undefined);

  private router = inject(Router);
  private _menuService = inject(MenuService);
  private routerSubscription: Subscription | undefined;

  ngOnInit() {
    // Suscribirse a los cambios de navegación
    this.routerSubscription = this.router.events.subscribe(event => {
      if (event instanceof NavigationEnd) {
        const currentRoute = this.router.url.split('/')[1]; // Obtiene la primera parte de la ruta después de "/"
        this.selectedMenuItem.set(this._menuService.getMenu(currentRoute));
      }
    });

    // Detectar ruta inicial
    const initialRoute = this.router.url.split('/')[1];
    this.selectedMenuItem.set(this._menuService.getMenu(initialRoute));
  }

  ngOnDestroy() {
    // Cancelar la suscripción al evento cuando el componente se destruya
    this.routerSubscription?.unsubscribe();
  }
}
