export interface MyApplication {
  inApplicationID: number;
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
  stCreatedBy: string;

  inModifiedBy: number | null;
  stModifiedBy: string | null;

  dtCreatedAt: string;
  dtModifiedAt: string | null;

  inStatus: number;
  stStatus: string;
}

export interface MyApplicationResponse {
  status: number;
  message: string;
  myapplications: MyApplication[];
}

export interface ApplyResponse {
  status: number;
  message: string;
}
