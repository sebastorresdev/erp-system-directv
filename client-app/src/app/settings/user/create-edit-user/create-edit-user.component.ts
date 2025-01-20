import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';

// PrimeNG
import { InputTextModule } from 'primeng/inputtext';
import { TabsModule } from 'primeng/tabs'
import { Button } from 'primeng/button';
import { Toolbar } from 'primeng/toolbar';
import { Select } from 'primeng/select';
import { Tooltip } from 'primeng/tooltip';

@Component({
  selector: 'app-create-edit-user',
  imports: [
    CommonModule,
    FormsModule,
    InputTextModule,
    TabsModule,
    Button,
    Toolbar,
    Select,
    Tooltip,
  ],
  templateUrl: './create-edit-user.component.html',
})
export class CreateEditUserComponent {
  value1:any;
  value2:any;
  value3:any;
  value4:any;
  value5:any;
  value6:any;
  value7:any;
  list:any[] = [];

  private readonly _router = inject(Router);

  ngOnInit() {
    this.list = [
        { name : 'Usuario auxiliar almacen'},
        { name : 'Usuario almancen' },
        { name : 'Administrador' },
    ];
}

  cancel() {
    this._router.navigate(['ajustes/usuarios']);
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
