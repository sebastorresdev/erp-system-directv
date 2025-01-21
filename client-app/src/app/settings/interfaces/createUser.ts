import { FormControl } from "@angular/forms";

export interface CreateUser{
  username: string,
  email: string,
  password: FormControl<string | null>,
  roles: FormControl<string[] | null>
}
