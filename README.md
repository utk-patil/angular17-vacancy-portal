# VACANCY PORTAL – Angular 17 + ASP.NET Core API

A complete Job Vacancy Portal system built using:

- Angular 17 (Standalone Components + Signals)
- ASP.NET Core 8 Web API
- SQL Server
- Entity Framework Core (Stored Procedure Execution)
- Bootstrap 5 UI

This repository contains BOTH the frontend and backend.

## DATABASE SETUP (SQL SERVER)

1. Open SQL Server Management Studio (SSMS)
2. Create database:

CREATE DATABASE VacancyPortalDB;

3. Execute ALL scripts from:

VacancyPortalAPI/Database/Tables/
VacancyPortalAPI/Database/StoredProcedures/

## BACKEND – HOW TO RUN (ASP.NET CORE API)

1. Open VacancyPortalAPI in Visual Studio 2022
2. Update connection string in appsettings.json
3. Run using: dotnet run --project VacancyPortalAPI

API URL:
https://localhost:7181/api/v1/

## FRONTEND – HOW TO RUN (ANGULAR 17)

1. Navigate to VacancyPortal/
2. Install dependencies: npm install
3. Run: ng serve --open

Frontend URL:
http://localhost:4200/

## FEATURES

- Login & session persistence
- Vacancy listing with search & pagination
- Apply / Withdraw applications
- My Applications page (Candidate)
- My Vacancies page (Recruiter)
- Vacancy Applications with status updates
- Bootstrap UI
- Angular Signals
- Stored Procedure driven API backend
- SSR-safe localStorage usage

## DEPLOYMENT

Angular Build:
ng build --configuration production

Backend Deployment:
IIS, Azure, Docker

## LICENSE

Private project. Not permitted for external commercial use.
