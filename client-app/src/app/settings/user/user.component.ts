import { Component, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
// Proyecto
import { User } from '../interfaces/user';
// PrimeNG
import { ButtonModule } from 'primeng/button';
import { InputTextModule } from 'primeng/inputtext';
import { DataView } from 'primeng/dataview';
import { SelectButton } from 'primeng/selectbutton';
import { Tag } from 'primeng/tag';
import { TableModule } from 'primeng/table';
import { AvatarModule } from 'primeng/avatar';
import { CardModule } from 'primeng/card';

@Component({
  selector: 'app-user',
  imports: [
    DataView,
    CommonModule,
    FormsModule,
    ButtonModule,
    InputTextModule,
    SelectButton,
    Tag,
    TableModule,
    AvatarModule,
    CardModule,
  ],
  templateUrl: './user.component.html',
})
export class UserComponent {

  layout: 'grid' | 'list' = 'list';

  users = signal<User[]>([]);

  options = ['list', 'grid'];

  selectedUser!: User;

  constructor() {
    const users: User[] = [
      { id: '1', username: 'johndoe', email: 'johndoe@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/amyelsner.png', isActive: true },
      { id: '2', username: 'janesmith', email: 'janesmith@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/asiyajavayant.png', isActive: false },
      { id: '3', username: 'michaeljackson', email: 'mj@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/onyamalimba.png', isActive: true },
      { id: '4', username: 'sarabrown', email: 'sarab@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/walter.jpg', isActive: false },
      { id: '5', username: 'robertjohnson', email: 'robertj@example.com', img: 'https://www.gravatar.com/avatar/05dfd4b41340d09cae045235eb0893c3?d=mp', isActive: true },
      { id: '6', username: 'laurawilson', email: 'laura@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/amyelsner.png', isActive: true },
      { id: '7', username: 'williamtaylor', email: 'william@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/asiyajavayant.png', isActive: false },
      { id: '8', username: 'emilydavis', email: 'emily@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/onyamalimba.png', isActive: true },
      { id: '9', username: 'jamesmiller', email: 'james@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/walter.jpg', isActive: false },
      { id: '10', username: 'oliverthomas', email: 'oliver@example.com', img: 'https://www.gravatar.com/avatar/05dfd4b41340d09cae045235eb0893c3?d=mp', isActive: true },
      { id: '11', username: 'charlottewhite', email: 'charlotte@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/amyelsner.png', isActive: true },
      { id: '12', username: 'benjaminmoore', email: 'benjamin@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/asiyajavayant.png', isActive: false },
      { id: '13', username: 'isabellaanderson', email: 'isabella@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/onyamalimba.png', isActive: true },
      { id: '14', username: 'henrythompson', email: 'henry@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/walter.jpg', isActive: false },
      { id: '15', username: 'graceking', email: 'grace@example.com', img: 'https://www.gravatar.com/avatar/05dfd4b41340d09cae045235eb0893c3?d=mp', isActive: true },
      { id: '16', username: 'jackmartin', email: 'jack@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/amyelsner.png', isActive: true },
      { id: '17', username: 'ameliajames', email: 'amelia@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/asiyajavayant.png', isActive: false },
      { id: '18', username: 'daniellee', email: 'daniel@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/onyamalimba.png', isActive: true },
      { id: '19', username: 'sophiaclark', email: 'sophia@example.com', img: 'https://primefaces.org/cdn/primeng/images/demo/avatar/walter.jpg', isActive: false },
      { id: '20', username: 'lucaslopez', email: 'lucas@example.com', img: 'https://www.gravatar.com/avatar/05dfd4b41340d09cae045235eb0893c3?d=mp', isActive: true },
    ];




    this.users.set(users);
  }

  getSeverity(user: User) {
    return user.isActive ? 'success' : 'danger'
  }

  onRowSelect(event:any) {
    alert(`Se selecciono: ${event}`);
  }


  // Función para calcular el contraste entre el color de fondo y el color del texto
getTextColor(backgroundColor: string): string {
  const color = backgroundColor.replace(/^#/, ''); // Eliminar el "#" del color hex
  const r = parseInt(color.substr(0, 2), 16);
  const g = parseInt(color.substr(2, 2), 16);
  const b = parseInt(color.substr(4, 2), 16);

  // Usar la fórmula para luminancia
  const luminance = 0.2126 * this.adjustColor(r) + 0.7152 * this.adjustColor(g) + 0.0722 * this.adjustColor(b);
  return luminance > 0.5 ? '#000000' : '#FFFFFF'; // Si la luminancia es alta, el texto es negro, si es baja, blanco
}

// Ajustar el valor de color para el cálculo de la luminancia
adjustColor(color: number): number {
  const c = color / 255;
  return c <= 0.03928 ? c / 12.92 : Math.pow((c + 0.055) / 1.055, 2.4);
}
}

