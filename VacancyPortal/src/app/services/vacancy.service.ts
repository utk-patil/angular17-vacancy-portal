import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { VacancyResponse } from '../models/vacancy.model';

@Injectable({ providedIn: 'root' })
export class VacancyService {

  private http = inject(HttpClient);
  private baseUrl = 'https://localhost:7181/api/v1';

  getVacancies(
    page: number,
    size: number,
    search: string = '',
    vacancyId: number | null = null,
    userId: number | null = null,
    active: boolean | null = null
  ) {
    return this.http.get<VacancyResponse>(`${this.baseUrl}/vacancies`, {
      params: {
        id: vacancyId ?? '',
        userid: userId ?? '',
        search: search || '',
        active: active !== null ? active.toString() : '',
        pn: page.toString(),
        ps: size.toString()
      }
    });
  }

  getMyVacancies(
    page: number,
    size: number,
    userId: number | null,
    search: string = '',
    active: boolean | null = null,
    id: number | null = null
  ) {
    return this.http.get<any>(`${this.baseUrl}/my-vacancies`, {
      params: {
        id: id ?? '',
        userid: userId ?? '',
        search: search || '',
        active: active !== null ? active.toString() : '',
        pn: page.toString(),
        ps: size.toString()
      }
    });
  }

  applyForVacancy(inVacancyID: number, inUserID: number) {
    const body = { inVacancyID, inUserID };
    return this.http.post<any>(`${this.baseUrl}/apply`, body);
  }

  getCountries() {
    return this.http.get<any>(`${this.baseUrl}/countries`);
  }

  getStates(countryId: number) {
    return this.http.get<any>(`${this.baseUrl}/states/${countryId}`);
  }

  getCities(stateId: number) {
    return this.http.get<any>(`${this.baseUrl}/cities/${stateId}`);
  }

  getSkills() {
    return this.http.get<any>(`${this.baseUrl}/skills`);
  }

  postVacancy(data: any) {
    return this.http.post<any>(`${this.baseUrl}/post-vacancy`, data);
  }
 
  deleteVacancy(id: number) {
    return this.http.post<any>(`${this.baseUrl}/delete-vacancy`, {
      inVacancyID: id
    });
  }

  getVacancyApplications(
    userId: number,
    vacancyId: number,
    page: number,
    size: number,
    search: string = '',
    status: number | null = null
  ) {
    return this.http.get<any>(`${this.baseUrl}/my-vacancy-applications/${userId}`, {
      params: {
        id: vacancyId,
        search: search || '',
        status: status ?? '',
        pn: page,
        ps: size
      }
    });
  }

  updateApplicationStatus(model: any) {
    return this.http.post<any>(`${this.baseUrl}/update-application-status`, model);
  }

}
