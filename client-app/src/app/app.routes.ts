import { Routes } from '@angular/router';
import { MainMenuComponent } from './shared/pages/main-menu/main-menu.component';
import { LoginComponent } from './shared/pages/login.component';
import { NoFoundComponent } from './shared/pages/no-found/no-found.component';

export const routes: Routes = [
  { path: ''      , redirectTo: '/home', pathMatch: 'full' },
  { path: ''      , loadChildren:() => import('./shared/layout/layout.routes').then(r => r.LAYOUT_ROUTES)},
  { path: 'home'  , component:MainMenuComponent},
  { path: 'login' , component:LoginComponent},
  { path: '**'    , component:NoFoundComponent}
];
