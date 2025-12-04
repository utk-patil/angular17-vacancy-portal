CREATE TABLE tblApplications
(
    inApplicationID INT IDENTITY(1,1) PRIMARY KEY,
    inVacancyID INT NOT NULL,
    inUserID INT NOT NULL,
    inStatus INT NOT NULL DEFAULT(0),
    inCreatedBy INT NOT NULL,
    inModifiedBy INT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE()),
    dtModifiedAt DATETIME NULL
);

-- =======================================================================
-- STATUS 0: APPLIED (10 Applications)
-- =======================================================================
INSERT INTO tblApplications (inVacancyID, inUserID, inStatus, inCreatedBy, dtCreatedAt)
VALUES
(1, 4, 0, 4, GETDATE()),
(2, 4, 0, 4, GETDATE()),
(3, 5, 0, 5, GETDATE()),
(4, 5, 0, 5, GETDATE()),
(5, 4, 0, 4, GETDATE()),
(6, 5, 0, 5, GETDATE()),
(7, 4, 0, 4, GETDATE()),
(8, 5, 0, 5, GETDATE()),
(9, 4, 0, 4, GETDATE()),
(10, 5, 0, 5, GETDATE());

-- =======================================================================
-- STATUS 1: REVIEWED (10 Applications)
-- =======================================================================
INSERT INTO tblApplications (inVacancyID, inUserID, inStatus, inCreatedBy, inModifiedBy, dtCreatedAt, dtModifiedAt)
VALUES
(11, 4, 1, 4, 2, GETDATE(), GETDATE()),
(12, 5, 1, 5, 2, GETDATE(), GETDATE()),
(13, 4, 1, 4, 3, GETDATE(), GETDATE()),
(14, 5, 1, 5, 3, GETDATE(), GETDATE()),
(15, 4, 1, 4, 2, GETDATE(), GETDATE()),
(16, 5, 1, 5, 2, GETDATE(), GETDATE()),
(17, 4, 1, 4, 3, GETDATE(), GETDATE()),
(18, 5, 1, 5, 3, GETDATE(), GETDATE()),
(19, 4, 1, 4, 2, GETDATE(), GETDATE()),
(20, 5, 1, 5, 3, GETDATE(), GETDATE());

-- =======================================================================
-- STATUS 2: SHORTLISTED (10 Applications)
-- =======================================================================
INSERT INTO tblApplications (inVacancyID, inUserID, inStatus, inCreatedBy, inModifiedBy, dtCreatedAt, dtModifiedAt)
VALUES
(21, 4, 2, 4, 2, GETDATE(), GETDATE()),
(22, 5, 2, 5, 2, GETDATE(), GETDATE()),
(23, 4, 2, 4, 3, GETDATE(), GETDATE()),
(24, 5, 2, 5, 3, GETDATE(), GETDATE()),
(25, 4, 2, 4, 2, GETDATE(), GETDATE()),
(26, 5, 2, 5, 3, GETDATE(), GETDATE()),
(27, 4, 2, 4, 3, GETDATE(), GETDATE()),
(28, 5, 2, 5, 2, GETDATE(), GETDATE()),
(29, 4, 2, 4, 3, GETDATE(), GETDATE()),
(30, 5, 2, 5, 2, GETDATE(), GETDATE());

-- =======================================================================
-- STATUS 3: REJECTED (10 Applications)
-- =======================================================================
INSERT INTO tblApplications (inVacancyID, inUserID, inStatus, inCreatedBy, inModifiedBy, dtCreatedAt, dtModifiedAt)
VALUES
(31, 4, 3, 4, 2, GETDATE(), GETDATE()),
(32, 5, 3, 5, 2, GETDATE(), GETDATE()),
(33, 4, 3, 4, 3, GETDATE(), GETDATE()),
(34, 5, 3, 5, 3, GETDATE(), GETDATE()),
(35, 4, 3, 4, 2, GETDATE(), GETDATE()),
(36, 5, 3, 5, 3, GETDATE(), GETDATE()),
(37, 4, 3, 4, 2, GETDATE(), GETDATE()),
(38, 5, 3, 5, 2, GETDATE(), GETDATE()),
(39, 4, 3, 4, 3, GETDATE(), GETDATE()),
(40, 5, 3, 5, 2, GETDATE(), GETDATE());

-- =======================================================================
-- STATUS 4: SELECTED (10 Applications)
-- =======================================================================
INSERT INTO tblApplications (inVacancyID, inUserID, inStatus, inCreatedBy, inModifiedBy, dtCreatedAt, dtModifiedAt)
VALUES
(41, 4, 4, 4, 2, GETDATE(), GETDATE()),
(42, 5, 4, 5, 2, GETDATE(), GETDATE()),
(43, 4, 4, 4, 3, GETDATE(), GETDATE()),
(44, 5, 4, 5, 3, GETDATE(), GETDATE()),
(45, 4, 4, 4, 2, GETDATE(), GETDATE()),
(46, 5, 4, 5, 3, GETDATE(), GETDATE()),
(47, 4, 4, 4, 2, GETDATE(), GETDATE()),
(48, 5, 4, 5, 3, GETDATE(), GETDATE()),
(49, 4, 4, 4, 2, GETDATE(), GETDATE()),
(50, 5, 4, 5, 3, GETDATE(), GETDATE());

-- =======================================================================
-- STATUS 5: HIRED (10 Applications)
-- =======================================================================
INSERT INTO tblApplications (inVacancyID, inUserID, inStatus, inCreatedBy, inModifiedBy, dtCreatedAt, dtModifiedAt)
VALUES
(51, 4, 5, 4, 2, GETDATE(), GETDATE()),
(52, 5, 5, 5, 2, GETDATE(), GETDATE()),
(53, 4, 5, 4, 3, GETDATE(), GETDATE()),
(54, 5, 5, 5, 3, GETDATE(), GETDATE()),
(55, 4, 5, 4, 2, GETDATE(), GETDATE()),
(56, 5, 5, 5, 3, GETDATE(), GETDATE()),
(57, 4, 5, 4, 2, GETDATE(), GETDATE()),
(58, 5, 5, 5, 3, GETDATE(), GETDATE()),
(59, 4, 5, 4, 2, GETDATE(), GETDATE()),
(60, 5, 5, 5, 3, GETDATE(), GETDATE());

