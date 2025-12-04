CREATE TABLE tblRoles
(
    inRoleID INT IDENTITY(1,1) PRIMARY KEY,
    stName NVARCHAR(200) NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

INSERT INTO tblRoles (stName)
VALUES ('Admin'), ('Recruiter'), ('Candidate');
