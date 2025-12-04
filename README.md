===========================================
 VACANCY PORTAL – Angular 17 + ASP.NET Core API
===========================================

A complete Job Vacancy Portal system built using:

• Angular 17 (Standalone Components + Signals)
• ASP.NET Core 8 Web API
• SQL Server
• Entity Framework Core (Stored Procedure Execution)
• Bootstrap 5 UI

This repository contains BOTH frontend and backend:

-----------------------------------------------------
 REPOSITORY STRUCTURE
-----------------------------------------------------

angular17-vacancy-portal/
│
├── VacancyPortal/                     → Angular 17 Frontend
│   ├── src/
│   │   ├── app/
│   │   │    ├── pages/               → Vacancies, My Applications, My Vacancies, Applications
│   │   │    ├── services/            → Auth, Vacancy, Applications
│   │   │    ├── components/          → Header, Footer, Pagination
│   │   │    └── models/              → API Request & Response models
│   │   ├── assets/
│   │   └── main.ts / app.config.ts
│   ├── angular.json
│   └── package.json
│
├── VacancyPortalAPI/                  → ASP.NET Core Web API
│   ├── Controllers/
│   ├── Repository/
│   ├── Models/
│   ├── Database/
│   │     ├── Tables/                 → SQL table creation scripts
│   │     └── StoredProcedures/       → All SPs used by the API
│   ├── Program.cs / Startup Code
│   └── appsettings.json
│
└── README.txt                         → Project documentation (this file)


-----------------------------------------------------
 DATABASE SETUP (SQL SERVER)
-----------------------------------------------------

1. Open SQL Server Management Studio (SSMS)
2. Create a database:

   CREATE DATABASE VacancyPortalDB

3. Execute ALL scripts from:

   VacancyPortalAPI/Database/Tables/
   VacancyPortalAPI/Database/StoredProcedures/

This creates:
• User, Vacancy, Application, Skill, Location tables  
• All required stored procedures:
  - GetVacancies
  - PostVacancy
  - DeleteVacancy
  - ApplyForVacancy
  - WithdrawApplication
  - GetMyApplications
  - GetVacancyApplications
  - UpdateApplicationStatus
  - And others.


-----------------------------------------------------
 BACKEND – HOW TO RUN (ASP.NET CORE API)
-----------------------------------------------------

1. Open `VacancyPortalAPI` in Visual Studio 2022

2. Update SQL connection string in:

   VacancyPortalAPI/appsettings.json

   ------------------------------------------------
   "ConnectionStrings": {
      "DefaultConnection": 
         "Server=YOUR_SERVER_NAME;Database=VacancyPortalDB;Trusted_Connection=True;TrustServerCertificate=True;"
   }
   ------------------------------------------------

3. Build and Run the API:
   • Press F5  
   • OR run from terminal:

       dotnet run --project VacancyPortalAPI

The API runs at:

   https://localhost:7181/api/v1/


-----------------------------------------------------
 FRONTEND – HOW TO RUN (ANGULAR 17)
-----------------------------------------------------

1. Open terminal inside:

   VacancyPortal/

2. Install dependencies:

   npm install

3. Run dev server:

   ng serve --open

The app is available at:

   http://localhost:4200/


-----------------------------------------------------
 DEFAULT ROLE CAPABILITIES
-----------------------------------------------------

Candidate:
• Can view vacancies
• Apply for jobs
• View & withdraw applications

Recruiter:
• Post/Edit/Delete vacancies
• View applications for each vacancy
• Update application status (Review → Shortlist → Reject → Select)

Role returned by backend:
• stRoleName = 'Candidate'
• stRoleName = 'Recruiter'


-----------------------------------------------------
 FEATURES INCLUDED
-----------------------------------------------------

✔ Login with session persistence  
✔ Vacancy listing with search & pagination  
✔ Apply / Withdraw application  
✔ My Applications page (Candidate)  
✔ My Vacancies page (Recruiter)  
✔ Vacancy Applications page with status update  
✔ Beautiful UI with Bootstrap  
✔ Stored-procedure-based API  
✔ Angular Signals-based state  
✔ SSR-safe localStorage access  
✔ Bootstrap alert messaging  


-----------------------------------------------------
 HOW TO DEPLOY
-----------------------------------------------------

Backend Deployment Options:
• IIS
• Azure App Service
• Docker

Frontend Deployment Options:
• IIS
• Azure Static Web Apps
• Firebase Hosting
• Nginx / Apache

Build Angular for production:

   ng build --configuration production


-----------------------------------------------------
 CONTRIBUTING
-----------------------------------------------------

Pull requests are welcome.

When updating backend logic:
• Update SQL scripts inside `/Database/StoredProcedures/`
• Update API endpoints accordingly
• Update Angular services if needed

When adding UI features:
• Follow Angular standalone component structure
• Use Signals instead of RxJS where possible


-----------------------------------------------------
 LICENSE
-----------------------------------------------------

This project is private and developed for organizational use.  
Not permitted for external commercial use unless approved.


===========================================
 END OF README
===========================================
