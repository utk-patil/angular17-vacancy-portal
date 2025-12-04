import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { MyApplicationResponse } from '../models/application.model';

@Injectable({ providedIn: 'root' })
export class MyApplicationsService {

  private http = inject(HttpClient);

  private baseUrl = 'https://localhost:7181/api/v1/my-applications';
  private withdrawUrl = 'https://localhost:7181/api/v1/withdraw';

  getApplications(userId: number, pn: number, ps: number, search: string, status: number | null) {
    return this.http.get<MyApplicationResponse>(
      `${this.baseUrl}/${userId}`,
      {
        params: {
          pn,
          ps,
          search: search || '',
          status: status !== null ? status.toString() : ''
        }
      }
    );
  }

  withdrawApplication(inApplicationID: number, inUserID: number) {
    return this.http.post<any>(this.withdrawUrl, {
      inApplicationID,
      inUserID
    });
  }
}
