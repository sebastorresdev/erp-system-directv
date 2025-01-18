import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LayoutService {

  isDarkTheme: boolean = true;

  constructor() { }

  onThemeToggle(): void {
    this.isDarkTheme = !this.isDarkTheme;
    const element = document.querySelector('html');
    if (this.isDarkTheme) {
      element!.classList.add('dark');
    } else {
      element!.classList.remove('dark');
    }
  }
}
