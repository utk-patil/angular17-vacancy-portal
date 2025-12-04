import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    redirectTo: 'vacancies',
    pathMatch: 'full'
  },
  {
    path: 'vacancies',
    loadComponent: () =>
      import('./pages/vacancies/vacancy-list.component')
        .then(m => m.VacancyListComponent)
  },
  {
    path: 'login',
    loadComponent: () =>
      import('./pages/login/login.component')
        .then(m => m.LoginComponent)
  },
  {
    path: 'apply/:id',
    loadComponent: () =>
      import('./pages/apply/apply.component')
        .then(m => m.ApplyComponent)
  },
  {
    path: 'my-applications',
    loadComponent: () =>
      import('./pages/my-applications/my-applications.component')
        .then(m => m.MyApplicationsComponent)
  },
  {
    path: 'post-vacancy',
    loadComponent: () =>
      import('./pages/post-vacancy/post-vacancy.component')
        .then(m => m.PostVacancyComponent)
  },
  {
    path: 'my-vacancies',
    loadComponent: () =>
      import('./pages/my-vacancies/my-vacancies.component')
        .then(m => m.MyVacanciesComponent)
  },
  {
    path: 'recruiter-applications',
    loadComponent: () =>
      import('./pages/vacancy-applications/vacancy-applications.component')
        .then(m => m.VacancyApplicationsComponent)
  }
];
