export interface User {
  id: string;
  username: string;
  email: string;
  status: string;
  img: string | null;
  employeId: string | null;
  lastAuthentication: string | null;
}
