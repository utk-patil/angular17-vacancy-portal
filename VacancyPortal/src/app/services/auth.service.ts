import { Injectable, signal, PLATFORM_ID,Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { isPlatformBrowser } from '@angular/common';
import { LoginRequest, LoginResponse, LoginUser } from '../models/login.model';

@Injectable({ providedIn: 'root' })
export class AuthService {

  private apiUrl = 'https://localhost:7181/api/v1/auth/login';
  private platformId = Inject(PLATFORM_ID);

  user = signal<LoginUser | null>(null);

  constructor(private http: HttpClient) {
    this.loadSession();
  }

  login(model: LoginRequest) {
    return this.http.post<LoginResponse>(this.apiUrl, model);
  }


  saveSession(res: LoginResponse) {
    if (isPlatformBrowser(this.platformId)) {
      localStorage.setItem('user_session', JSON.stringify(res.loginuser));
    }
    this.user.set(res.loginuser);
  }

  loadSession() {
    if (isPlatformBrowser(this.platformId)) {
      const data = localStorage.getItem('user_session');
      if (data) {
        this.user.set(JSON.parse(data));
      }
    }
  }

  logout() {
    if (isPlatformBrowser(this.platformId)) {
      localStorage.removeItem('user_session');
    }
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
