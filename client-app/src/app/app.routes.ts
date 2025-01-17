import { Routes } from '@angular/router';
import { LoginComponent } from './shared/pages/login.component';
import { NoFoundComponent } from './shared/pages/no-found/no-found.component';

export const routes: Routes = [
  { path: ''      , loadChildren:() => import('./shared/layout/layout.routes').then(r => r.LAYOUT_ROUTES)},
  { path: 'login' , component:LoginComponent},
  { path: '**'    , component:NoFoundComponent}
];
