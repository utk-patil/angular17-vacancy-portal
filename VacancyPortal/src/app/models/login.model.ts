export interface LoginRequest {
  stUsername: string;
  stPassword: string;
}

export interface LoginUser {
  inUserID: number;
  stName: string;
  stUsername: string;
  stEmail: string;
  inRoleID: number;
  stRoleName: string;
}

export interface LoginResponse {
  status: number;
  message: string;
  loginuser: LoginUser | null;
}
