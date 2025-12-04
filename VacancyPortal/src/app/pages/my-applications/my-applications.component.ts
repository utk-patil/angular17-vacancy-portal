import { Component, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { MyApplicationsService } from '../../services/my-applications.service';
import { AuthService } from '../../services/auth.service';
import { PaginationComponent } from '../../components/pagination/pagination.component';

import { HeaderComponent } from '../../components/header/header.component';
import { FooterComponent } from '../../components/footer/footer.component';

import { MyApplication } from '../../models/application.model';

@Component({
  selector: 'app-my-applications',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    PaginationComponent,
    HeaderComponent,
    FooterComponent
  ],
  templateUrl: './my-applications.component.html'
})
export class MyApplicationsComponent {

  private service = inject(MyApplicationsService);
  private auth = inject(AuthService);

  apps = signal<MyApplication[]>([]);
  totalRecords = signal(0);

  searchText = signal('');
  statusFilter = signal<number | null>(null);

  pageNumber = signal(1);
  pageSize = signal(10);

  isLoading = signal(false);

  statusList = [
    { id: null, text: 'All Statuses' },
    { id: 0, text: 'Submitted' },
    { id: 1, text: 'Reviewed' },
    { id: 2, text: 'Shortlisted' },
    { id: 3, text: 'Rejected' },
    { id: 4, text: 'Selected' },
    { id: 5, text: 'Withdrawn' }
  ];

  ngOnInit() {
    if (!this.auth.isCandidate()) {
      alert('Access denied');
      return;
    }

    this.loadApplications();
  }

  loadApplications() {
    this.isLoading.set(true);

    const userId = this.auth.user()?.inUserID!;
    const searchValue = this.searchText() || '';
    const statusValue = this.statusFilter();

    this.service.getApplications(
      userId,
      this.pageNumber(),
      this.pageSize(),
      searchValue,
      statusValue
    )
    .subscribe({
      next: (res) => {
        this.isLoading.set(false);
        this.apps.set(res.myapplications);

        if (res.myapplications.length > 0) {
          this.totalRecords.set(res.myapplications[0].inTotalRecord);
        } else {
          this.totalRecords.set(0);
        }
      },
      error: () => {
        this.isLoading.set(false);
        alert("Something went wrong loading applications.");
      }
    });
  }

  onSearch() {
    this.pageNumber.set(1);
    this.loadApplications();
  }

  onStatusChange(event: any) {
    this.statusFilter.set(event.target.value === "" ? null : Number(event.target.value));
    this.pageNumber.set(1);
    this.loadApplications();
  }

  onPageChange(page: number) {
    this.pageNumber.set(page);
    this.loadApplications();
  }

  withdraw(appId: number) {
    const userId = this.auth.user()?.inUserID;

    if (!userId) {
      alert("Please login first.");
      return;
    }

    if (!confirm("Are you sure you want to withdraw this application?"))
      return;

    this.isLoading.set(true);

    this.service.withdrawApplication(appId, userId)
      .subscribe({
        next: (res) => {
          this.isLoading.set(false);

          alert(res.message);

          if (res.status === 1) {
            this.loadApplications();
          }
        },
        error: () => {
          this.isLoading.set(false);
          alert("Something went wrong.");
        }
      });
  }
}
