import { Routes } from '@angular/router';
import { SettingsComponent } from './settings.component';
import { UserComponent } from './user/user.component';

export const SETTINGS_ROUTES: Routes = [
    {
        path: '',
        component: SettingsComponent,
        // children: [
        //     { path: 'usuarios', component: UserComponent },
        //     // Agrega aquí más rutas secundarias
        // ]
    },
    {
      path:'usuarios', component:UserComponent
    }
];
