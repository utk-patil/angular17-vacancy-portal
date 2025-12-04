CREATE TABLE tblUsers
(
    inUserID INT IDENTITY(1,1) PRIMARY KEY,
    stFirstName NVARCHAR(200) NOT NULL,
    stLastName NVARCHAR(200) NOT NULL,
    stUsername NVARCHAR(200) NOT NULL,
    stPassword NVARCHAR(500) NOT NULL,
    stEmail NVARCHAR(200) NOT NULL,
    stResumeLink NVARCHAR(500) NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);


INSERT INTO tblUsers 
(stFirstName, stLastName, stUsername, stPassword, stEmail, stResumeLink)
VALUES
-- Admin
('James', 'Morgan', 'james.morgan', 'Admin@123', 'james.morgan@example.com', 'resume/1_James_Morgan.pdf'),

-- Recruiters
('Oliver', 'Hughes', 'oliver.hughes', 'Recruiter@123', 'oliver.hughes@example.com', 'resume/2_Oliver_Hughes.pdf'),
('Emma', 'Thompson', 'emma.thompson', 'Recruiter@123', 'emma.thompson@example.com', 'resume/3_Emma_Thompson.pdf'),

-- Candidates
('Liam', 'Anderson', 'liam.anderson', 'Candidate@123', 'liam.anderson@example.com', 'resume/4_Liam_Anderson.pdf'),
('Sophia', 'Williams', 'sophia.williams', 'Candidate@123', 'sophia.williams@example.com', 'resume/5_Sophia_Williams.pdf');

