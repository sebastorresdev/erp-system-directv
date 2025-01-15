import { CommonModule } from '@angular/common';
import { Component, input } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MenuItem } from 'primeng/api';

@Component({
  selector: 'app-option',
  standalone: true,
  imports: [
    CommonModule,
    RouterModule
  ],
  templateUrl: './option.component.html',
})
export class OptionComponent {
  menuItem = input.required<MenuItem>();
}
