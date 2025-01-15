import { Component } from '@angular/core';
// PrimeNG
import { InputTextModule } from 'primeng/inputtext';
import { CheckboxModule } from 'primeng/checkbox';
import { ButtonModule } from 'primeng/button';
import { Card } from 'primeng/card';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [
    InputTextModule,
    CheckboxModule,
    ButtonModule,
    Card
  ],
  templateUrl: './login.component.html',
})
export class LoginComponent {

}
