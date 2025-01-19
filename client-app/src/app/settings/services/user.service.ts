import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';

// Proyecto
import { User } from '../interfaces/user';
import { environment } from '../../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private readonly userUrl = `${environment.baseUrl}/user`
  private readonly _http = inject(HttpClient);

  getUsers() : Observable<User[]> {
    return this._http.get<User[]>(`${this.userUrl}/all`);
  }

  getUsersByUsernameOrEmail(search:string) : Observable<User[]> {
    return this._http.get<User[]>(`${this.userUrl}?search=${search}`);
  }

}
