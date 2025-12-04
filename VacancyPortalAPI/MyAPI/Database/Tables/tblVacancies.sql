CREATE TABLE tblVacancies
(
    inVacancyID INT IDENTITY(1,1) PRIMARY KEY,
    stTitle NVARCHAR(300) NOT NULL,
    stDescription NVARCHAR(MAX) NOT NULL,
    inCountryID INT NOT NULL,
    inStateID INT NOT NULL,
    inCityID INT NOT NULL,
    flgIsActive BIT NOT NULL DEFAULT(1),
    inCreatedBy INT NOT NULL,
    inModifiedBy INT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE()),
    dtModifiedAt DATETIME NULL
);

-- Auto‑Generated Vacancy Insert Script

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Ensure system reliability, security, and scalability.', 2, 16, 44, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 2, 64, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 12, 24, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Write clean, testable, and maintainable code following coding standards.', 3, 7, 42, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Ensure system reliability, security, and scalability.', 2, 6, 6, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Develop modern front-end interfaces with high performance and usability.', 1, 4, 3, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 12, 38, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 11, 2, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 11, 10, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Work with cross‑functional teams to develop robust software solutions.', 4, 5, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Ensure system reliability, security, and scalability.', 3, 4, 59, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 9, 54, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Design and implement scalable backend services and APIs.', 3, 14, 23, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 14, 60, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 9, 43, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 12, 11, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Responsible for building and maintaining enterprise applications.', 4, 5, 41, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Write clean, testable, and maintainable code following coding standards.', 2, 1, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 10, 53, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 7, 16, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Write clean, testable, and maintainable code following coding standards.', 3, 10, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 9, 38, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Responsible for building and maintaining enterprise applications.', 2, 8, 5, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Write clean, testable, and maintainable code following coding standards.', 4, 15, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 15, 61, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 7, 40, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Design and implement scalable backend services and APIs.', 3, 10, 53, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 13, 19, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 1, 53, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 2, 49, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Ensure system reliability, security, and scalability.', 3, 3, 6, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 1, 3, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 16, 13, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 2, 9, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 10, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Write clean, testable, and maintainable code following coding standards.', 2, 8, 34, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 11, 36, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 15, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 7, 2, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 8, 53, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 13, 64, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 8, 47, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Design and implement scalable backend services and APIs.', 2, 11, 33, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 15, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 15, 37, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 13, 53, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 16, 38, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 3, 58, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Design and implement scalable backend services and APIs.', 3, 15, 52, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Ensure system reliability, security, and scalability.', 4, 12, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Develop modern front-end interfaces with high performance and usability.', 4, 7, 28, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Write clean, testable, and maintainable code following coding standards.', 3, 13, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Work with cross‑functional teams to develop robust software solutions.', 4, 11, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Develop modern front-end interfaces with high performance and usability.', 3, 16, 10, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 7, 6, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Design and implement scalable backend services and APIs.', 2, 5, 54, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Write clean, testable, and maintainable code following coding standards.', 3, 6, 17, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Design and implement scalable backend services and APIs.', 1, 5, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Write clean, testable, and maintainable code following coding standards.', 1, 10, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 3, 11, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 3, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Responsible for building and maintaining enterprise applications.', 3, 4, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Design and implement scalable backend services and APIs.', 2, 7, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Ensure system reliability, security, and scalability.', 4, 4, 36, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 15, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 1, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Write clean, testable, and maintainable code following coding standards.', 3, 8, 6, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 11, 50, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Responsible for building and maintaining enterprise applications.', 1, 2, 43, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 4, 13, 23, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Write clean, testable, and maintainable code following coding standards.', 3, 1, 7, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Develop modern front-end interfaces with high performance and usability.', 1, 10, 64, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Responsible for building and maintaining enterprise applications.', 2, 10, 54, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 1, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Design and implement scalable backend services and APIs.', 4, 4, 39, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 2, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 2, 46, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Ensure system reliability, security, and scalability.', 1, 6, 31, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Responsible for building and maintaining enterprise applications.', 3, 9, 25, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Ensure system reliability, security, and scalability.', 3, 12, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 8, 54, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 4, 5, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Write clean, testable, and maintainable code following coding standards.', 1, 6, 48, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 3, 10, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Design and implement scalable backend services and APIs.', 4, 7, 37, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 6, 21, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 13, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 11, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 4, 16, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 4, 23, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Develop modern front-end interfaces with high performance and usability.', 1, 4, 7, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Develop modern front-end interfaces with high performance and usability.', 1, 16, 33, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 3, 8, 13, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 15, 34, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Develop modern front-end interfaces with high performance and usability.', 4, 13, 64, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Write clean, testable, and maintainable code following coding standards.', 4, 6, 45, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Design and implement scalable backend services and APIs.', 1, 14, 29, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Design and implement scalable backend services and APIs.', 4, 13, 10, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Ensure system reliability, security, and scalability.', 1, 12, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 2, 24, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Write clean, testable, and maintainable code following coding standards.', 1, 11, 20, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Develop modern front-end interfaces with high performance and usability.', 4, 2, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 6, 35, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 14, 31, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Responsible for building and maintaining enterprise applications.', 3, 10, 63, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 8, 33, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Develop modern front-end interfaces with high performance and usability.', 4, 1, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 2, 12, 10, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 5, 3, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 12, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 14, 49, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Responsible for building and maintaining enterprise applications.', 2, 9, 31, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Responsible for building and maintaining enterprise applications.', 4, 8, 22, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 10, 29, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Responsible for building and maintaining enterprise applications.', 2, 16, 8, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Develop modern front-end interfaces with high performance and usability.', 2, 16, 17, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Develop modern front-end interfaces with high performance and usability.', 4, 10, 56, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 5, 20, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 8, 15, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Responsible for building and maintaining enterprise applications.', 4, 16, 8, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Work with cross‑functional teams to develop robust software solutions.', 2, 10, 32, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 11, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Develop modern front-end interfaces with high performance and usability.', 1, 13, 16, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Responsible for building and maintaining enterprise applications.', 4, 3, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Ensure system reliability, security, and scalability.', 3, 15, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 1, 57, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 1, 13, 11, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 13, 13, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Work with cross‑functional teams to develop robust software solutions.', 1, 5, 12, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Responsible for building and maintaining enterprise applications.', 2, 1, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 11, 39, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Develop modern front-end interfaces with high performance and usability.', 3, 1, 63, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Develop modern front-end interfaces with high performance and usability.', 3, 14, 57, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Ensure system reliability, security, and scalability.', 3, 2, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 2, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Develop modern front-end interfaces with high performance and usability.', 1, 2, 47, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 16, 9, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Ensure system reliability, security, and scalability.', 1, 16, 12, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 11, 31, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Develop modern front-end interfaces with high performance and usability.', 1, 3, 45, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 4, 9, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 15, 9, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 3, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 2, 9, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 16, 5, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Responsible for building and maintaining enterprise applications.', 1, 1, 9, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Design and implement scalable backend services and APIs.', 1, 9, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Design and implement scalable backend services and APIs.', 1, 14, 61, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Develop modern front-end interfaces with high performance and usability.', 2, 1, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Develop modern front-end interfaces with high performance and usability.', 2, 2, 10, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Design and implement scalable backend services and APIs.', 2, 5, 41, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Ensure system reliability, security, and scalability.', 3, 13, 39, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 15, 8, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Responsible for building and maintaining enterprise applications.', 4, 16, 18, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 11, 46, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Design and implement scalable backend services and APIs.', 3, 7, 62, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 10, 33, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Design and implement scalable backend services and APIs.', 1, 2, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Develop modern front-end interfaces with high performance and usability.', 1, 11, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 3, 23, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Create reusable components, optimize performance, and ensure clean architecture.', 3, 7, 20, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Responsible for building and maintaining enterprise applications.', 3, 1, 4, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 1, 15, 12, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Work with cross‑functional teams to develop robust software solutions.', 3, 12, 35, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Work with cross‑functional teams to develop robust software solutions.', 4, 9, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 16, 12, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 7, 61, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Develop modern front-end interfaces with high performance and usability.', 2, 12, 12, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 4, 16, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Responsible for building and maintaining enterprise applications.', 3, 4, 61, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Write clean, testable, and maintainable code following coding standards.', 4, 3, 18, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 9, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Ensure system reliability, security, and scalability.', 4, 6, 37, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 11, 56, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 5, 2, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 2, 15, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 5, 50, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 7, 18, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 13, 40, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Write clean, testable, and maintainable code following coding standards.', 2, 8, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 2, 14, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 15, 21, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Design and implement scalable backend services and APIs.', 2, 14, 25, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Develop modern front-end interfaces with high performance and usability.', 2, 11, 17, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Work with cross‑functional teams to develop robust software solutions.', 2, 12, 50, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Ensure system reliability, security, and scalability.', 3, 13, 46, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 1, 1, 30, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 1, 7, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Responsible for building and maintaining enterprise applications.', 3, 6, 17, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 16, 19, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Develop modern front-end interfaces with high performance and usability.', 3, 11, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Write clean, testable, and maintainable code following coding standards.', 1, 16, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 7, 2, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Design and implement scalable backend services and APIs.', 3, 14, 34, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 2, 19, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 1, 27, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Ensure system reliability, security, and scalability.', 4, 3, 49, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Write clean, testable, and maintainable code following coding standards.', 1, 16, 31, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 3, 2, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 13, 33, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Design and implement scalable backend services and APIs.', 3, 6, 37, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 14, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 4, 20, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 3, 12, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Design and implement scalable backend services and APIs.', 1, 2, 12, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Develop modern front-end interfaces with high performance and usability.', 2, 10, 24, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 4, 23, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Responsible for building and maintaining enterprise applications.', 3, 9, 46, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 1, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Ensure system reliability, security, and scalability.', 1, 4, 38, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Write clean, testable, and maintainable code following coding standards.', 4, 7, 23, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Responsible for building and maintaining enterprise applications.', 4, 3, 25, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Ensure system reliability, security, and scalability.', 1, 2, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Ensure system reliability, security, and scalability.', 2, 10, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 14, 44, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 1, 31, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Write clean, testable, and maintainable code following coding standards.', 4, 15, 7, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Develop modern front-end interfaces with high performance and usability.', 1, 10, 20, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 8, 40, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 13, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Responsible for building and maintaining enterprise applications.', 3, 13, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 14, 44, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Design and implement scalable backend services and APIs.', 4, 11, 10, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Responsible for building and maintaining enterprise applications.', 2, 5, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 3, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Write clean, testable, and maintainable code following coding standards.', 1, 6, 15, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 3, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Design and implement scalable backend services and APIs.', 3, 2, 51, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 10, 9, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Ensure system reliability, security, and scalability.', 3, 12, 22, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 1, 26, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Responsible for building and maintaining enterprise applications.', 1, 6, 62, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 11, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 10, 17, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Write clean, testable, and maintainable code following coding standards.', 1, 16, 12, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Design and implement scalable backend services and APIs.', 1, 15, 20, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 12, 18, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Ensure system reliability, security, and scalability.', 2, 4, 3, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Write clean, testable, and maintainable code following coding standards.', 3, 5, 2, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Write clean, testable, and maintainable code following coding standards.', 1, 16, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 4, 7, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Design and implement scalable backend services and APIs.', 4, 7, 46, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Responsible for building and maintaining enterprise applications.', 3, 3, 16, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Design and implement scalable backend services and APIs.', 2, 2, 38, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Develop modern front-end interfaces with high performance and usability.', 1, 15, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 4, 6, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 10, 36, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Ensure system reliability, security, and scalability.', 2, 2, 35, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Ensure system reliability, security, and scalability.', 2, 13, 27, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Work with cross‑functional teams to develop robust software solutions.', 3, 4, 14, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 8, 26, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 5, 20, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 2, 11, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Responsible for building and maintaining enterprise applications.', 3, 11, 32, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 3, 14, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 4, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 3, 40, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Responsible for building and maintaining enterprise applications.', 4, 3, 22, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 3, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Develop modern front-end interfaces with high performance and usability.', 3, 10, 38, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Design and implement scalable backend services and APIs.', 1, 4, 47, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Ensure system reliability, security, and scalability.', 4, 4, 11, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 10, 64, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Responsible for building and maintaining enterprise applications.', 1, 4, 63, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Design and implement scalable backend services and APIs.', 2, 3, 22, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Ensure system reliability, security, and scalability.', 1, 1, 53, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Write clean, testable, and maintainable code following coding standards.', 3, 9, 59, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 1, 2, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 12, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Design and implement scalable backend services and APIs.', 3, 14, 17, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Responsible for building and maintaining enterprise applications.', 4, 2, 7, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Ensure system reliability, security, and scalability.', 3, 12, 22, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Ensure system reliability, security, and scalability.', 4, 7, 17, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Write clean, testable, and maintainable code following coding standards.', 4, 2, 61, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Work with cross‑functional teams to develop robust software solutions.', 4, 8, 34, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 15, 30, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 1, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Ensure system reliability, security, and scalability.', 1, 7, 11, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Develop modern front-end interfaces with high performance and usability.', 4, 13, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 14, 21, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Develop modern front-end interfaces with high performance and usability.', 3, 6, 52, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Develop modern front-end interfaces with high performance and usability.', 3, 1, 5, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Responsible for building and maintaining enterprise applications.', 2, 12, 17, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Design and implement scalable backend services and APIs.', 3, 16, 52, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 5, 10, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Work with cross‑functional teams to develop robust software solutions.', 1, 3, 35, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 5, 31, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Responsible for building and maintaining enterprise applications.', 4, 11, 43, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Responsible for building and maintaining enterprise applications.', 3, 14, 24, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Develop modern front-end interfaces with high performance and usability.', 2, 3, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 14, 14, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Design and implement scalable backend services and APIs.', 1, 9, 32, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Responsible for building and maintaining enterprise applications.', 3, 11, 57, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 10, 4, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 13, 63, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 13, 1, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Design and implement scalable backend services and APIs.', 3, 10, 8, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 1, 6, 60, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Work with cross‑functional teams to develop robust software solutions.', 3, 15, 20, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 1, 62, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 12, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 11, 60, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Responsible for building and maintaining enterprise applications.', 3, 4, 17, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Ensure system reliability, security, and scalability.', 1, 12, 58, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 11, 58, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Develop modern front-end interfaces with high performance and usability.', 1, 12, 54, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 1, 26, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Design and implement scalable backend services and APIs.', 3, 5, 22, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Responsible for building and maintaining enterprise applications.', 1, 6, 18, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Design and implement scalable backend services and APIs.', 2, 4, 51, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 14, 11, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 1, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 8, 19, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Design and implement scalable backend services and APIs.', 4, 7, 51, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 3, 50, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Develop modern front-end interfaces with high performance and usability.', 1, 14, 33, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Design and implement scalable backend services and APIs.', 2, 14, 52, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 2, 19, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Write clean, testable, and maintainable code following coding standards.', 4, 3, 9, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Design and implement scalable backend services and APIs.', 2, 2, 16, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 3, 3, 34, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Develop modern front-end interfaces with high performance and usability.', 3, 10, 60, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 11, 56, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Work with cross‑functional teams to develop robust software solutions.', 1, 3, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 4, 10, 10, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Design and implement scalable backend services and APIs.', 1, 15, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 3, 64, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 5, 32, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Responsible for building and maintaining enterprise applications.', 3, 16, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 15, 24, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Write clean, testable, and maintainable code following coding standards.', 1, 2, 46, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Responsible for building and maintaining enterprise applications.', 3, 16, 37, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Write clean, testable, and maintainable code following coding standards.', 2, 10, 2, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 2, 7, 7, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Responsible for building and maintaining enterprise applications.', 1, 11, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Write clean, testable, and maintainable code following coding standards.', 3, 4, 46, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Ensure system reliability, security, and scalability.', 4, 15, 49, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 12, 47, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 6, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Ensure system reliability, security, and scalability.', 3, 5, 46, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Ensure system reliability, security, and scalability.', 4, 12, 4, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Develop modern front-end interfaces with high performance and usability.', 2, 2, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 11, 62, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 1, 8, 14, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 5, 33, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 14, 56, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Develop modern front-end interfaces with high performance and usability.', 4, 3, 40, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Responsible for building and maintaining enterprise applications.', 2, 14, 34, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 6, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Write clean, testable, and maintainable code following coding standards.', 3, 6, 29, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 11, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Responsible for building and maintaining enterprise applications.', 1, 3, 12, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 11, 54, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Write clean, testable, and maintainable code following coding standards.', 3, 2, 50, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Develop modern front-end interfaces with high performance and usability.', 1, 16, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 1, 3, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 10, 47, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Develop modern front-end interfaces with high performance and usability.', 2, 10, 50, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 6, 41, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Work with cross‑functional teams to develop robust software solutions.', 3, 5, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 15, 51, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 2, 37, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 3, 32, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Design and implement scalable backend services and APIs.', 1, 11, 64, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Responsible for building and maintaining enterprise applications.', 4, 1, 13, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Write clean, testable, and maintainable code following coding standards.', 1, 15, 14, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 16, 30, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Work with cross‑functional teams to develop robust software solutions.', 2, 15, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 16, 39, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Create reusable components, optimize performance, and ensure clean architecture.', 2, 10, 48, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 10, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Write clean, testable, and maintainable code following coding standards.', 4, 9, 55, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 9, 58, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Responsible for building and maintaining enterprise applications.', 1, 4, 8, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Design and implement scalable backend services and APIs.', 3, 16, 58, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 5, 1, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Create reusable components, optimize performance, and ensure clean architecture.', 3, 10, 43, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Ensure system reliability, security, and scalability.', 4, 3, 35, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 8, 19, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Ensure system reliability, security, and scalability.', 2, 11, 37, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 12, 63, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Create reusable components, optimize performance, and ensure clean architecture.', 3, 11, 24, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Maintain CI/CD pipelines and improve deployment workflows.', 2, 14, 34, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Responsible for building and maintaining enterprise applications.', 2, 6, 33, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Design and implement scalable backend services and APIs.', 3, 4, 48, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Responsible for building and maintaining enterprise applications.', 2, 3, 57, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Design and implement scalable backend services and APIs.', 3, 1, 22, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 11, 42, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 11, 29, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 13, 51, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Write clean, testable, and maintainable code following coding standards.', 1, 6, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Design and implement scalable backend services and APIs.', 4, 15, 64, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 4, 8, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 4, 2, 18, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 13, 56, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Ensure system reliability, security, and scalability.', 4, 9, 60, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Ensure system reliability, security, and scalability.', 4, 8, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 7, 29, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Ensure system reliability, security, and scalability.', 2, 11, 61, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Design and implement scalable backend services and APIs.', 4, 10, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 1, 43, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 14, 4, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Responsible for building and maintaining enterprise applications.', 2, 10, 45, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 11, 41, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Ensure system reliability, security, and scalability.', 3, 4, 53, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Responsible for building and maintaining enterprise applications.', 2, 16, 53, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Develop modern front-end interfaces with high performance and usability.', 3, 16, 60, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 14, 21, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Design and implement scalable backend services and APIs.', 1, 12, 14, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Responsible for building and maintaining enterprise applications.', 2, 10, 14, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 6, 13, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Responsible for building and maintaining enterprise applications.', 4, 9, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 16, 19, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Develop modern front-end interfaces with high performance and usability.', 4, 2, 13, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 11, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Responsible for building and maintaining enterprise applications.', 1, 15, 44, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Design and implement scalable backend services and APIs.', 1, 5, 57, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Develop modern front-end interfaces with high performance and usability.', 2, 4, 61, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Responsible for building and maintaining enterprise applications.', 2, 2, 35, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 15, 43, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Create reusable components, optimize performance, and ensure clean architecture.', 3, 3, 21, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Ensure system reliability, security, and scalability.', 3, 9, 50, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Create reusable components, optimize performance, and ensure clean architecture.', 1, 7, 56, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cloud Engineer (Azure)', 'Work with cross‑functional teams to develop robust software solutions.', 3, 5, 45, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Automation Test Engineer', 'Design and implement scalable backend services and APIs.', 2, 16, 58, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Ensure system reliability, security, and scalability.', 3, 14, 44, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 12, 59, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Responsible for building and maintaining enterprise applications.', 2, 11, 22, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Develop modern front-end interfaces with high performance and usability.', 2, 12, 47, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 10, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Write clean, testable, and maintainable code following coding standards.', 2, 16, 6, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Ensure system reliability, security, and scalability.', 3, 14, 5, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 6, 40, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 3, 19, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 9, 31, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 7, 26, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 1, 13, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 4, 6, 52, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Design and implement scalable backend services and APIs.', 4, 16, 54, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 2, 9, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 4, 8, 19, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Design and implement scalable backend services and APIs.', 1, 16, 6, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Develop modern front-end interfaces with high performance and usability.', 3, 5, 24, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 14, 15, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Write clean, testable, and maintainable code following coding standards.', 1, 9, 41, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Ensure system reliability, security, and scalability.', 2, 8, 32, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 4, 7, 14, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 16, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 2, 44, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Ensure system reliability, security, and scalability.', 2, 16, 17, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 5, 37, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 3, 8, 15, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Responsible for building and maintaining enterprise applications.', 2, 14, 35, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Design and implement scalable backend services and APIs.', 3, 7, 23, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 16, 45, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Write clean, testable, and maintainable code following coding standards.', 3, 11, 40, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 4, 10, 26, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Work with cross‑functional teams to develop robust software solutions.', 2, 7, 36, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Junior Software Developer', 'Responsible for building and maintaining enterprise applications.', 1, 2, 35, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Database Administrator', 'Write clean, testable, and maintainable code following coding standards.', 4, 14, 55, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Design and implement scalable backend services and APIs.', 2, 14, 56, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Design and implement scalable backend services and APIs.', 1, 15, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 15, 52, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 13, 37, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 1, 23, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 5, 1, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Write clean, testable, and maintainable code following coding standards.', 2, 5, 20, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 12, 39, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 2, 62, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Work with cross‑functional teams to develop robust software solutions.', 3, 16, 3, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 1, 11, 47, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 1, 43, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Develop modern front-end interfaces with high performance and usability.', 1, 3, 32, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Responsible for building and maintaining enterprise applications.', 4, 5, 16, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Business Analyst', 'Design and implement scalable backend services and APIs.', 2, 9, 6, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Quality Assurance Engineer', 'Troubleshoot production issues and participate in on‑call rotations.', 4, 5, 62, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 2, 38, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Frontend React Developer', 'Troubleshoot production issues and participate in on‑call rotations.', 3, 1, 2, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 8, 43, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Ensure system reliability, security, and scalability.', 2, 13, 43, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Write clean, testable, and maintainable code following coding standards.', 3, 1, 52, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 13, 56, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Develop modern front-end interfaces with high performance and usability.', 4, 12, 28, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('DevOps Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 1, 11, 6, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Collaborate with stakeholders to gather requirements and deliver quality products.', 2, 3, 30, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 13, 23, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Cybersecurity Analyst', 'Write clean, testable, and maintainable code following coding standards.', 2, 5, 28, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Mobile App Developer (Flutter)', 'Responsible for building and maintaining enterprise applications.', 4, 6, 46, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Troubleshoot production issues and participate in on‑call rotations.', 2, 2, 64, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Technical Support Specialist', 'Develop modern front-end interfaces with high performance and usability.', 1, 12, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Scrum Master', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 16, 35, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Write clean, testable, and maintainable code following coding standards.', 2, 9, 26, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Full Stack .NET Developer', 'Responsible for building and maintaining enterprise applications.', 3, 4, 51, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Backend API Engineer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 2, 4, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('System Administrator', 'Work with cross‑functional teams to develop robust software solutions.', 3, 15, 27, 1, 2, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Project Manager (IT)', 'Create reusable components, optimize performance, and ensure clean architecture.', 4, 3, 24, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Data Analyst', 'Develop modern front-end interfaces with high performance and usability.', 3, 8, 13, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('UI/UX Designer', 'Maintain CI/CD pipelines and improve deployment workflows.', 3, 1, 35, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Senior Software Engineer', 'Develop modern front-end interfaces with high performance and usability.', 1, 15, 26, 1, 3, GETDATE());

INSERT INTO tblVacancies (stTitle, stDescription, inCountryID, inStateID, inCityID, flgIsActive, inCreatedBy, dtCreatedAt)
VALUES ('Machine Learning Engineer', 'Responsible for building and maintaining enterprise applications.', 1, 11, 4, 1, 3, GETDATE());




-- Corrected Vacancy Demo Data

UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=1;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=2;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=52 WHERE inVacancyID=3;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=4;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=21 WHERE inVacancyID=5;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=6;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=7;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=58 WHERE inVacancyID=8;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=9;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=10;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=11;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=12;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=13;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=12 WHERE inVacancyID=14;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=15;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=16;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=17;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=18;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=19;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=20;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=21 WHERE inVacancyID=21;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=22;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=23;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=24;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=25;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=26;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=27;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=28;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=29;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=30;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=31;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=32;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=41 WHERE inVacancyID=33;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=34;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=35;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=36;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=37;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=38;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=39;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=40;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=8 WHERE inVacancyID=41;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=42;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=21 WHERE inVacancyID=43;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=54 WHERE inVacancyID=44;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=45;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=46;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=47;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=54 WHERE inVacancyID=48;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=49;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=50;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=51;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=52;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=53;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=54;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=55;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=34 WHERE inVacancyID=56;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=57;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=58;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=59;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=60;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=61;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=62;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=17 WHERE inVacancyID=63;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=64;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=65;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=66;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=67;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=68;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=41 WHERE inVacancyID=69;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=70;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=71;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=72;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=73;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=74;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=75;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=76;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=32 WHERE inVacancyID=77;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=36 WHERE inVacancyID=78;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=79;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=80;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=46 WHERE inVacancyID=81;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=82;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=83;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=84;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=85;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=86;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=87;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=88;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=89;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=90;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=34 WHERE inVacancyID=91;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=92;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=8 WHERE inVacancyID=93;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=94;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=95;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=40 WHERE inVacancyID=96;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=97;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=98;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=99;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=100;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=101;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=102;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=103;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=104;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=46 WHERE inVacancyID=105;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=106;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=107;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=108;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=109;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=110;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=111;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=112;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=113;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=114;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=115;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=116;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=117;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=58 WHERE inVacancyID=118;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=119;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=120;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=4 WHERE inVacancyID=121;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=44 WHERE inVacancyID=122;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=123;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=124;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=125;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=32 WHERE inVacancyID=126;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=127;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=128;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=129;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=45 WHERE inVacancyID=130;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=131;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=132;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=133;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=134;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=135;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=136;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=46 WHERE inVacancyID=137;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=35 WHERE inVacancyID=138;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=8 WHERE inVacancyID=139;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=140;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=141;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=142;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=143;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=144;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=145;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=146;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=147;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=40 WHERE inVacancyID=148;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=149;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=11 WHERE inVacancyID=150;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=151;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=152;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=153;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=154;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=155;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=156;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=157;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=158;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=159;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=17 WHERE inVacancyID=160;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=161;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=162;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=21 WHERE inVacancyID=163;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=164;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=165;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=40 WHERE inVacancyID=166;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=167;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=168;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=169;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=4 WHERE inVacancyID=170;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=171;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=172;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=58 WHERE inVacancyID=173;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=174;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=41 WHERE inVacancyID=175;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=176;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=177;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=178;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=179;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=20 WHERE inVacancyID=180;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=181;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=182;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=183;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=184;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=185;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=186;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=187;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=40 WHERE inVacancyID=188;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=189;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=190;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=191;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=58 WHERE inVacancyID=192;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=193;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=194;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=195;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=196;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=197;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=198;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=199;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=200;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=201;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=202;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=203;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=204;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=52 WHERE inVacancyID=205;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=206;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=207;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=208;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=209;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=210;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=211;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=212;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=36 WHERE inVacancyID=213;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=214;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=215;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=216;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=217;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=218;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=219;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=52 WHERE inVacancyID=220;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=221;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=222;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=54 WHERE inVacancyID=223;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=224;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=46 WHERE inVacancyID=225;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=2 WHERE inVacancyID=226;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=227;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=228;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=229;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=32 WHERE inVacancyID=230;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=231;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=232;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=233;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=4 WHERE inVacancyID=234;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=235;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=236;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=20 WHERE inVacancyID=237;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=238;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=239;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=240;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=241;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=242;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=2 WHERE inVacancyID=243;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=41 WHERE inVacancyID=244;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=245;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=40 WHERE inVacancyID=246;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=247;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=248;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=249;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=250;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=251;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=252;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=253;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=58 WHERE inVacancyID=254;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=255;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=7 WHERE inVacancyID=256;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=257;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=258;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=259;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=260;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=261;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=262;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=263;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=264;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=265;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=45 WHERE inVacancyID=266;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=267;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=268;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=269;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=270;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=271;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=272;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=273;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=274;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=275;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=12 WHERE inVacancyID=276;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=35 WHERE inVacancyID=277;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=278;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=279;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=280;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=281;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=282;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=283;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=284;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=285;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=286;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=34 WHERE inVacancyID=287;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=288;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=7 WHERE inVacancyID=289;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=290;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=291;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=292;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=293;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=294;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=29 WHERE inVacancyID=295;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=296;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=54 WHERE inVacancyID=297;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=7 WHERE inVacancyID=298;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=299;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=300;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=17 WHERE inVacancyID=301;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=302;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=4 WHERE inVacancyID=303;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=304;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=305;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=34 WHERE inVacancyID=306;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=307;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=308;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=309;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=40 WHERE inVacancyID=310;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=311;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=17 WHERE inVacancyID=312;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=313;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=314;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=32 WHERE inVacancyID=315;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=12 WHERE inVacancyID=316;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=317;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=318;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=13 WHERE inVacancyID=319;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=320;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=321;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=11 WHERE inVacancyID=322;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=11 WHERE inVacancyID=323;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=324;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=20 WHERE inVacancyID=325;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=326;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=327;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=328;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=329;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=330;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=34 WHERE inVacancyID=331;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=332;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=333;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=334;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=34 WHERE inVacancyID=335;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=336;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=337;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=338;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=12 WHERE inVacancyID=339;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=340;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=17 WHERE inVacancyID=341;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=342;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=343;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=7 WHERE inVacancyID=344;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=345;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=24 WHERE inVacancyID=346;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=52 WHERE inVacancyID=347;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=348;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=349;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=350;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=351;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=352;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=353;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=354;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=355;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=35 WHERE inVacancyID=356;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=357;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=358;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=359;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=360;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=361;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=362;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=363;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=364;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=365;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=20 WHERE inVacancyID=366;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=33 WHERE inVacancyID=367;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=26 WHERE inVacancyID=368;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=369;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=370;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=371;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=372;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=373;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=374;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=375;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=376;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=2 WHERE inVacancyID=377;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=7 WHERE inVacancyID=378;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=379;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=380;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=381;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=382;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=383;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=384;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=385;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=386;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=387;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=388;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=45 WHERE inVacancyID=389;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=390;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=391;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=392;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=393;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=394;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=395;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=52 WHERE inVacancyID=396;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=397;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=62 WHERE inVacancyID=398;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=45 WHERE inVacancyID=399;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=400;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=401;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=402;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=403;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=60 WHERE inVacancyID=404;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=405;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=406;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=32 WHERE inVacancyID=407;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=408;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=409;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=410;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=50 WHERE inVacancyID=411;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=412;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=413;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=414;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=415;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=56 WHERE inVacancyID=416;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=17 WHERE inVacancyID=417;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=36 WHERE inVacancyID=418;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=48 WHERE inVacancyID=419;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=420;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=59 WHERE inVacancyID=421;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=422;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=47 WHERE inVacancyID=423;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=424;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=41 WHERE inVacancyID=425;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=36 WHERE inVacancyID=426;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=36 WHERE inVacancyID=427;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=27 WHERE inVacancyID=428;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=4 WHERE inVacancyID=429;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=6 WHERE inVacancyID=430;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=21 WHERE inVacancyID=431;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=61 WHERE inVacancyID=432;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=433;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=15 WHERE inVacancyID=434;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=435;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=436;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=437;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=8 WHERE inVacancyID=438;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=51 WHERE inVacancyID=439;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=37 WHERE inVacancyID=440;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=10 WHERE inVacancyID=441;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=442;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=18 WHERE inVacancyID=443;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=444;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=12 WHERE inVacancyID=445;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=446;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=41 WHERE inVacancyID=447;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=11 WHERE inVacancyID=448;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=52 WHERE inVacancyID=449;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=45 WHERE inVacancyID=450;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=451;
UPDATE tblVacancies SET inCountryID=3, inStateID=9, inCityID=36 WHERE inVacancyID=452;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=453;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=55 WHERE inVacancyID=454;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=455;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=2 WHERE inVacancyID=456;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=457;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=58 WHERE inVacancyID=458;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=30 WHERE inVacancyID=459;
UPDATE tblVacancies SET inCountryID=2, inStateID=5, inCityID=19 WHERE inVacancyID=460;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=63 WHERE inVacancyID=461;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=11 WHERE inVacancyID=462;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=22 WHERE inVacancyID=463;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=464;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=44 WHERE inVacancyID=465;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=44 WHERE inVacancyID=466;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=467;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=468;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=469;
UPDATE tblVacancies SET inCountryID=1, inStateID=3, inCityID=9 WHERE inVacancyID=470;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=16 WHERE inVacancyID=471;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=472;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=31 WHERE inVacancyID=473;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=42 WHERE inVacancyID=474;
UPDATE tblVacancies SET inCountryID=4, inStateID=15, inCityID=57 WHERE inVacancyID=475;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=28 WHERE inVacancyID=476;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=3 WHERE inVacancyID=477;
UPDATE tblVacancies SET inCountryID=2, inStateID=7, inCityID=25 WHERE inVacancyID=478;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=479;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=4 WHERE inVacancyID=480;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=46 WHERE inVacancyID=481;
UPDATE tblVacancies SET inCountryID=1, inStateID=1, inCityID=1 WHERE inVacancyID=482;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=483;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=43 WHERE inVacancyID=484;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=485;
UPDATE tblVacancies SET inCountryID=4, inStateID=14, inCityID=53 WHERE inVacancyID=486;
UPDATE tblVacancies SET inCountryID=2, inStateID=8, inCityID=32 WHERE inVacancyID=487;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=38 WHERE inVacancyID=488;
UPDATE tblVacancies SET inCountryID=3, inStateID=11, inCityID=44 WHERE inVacancyID=489;
UPDATE tblVacancies SET inCountryID=3, inStateID=10, inCityID=39 WHERE inVacancyID=490;
UPDATE tblVacancies SET inCountryID=3, inStateID=12, inCityID=46 WHERE inVacancyID=491;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=5 WHERE inVacancyID=492;
UPDATE tblVacancies SET inCountryID=4, inStateID=16, inCityID=64 WHERE inVacancyID=493;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=494;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=21 WHERE inVacancyID=495;
UPDATE tblVacancies SET inCountryID=1, inStateID=4, inCityID=14 WHERE inVacancyID=496;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=497;
UPDATE tblVacancies SET inCountryID=2, inStateID=6, inCityID=23 WHERE inVacancyID=498;
UPDATE tblVacancies SET inCountryID=4, inStateID=13, inCityID=49 WHERE inVacancyID=499;
UPDATE tblVacancies SET inCountryID=1, inStateID=2, inCityID=7 WHERE inVacancyID=500;
