import { Injectable, signal } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { LoginRequest, LoginResponse, LoginUser } from '../models/login.model';

@Injectable({ providedIn: 'root' })
export class AuthService {

  private apiUrl = 'https://localhost:7181/api/v1/auth/login';

  user = signal<LoginUser | null>(null);

  constructor(private http: HttpClient) {
    this.loadSession();
  }

  login(model: LoginRequest) {
    return this.http.post<LoginResponse>(this.apiUrl, model);
  }

  saveSession(res: LoginResponse) {
    localStorage.setItem('user_session', JSON.stringify(res.loginuser));
    this.user.set(res.loginuser);
  }

  loadSession() {
    const data = localStorage.getItem('user_session');
    if (data) {
      this.user.set(JSON.parse(data));
    }
  }

  logout() {
    localStorage.removeItem('user_session');
    this.user.set(null);
  }

  isLoggedIn(): boolean {
    return this.user() !== null;
  }

  isCandidate(): boolean {
    return this.user()?.stRoleName === 'Candidate';
  }

  isRecruiter(): boolean {
    return this.user()?.stRoleName === 'Recruiter';
  }

}
