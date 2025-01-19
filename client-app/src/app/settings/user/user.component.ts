import { Component, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
// Proyecto
import { User } from '../interfaces/user';
// PrimeNG
import { ButtonModule } from 'primeng/button';
import { InputTextModule } from 'primeng/inputtext';
import { SelectButton } from 'primeng/selectbutton';
import { Tag } from 'primeng/tag';
import { TableModule } from 'primeng/table';
import { AvatarModule } from 'primeng/avatar';
import { CardModule } from 'primeng/card';
import { AutoComplete } from 'primeng/autocomplete';
import { UserService } from '../services/user.service';
import { Toolbar } from 'primeng/toolbar';
import { Tooltip } from 'primeng/tooltip';


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
    AutoComplete,
    Toolbar,
    Tooltip
  ],
  templateUrl: './user.component.html',
})
export class UserComponent {

  layout: 'grid' | 'list' = 'list';

  users = signal<User[]>([]);

  private readonly _userService = inject(UserService)

  options = ['list', 'grid'];

  selectedUser!: User;

  searchValues: string[] | undefined;

  items: any[] = [];

  constructor() {
    this.getUsers();
  }

  getUsers() {
    this._userService.getUsers().subscribe((data) => {
      this.users.set(data);
    })
  }

  getSeverity(user: User) {
    return user.status == 'Activo' ? 'success' : 'danger'
  }

  onRowSelect(event:any) {
    alert(`Se selecciono: ${event}`);
  }

  selectedSearch(event: any) {
    const search = event.value as string;
    this.searchValues = [search]

    this._userService.getUsersByUsernameOrEmail(search).subscribe((data) => {
      this.users.set(data);
    },
    (error) => {
      console.error("Error al obtener usuarios:", error);
    });
  }

  removeSelection() {
    if (this.searchValues?.length === 0) {
      this.getUsers();
    }
  }

  search(event: AutoCompleteCompleteEvent) {
    this.items = [...Array(1).keys()].map(_ => event.query);
  }

  toolbarStyle = {
    border:{
      radius:'0px',
      color:'none'
    },
    background:'none',
    padding:'0.75rem'
  }
}
