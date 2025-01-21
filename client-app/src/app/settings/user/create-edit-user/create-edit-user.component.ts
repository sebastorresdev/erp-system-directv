import { Component, inject, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, Validators, ReactiveFormsModule, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { FormBuilder } from '@angular/forms';
// Project
import { CreateUser } from '../../interfaces/createUser';
// PrimeNG
import { InputTextModule } from 'primeng/inputtext';
import { TabsModule } from 'primeng/tabs'
import { Button } from 'primeng/button';
import { Toolbar } from 'primeng/toolbar';
import { Select } from 'primeng/select';
import { Tooltip } from 'primeng/tooltip';
import { MessageService } from 'primeng/api';
import { Ripple } from 'primeng/ripple';
import { Toast } from 'primeng/toast';

@Component({
  selector: 'app-create-edit-user',
  templateUrl: './create-edit-user.component.html',
  imports: [
    CommonModule,
    FormsModule,
    InputTextModule,
    TabsModule,
    Button,
    Toolbar,
    Select,
    Tooltip,
    ReactiveFormsModule,
    Toast,
    Ripple
  ],
  providers: [MessageService]
})
export class CreateEditUserComponent implements OnInit {

  private readonly _router = inject(Router);
  private readonly _messageService = inject(MessageService);

  _formBuilder = inject(FormBuilder);

  isInvalid = false;

  newUser!: CreateUser;

  userForm!: FormGroup;


  value1:any;
  value2:any;
  value3:any;
  value4:any;
  value5:any;
  value6:any;
  value7:any;
  list:any[] = [];


  ngOnInit() {
    this.list = [
        { name : 'Usuario auxiliar almacen'},
        { name : 'Usuario almancen' },
        { name : 'Administrador' },
    ];

    this.userForm = this._formBuilder.group({
      username: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: [null],
      roles: []
    });

  }

  showSuccess() {
    this._messageService.add({ severity: 'success', summary: 'Success', detail: 'Message Content' });
  }

  showError(message: string) {
    this._messageService.add({ severity: 'error', summary: 'Error', detail: message });
  }

  cancel() {
    this._router.navigate(['ajustes/usuarios']);
  }

  addUser() {
    if (this.isFormValid()) {
      this.showSuccess();
    }

    // NO HARA NADA
  }

  isFormValid(): boolean{
    if (this.userForm.invalid) {
      const errors = [];

      if (this.userForm.get('username')?.hasError('required')) {
        errors.push('El campo de usuario es requerido.');
      }

      if (this.userForm.get('email')?.hasError('required')) {
        errors.push('El campo de correo electrónico es requerido.');
      }

      if (this.userForm.get('email')?.hasError('email')) {
        errors.push('El correo electrónico no es válido.');
      }

      this.showError(errors.join('\n'));

      return false;
    }
    return true;
  }

  // INVESTIGAR DONDE COLOCAR EL ESTILO PARA QUE SEA GLOBAL
  toolbarStyle = {
    border:{
      radius:'0px',
      color:'none'
    },
    background:'none',
    padding:'0.75rem'
  }
}
