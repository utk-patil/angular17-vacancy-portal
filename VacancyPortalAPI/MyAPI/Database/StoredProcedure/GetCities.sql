-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 30 Nov 2025
-- Description: Get list of cities by state ID
-- EXEC GetCities @inStateID = 5
-- =================================================================

CREATE PROCEDURE GetCities
(
    @inStateID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        C.inCityID, C.stName
    FROM tblCities AS C
    WHERE C.inStateID = @inStateID
    ORDER BY C.stName ASC;

END
