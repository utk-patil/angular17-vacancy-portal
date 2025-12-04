CREATE TABLE tblCities
(
    inCityID INT IDENTITY(1,1) PRIMARY KEY,
    inStateID INT NOT NULL,
    stName NVARCHAR(200) NOT NULL,
    dtCreatedAt DATETIME NOT NULL DEFAULT(GETDATE())
);

-- =========================
--  USA (StateID 1–4)
-- =========================

-- California (1)
INSERT INTO tblCities (inStateID, stName) VALUES
(1, 'Los Angeles'),
(1, 'San Francisco'),
(1, 'San Diego'),
(1, 'Sacramento');

-- Texas (2)
INSERT INTO tblCities (inStateID, stName) VALUES
(2, 'Houston'),
(2, 'Dallas'),
(2, 'Austin'),
(2, 'San Antonio');

-- New York (3)
INSERT INTO tblCities (inStateID, stName) VALUES
(3, 'New York City'),
(3, 'Buffalo'),
(3, 'Rochester'),
(3, 'Albany');

-- Florida (4)
INSERT INTO tblCities (inStateID, stName) VALUES
(4, 'Miami'),
(4, 'Tampa'),
(4, 'Orlando'),
(4, 'Jacksonville');


-- =========================
--  India (StateID 5–8)
-- =========================

-- Gujarat (5)
INSERT INTO tblCities (inStateID, stName) VALUES
(5, 'Surat'),
(5, 'Ahmedabad'),
(5, 'Vadodara'),
(5, 'Rajkot');

-- Maharashtra (6)
INSERT INTO tblCities (inStateID, stName) VALUES
(6, 'Mumbai'),
(6, 'Pune'),
(6, 'Nagpur'),
(6, 'Nashik');

-- Rajasthan (7)
INSERT INTO tblCities (inStateID, stName) VALUES
(7, 'Jaipur'),
(7, 'Udaipur'),
(7, 'Jodhpur'),
(7, 'Kota');

-- Punjab (8)
INSERT INTO tblCities (inStateID, stName) VALUES
(8, 'Amritsar'),
(8, 'Ludhiana'),
(8, 'Jalandhar'),
(8, 'Patiala');


-- =========================
--  Canada (StateID 9–12)
-- =========================

-- Ontario (9)
INSERT INTO tblCities (inStateID, stName) VALUES
(9, 'Toronto'),
(9, 'Ottawa'),
(9, 'Hamilton'),
(9, 'London');

-- Quebec (10)
INSERT INTO tblCities (inStateID, stName) VALUES
(10, 'Montreal'),
(10, 'Quebec City'),
(10, 'Laval'),
(10, 'Gatineau');

-- British Columbia (11)
INSERT INTO tblCities (inStateID, stName) VALUES
(11, 'Vancouver'),
(11, 'Victoria'),
(11, 'Surrey'),
(11, 'Burnaby');

-- Alberta (12)
INSERT INTO tblCities (inStateID, stName) VALUES
(12, 'Calgary'),
(12, 'Edmonton'),
(12, 'Red Deer'),
(12, 'Lethbridge');


-- =========================
--  Australia (StateID 13–16)
-- =========================

-- New South Wales (13)
INSERT INTO tblCities (inStateID, stName) VALUES
(13, 'Sydney'),
(13, 'Newcastle'),
(13, 'Wollongong'),
(13, 'Parramatta');

-- Victoria (14)
INSERT INTO tblCities (inStateID, stName) VALUES
(14, 'Melbourne'),
(14, 'Geelong'),
(14, 'Ballarat'),
(14, 'Bendigo');

-- Queensland (15)
INSERT INTO tblCities (inStateID, stName) VALUES
(15, 'Brisbane'),
(15, 'Gold Coast'),
(15, 'Cairns'),
(15, 'Townsville');

-- Western Australia (16)
INSERT INTO tblCities (inStateID, stName) VALUES
(16, 'Perth'),
(16, 'Fremantle'),
(16, 'Bunbury'),
(16, 'Albany');
