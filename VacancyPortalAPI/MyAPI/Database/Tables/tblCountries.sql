CREATE TABLE tblCountries
(
    inCountryID INT IDENTITY(1,1) PRIMARY KEY,
    stName NVARCHAR(200) NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

INSERT INTO tblCountries (stName)
VALUES
    ('United States'),
    ('India'),
    ('Canada'),
    ('Australia');
