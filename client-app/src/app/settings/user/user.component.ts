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
import { AutoComplete } from 'primeng/autocomplete';


interface AutoCompleteCompleteEvent {
  originalEvent: Event;
  query: string;
}


@Component({
  selector: 'app-user',
  imports: [
    CommonModule,
    FormsModule,
    ButtonModule,
    InputTextModule,
    SelectButton,
    Tag,
    TableModule,
    AvatarModule,
    CardModule,
    AutoComplete
  ],
  templateUrl: './user.component.html',
})
export class UserComponent {

  layout: 'grid' | 'list' = 'list';

  users = signal<User[]>([]);

  options = ['list', 'grid'];

  selectedUser!: User;

  selectedAutoValue: any = null;

  autoValue: any[] | undefined;

  autoFilteredValue: any[] = [];

  value1:string | undefined;

  items: any[] = [];

    search(event: AutoCompleteCompleteEvent) {
        this.items = [...Array(10).keys()].map((item) => event.query + '-' + item);
    }

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



    this.autoValue = users;
    this.users.set(users);
  }

  getSeverity(user: User) {
    return user.isActive ? 'success' : 'danger'
  }

  onRowSelect(event:any) {
    alert(`Se selecciono: ${event}`);
  }


  filterCountry(event: AutoCompleteCompleteEvent) {
    const filtered: any[] = [];
    const query = event.query;

    for (let i = 0; i < (this.autoValue as any[]).length; i++) {
        const country = (this.autoValue as any[])[i];
        console.log(country);
        if (country.username.toLowerCase().indexOf(query.toLowerCase()) == 0) {
            filtered.push(country);
        }
    }
    console.log("paso");
    this.autoFilteredValue = filtered;
}
}

