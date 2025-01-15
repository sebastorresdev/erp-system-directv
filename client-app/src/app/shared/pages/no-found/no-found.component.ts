import { Component } from '@angular/core';
// PrimeNG
import { ButtonModule } from 'primeng/button';


@Component({
  selector: 'app-no-found',
  standalone: true,
  imports: [
    ButtonModule
  ],
  templateUrl: './no-found.component.html',
  styleUrl: './no-found.component.scss'
})
export class NoFoundComponent {

}
