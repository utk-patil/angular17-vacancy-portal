import { Component, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VacancyService } from '../../services/vacancy.service';
import { AuthService } from '../../services/auth.service';
import { PaginationComponent } from '../../components/pagination/pagination.component';
import { ActivatedRoute } from '@angular/router';
import { HeaderComponent } from '../../components/header/header.component';
import { FooterComponent } from '../../components/footer/footer.component';

@Component({
  selector: 'app-vacancy-applications',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    PaginationComponent,
    HeaderComponent,
    FooterComponent
  ],
  templateUrl: './vacancy-applications.component.html'
})
export class VacancyApplicationsComponent {

  private svc = inject(VacancyService);
  private auth = inject(AuthService);
  private route = inject(ActivatedRoute);

  apps = signal<any[]>([]);
  totalRecords = signal(0);

  search = signal('');
  status = signal<number | null>(null);
  vacancyID = signal<number>(0);

  pageNumber = signal(1);
  pageSize = signal(10);

  isLoading = signal(false);

  alertMessage = signal<string | null>(null);
  alertType = signal<'success' | 'danger' | 'warning' | 'info'>('info');

  ngOnInit() {
    const id = Number(this.route.snapshot.queryParamMap.get('vacancyID'));
    this.vacancyID.set(id);
    this.loadApplications();
  }

  showAlert(message: string, type: 'success' | 'danger' | 'warning' | 'info' = 'info') {
    this.alertMessage.set(message);
    this.alertType.set(type);

    setTimeout(() => this.alertMessage.set(null), 3000);
  }

  loadApplications() {
    this.isLoading.set(true);

    const userId = this.auth.user()?.inUserID ?? 0;

    this.svc.getVacancyApplications(
      userId,
      this.vacancyID(),
      this.pageNumber(),
      this.pageSize(),
      this.search(),
      this.status()
    )
    .subscribe({
      next: (res) => {
        this.isLoading.set(false);
        this.apps.set(res.myapplications || []);

        if (res.myapplications?.length > 0)
          this.totalRecords.set(res.myapplications[0].inTotalRecord);
        else
          this.totalRecords.set(0);
      },
      error: () => {
        this.isLoading.set(false);
        this.showAlert("Something went wrong while loading applications.", "danger");
      }
    });
  }

  onSearch() {
    this.pageNumber.set(1);
    this.loadApplications();
  }

  onStatusChange(event: any) {
    const v = event.target.value;
    this.status.set(v === '' ? null : Number(v));
    this.pageNumber.set(1);
    this.loadApplications();
  }

  onPageChange(page: number) {
    this.pageNumber.set(page);
    this.loadApplications();
  }

  updateStatus(appId: number, newStatus: number) {

    const statusActions: Record<number, string> = {
      1: "mark this application as Reviewing",
      2: "Shortlist this application",
      3: "Reject this application",
      4: "Select this candidate"
    };

    if (!confirm(`Are you sure you want to ${statusActions[newStatus]}?`)) {
      return;
    }

    const userId = this.auth.user()?.inUserID ?? 0;

    const req = {
      inApplicationID: appId,
      inStatus: newStatus,
      inUserID: userId
    };

    this.svc.updateApplicationStatus(req)
      .subscribe({
        next: (res) => {
          if (res.status === 102)
            this.showAlert(res.message, "success");
          else
            this.showAlert(res.message, "danger");

          this.loadApplications();
        },
        error: () => {
          this.showAlert("Something went wrong updating status.", "danger");
        }
      });
  }
}
