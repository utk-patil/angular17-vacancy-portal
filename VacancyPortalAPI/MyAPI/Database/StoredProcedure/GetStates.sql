-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 30 Nov 2025
-- Description: Get list of states by country ID
-- EXEC GetStates @inCountryID = 2
-- =================================================================

CREATE PROCEDURE GetStates
(
    @inCountryID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT S.inStateID, S.stName
    FROM tblStates AS S
    WHERE S.inCountryID = @inCountryID
    ORDER BY S.stName ASC;

END
