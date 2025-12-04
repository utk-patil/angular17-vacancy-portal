import { Component, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HeaderComponent } from '../../components/header/header.component';
import { FooterComponent } from '../../components/footer/footer.component';
import { VacancyService } from '../../services/vacancy.service';
import { AuthService } from '../../services/auth.service';
import { FormsModule } from '@angular/forms';
import { PaginationComponent } from '../../components/pagination/pagination.component';
import { Router } from '@angular/router';

@Component({
  selector: 'app-my-vacancies',
  standalone: true,
  imports: [CommonModule, FormsModule, PaginationComponent, HeaderComponent, FooterComponent],
  templateUrl: './my-vacancies.component.html'
})
export class MyVacanciesComponent {

  private svc = inject(VacancyService);
  private auth = inject(AuthService);
  private router = inject(Router);

  vacancies = signal<any[]>([]);
  totalRecords = signal(0);

  searchText = signal('');
  statusFilter = signal<boolean | null>(null);

  pageNumber = signal(1);
  pageSize = signal(10);

  isLoading = signal(false);
  alertMessage = signal<string | null>(null);

  ngOnInit() {
    if (!this.auth.isRecruiter()) return;
    this.loadVacancies();
  }

  getUserId() {
    const session = localStorage.getItem('user_session');
    return session ? JSON.parse(session).inUserID : null;
  }

  loadVacancies() {
    this.isLoading.set(true);

    this.svc.getMyVacancies(
      this.pageNumber(),
      this.pageSize(),
      this.getUserId(),
      this.searchText(),
      this.statusFilter()
    )
    .subscribe({
      next: (res) => {
        this.isLoading.set(false);
        this.vacancies.set(res.vacancies || []);

        if (res.vacancies?.length) {
          this.totalRecords.set(res.vacancies[0].inTotalRecord);
        } else {
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

  onStatusChange(event: any) {
    const v = event.target.value;
    this.statusFilter.set(v === '' ? null : v === '1');
    this.pageNumber.set(1);
    this.loadVacancies();
  }

  onPageChange(page: number) {
    this.pageNumber.set(page);
    this.loadVacancies();
  }

  editVacancy(id: number) {
    this.router.navigate(['/post-vacancy'], { queryParams: { id } });
  }

  deleteVacancy(id: number) {
    if (!confirm('Are you sure you want to delete this vacancy?')) return;

    this.svc.deleteVacancy(id).subscribe({
      next: (res) => {
        this.showAlert(res.message);
        this.loadVacancies();
      },
      error: () => {
        this.showAlert("Something went wrong.");
      }
    });
  }

  openApplications(id: number) {
    this.router.navigate(['/recruiter-applications'], { queryParams: { vacancyID: id } });
  }
}
