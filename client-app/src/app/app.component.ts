import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
    selector: 'app-root',
    imports: [RouterOutlet],
    templateUrl: './app.component.html',
})
export class AppComponent {
  menubarStyle = {
    border:{
      radius:'0px',
      color:'none'
    },
    background:'none',
    padding:'0.75rem'
  }
}
