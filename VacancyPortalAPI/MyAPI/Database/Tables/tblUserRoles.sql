CREATE TABLE tblUserRoles
(
    inUserRoleID INT IDENTITY(1,1) PRIMARY KEY,
    inUserID INT NOT NULL,
    inRoleID INT NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

INSERT INTO tblUserRoles (inUserID, inRoleID)
VALUES
(1, 1), -- James (Admin)

(2, 2), -- Oliver (Recruiter)
(3, 2), -- Emma (Recruiter)

(4, 3), -- Liam (Candidate)
(5, 3); -- Sophia (Candidate)
