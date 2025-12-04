CREATE TABLE tblSkills
(
    inSkillID INT IDENTITY(1,1) PRIMARY KEY,
    stName NVARCHAR(200) NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

INSERT INTO tblSkills (stName)
VALUES
    ('C#'),
    ('ASP.NET Core'),
    ('SQL Server'),
    ('JavaScript'),
    ('Angular'),
    ('React'),
    ('Node.js'),
    ('Flutter'),
    ('Azure'),
    ('DevOps');
