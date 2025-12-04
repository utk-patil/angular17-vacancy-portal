CREATE TABLE tblStates
(
    inStateID INT IDENTITY(1,1) PRIMARY KEY,
    inCountryID INT NOT NULL,
    stName NVARCHAR(200) NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

-- USA (CountryID = 1)
INSERT INTO tblStates (inCountryID, stName) VALUES
(1, 'California'),
(1, 'Texas'),
(1, 'New York'),
(1, 'Florida');

-- India (CountryID = 2)
INSERT INTO tblStates (inCountryID, stName) VALUES
(2, 'Gujarat'),
(2, 'Maharashtra'),
(2, 'Rajasthan'),
(2, 'Punjab');

-- Canada (CountryID = 3)
INSERT INTO tblStates (inCountryID, stName) VALUES
(3, 'Ontario'),
(3, 'Quebec'),
(3, 'British Columbia'),
(3, 'Alberta');

-- Australia (CountryID = 4)
INSERT INTO tblStates (inCountryID, stName) VALUES
(4, 'New South Wales'),
(4, 'Victoria'),
(4, 'Queensland'),
(4, 'Western Australia');
