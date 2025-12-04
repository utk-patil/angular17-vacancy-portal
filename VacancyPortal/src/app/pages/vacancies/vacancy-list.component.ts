import { Component, inject, signal } from '@angular/core';
import { VacancyService } from '../../services/vacancy.service';
import { Vacancy, VacancyResponse } from '../../models/vacancy.model';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HeaderComponent } from '../../components/header/header.component';
import { FooterComponent } from '../../components/footer/footer.component';
import { PaginationComponent } from '../../components/pagination/pagination.component';

@Component({
  selector: 'app-vacancy-list',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    HeaderComponent,
    FooterComponent,
    PaginationComponent
  ],
  templateUrl: './vacancy-list.component.html'
})
export class VacancyListComponent {

  private vacancyService = inject(VacancyService);
  private router = inject(Router);

  vacancies = signal<Vacancy[]>([]);
  totalRecords = signal(0);

  pageNumber = signal(1);
  pageSize = signal(10);

  searchText = signal('');
  isLoading = signal(false);

  alertMessage = signal<string | null>(null);

  Math = Math;

  ngOnInit() {
    this.loadVacancies();
  }

  getUserId() {
    const session = localStorage.getItem('user_session');
    if (!session) return null;
    const user = JSON.parse(session);
    return user.inUserID ?? null;
  }

  loadVacancies() {
    this.isLoading.set(true);

    const userId = this.getUserId();

    this.vacancyService
      .getVacancies(
        this.pageNumber(),
        this.pageSize(),
        this.searchText(),
        null,
        userId,
        true
      )
      .subscribe({
        next: (res: VacancyResponse) => {
          this.isLoading.set(false);
          if (res.vacancies?.length) {
            this.vacancies.set(res.vacancies);
            this.totalRecords.set(res.vacancies[0].inTotalRecord);
          } else {
            this.vacancies.set([]);
            this.totalRecords.set(0);
          }
        },
        error: () => {
          this.isLoading.set(false);
        }
      });
  }

  showAlert(msg: string) {
    this.alertMessage.set(msg);
    setTimeout(() => this.alertMessage.set(null), 3000);
  }

  onSearch() {
    this.pageNumber.set(1);
    this.loadVacancies();
  }

  onPageChange(newPage: number) {
    this.pageNumber.set(newPage);
    this.loadVacancies();
  }

  applyForVacancy(inVacancyID: number) {
    const session = localStorage.getItem('user_session');
    if (!session) {
      this.router.navigate(['/login']);
      return;
    }

    const user = JSON.parse(session);
    const userId = user.inUserID;

    this.isLoading.set(true);

    this.vacancyService.applyForVacancy(inVacancyID, userId).subscribe({
      next: (res: any) => {
        this.isLoading.set(false);
        this.showAlert(res.message);
        this.loadVacancies();
      },
      error: () => {
        this.isLoading.set(false);
        this.showAlert('Something went wrong.');
      }
    });
  }
}
