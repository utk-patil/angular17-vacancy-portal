export interface Vacancy {
  inRowNumber: number;
  inTotalRecord: number;

  inVacancyID: number;
  stTitle: string;
  stDescription: string;

  inCountryID: number;
  stCountryName: string;

  inStateID: number;
  stStateName: string;

  inCityID: number;
  stCityName: string;

  flgIsActive: boolean;

  inCreatedBy: number;
  stCreatedBy: string | null;

  inModifiedBy: number | null;
  stModifiedBy: string | null;

  dtCreatedAt: string;
  dtModifiedAt: string | null;
}

export interface VacancyResponse {
  status: number;
  message: string;
  vacancies: Vacancy[];
}
