-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 30 Nov 2025
-- Description: Get list of all countries
-- EXEC GetCountries
-- =================================================================

CREATE PROCEDURE GetCountries
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        C.inCountryID, C.stName
    FROM tblCountries AS C
    ORDER BY C.stName ASC;
END
