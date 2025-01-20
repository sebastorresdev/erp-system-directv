import { Routes } from '@angular/router';
import { SettingsComponent } from './settings.component';
import { UserComponent } from './user/user.component';
import { CreateEditUserComponent } from './user/create-edit-user/create-edit-user.component';

export const SETTINGS_ROUTES: Routes = [
    {
      path: '',
      component: SettingsComponent,
    },
    {
      path:'usuarios', component:UserComponent
    },
    {
      path:'usuarios/nuevo', component:CreateEditUserComponent
    }
];
