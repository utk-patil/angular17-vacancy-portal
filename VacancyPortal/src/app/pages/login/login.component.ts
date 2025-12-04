import { Component, inject } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './login.component.html'
})
export class LoginComponent {

  auth = inject(AuthService);
  router = inject(Router);

  username = '';
  password = '';

  login() {
    const req = {
      stUsername: this.username,
      stPassword: this.password
    };

    this.auth.login(req).subscribe(res => {
      if (res.status === 1) {
        this.auth.saveSession(res);
        alert(res.message);

        const role = res.loginuser?.stRoleName;

        if (role === 'Recruiter') {
          this.router.navigate(['/my-vacancies']);
        } else {
          this.router.navigate(['/vacancies']);
        }
      } 
      else {
        alert(res.message);
      }
    });
  }

  back() {
    this.router.navigate(['/vacancies']);
  }
}
