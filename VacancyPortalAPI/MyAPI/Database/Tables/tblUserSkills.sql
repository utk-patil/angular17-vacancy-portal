CREATE TABLE tblUserSkills
(
    inUserSkillID INT IDENTITY(1,1) PRIMARY KEY,
    inUserID INT NOT NULL,
    inSkillID INT NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

-- Auto-generated User Skills Mapping

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (1, 1, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (1, 5, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (1, 10, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (2, 10, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (2, 7, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (2, 6, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (2, 9, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (2, 5, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (3, 9, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (3, 3, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (3, 2, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (3, 1, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (4, 10, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (4, 2, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (4, 7, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (4, 4, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (5, 7, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (5, 10, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (5, 9, GETDATE());

INSERT INTO tblUserSkills (inUserID, inSkillID, dtCreatedAt)
VALUES (5, 6, GETDATE());

