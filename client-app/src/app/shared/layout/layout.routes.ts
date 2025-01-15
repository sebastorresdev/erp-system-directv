import { Routes } from '@angular/router';
import { LayoutComponent } from './layout.component';
import { InventoryComponent } from '../../inventory/inventory.component';
import { SalesComponent } from '../../sales/sales.component';

export const LAYOUT_ROUTES: Routes = [
    {
        path: '',
        component: LayoutComponent,
        children: [
            { path: 'inventario', component: InventoryComponent },
            { path: 'ventas', component:SalesComponent},
            { path: 'ajustes', loadChildren:() => import('../../settings/settings.routes').then(r => r.SETTINGS_ROUTES)},
            // Agrega aquí más rutas secundarias
        ]
    }
];
