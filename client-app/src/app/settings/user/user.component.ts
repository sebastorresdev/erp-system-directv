import { Component } from '@angular/core';

// PrimeNG
import { ButtonModule } from 'primeng/button';
import { Toolbar } from 'primeng/toolbar';
import { InputTextModule } from 'primeng/inputtext';
import { IconField } from 'primeng/iconfield';
import { InputIcon } from 'primeng/inputicon';

@Component({
  selector: 'app-user',
  imports: [
    ButtonModule,
    Toolbar,
    InputTextModule,
    IconField,
    InputIcon
  ],
  templateUrl: './user.component.html',
})
export class UserComponent {
  amberSwitch = {
    handle: {
        borderRadius: '0px'
    },
  }
}

