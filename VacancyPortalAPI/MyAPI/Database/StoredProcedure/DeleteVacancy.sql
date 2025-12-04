-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 05 Dec 2025
-- Description: Delete Vacancy
-- EXEC DeleteVacancy 10, @inSuccess OUTPUT
-- =================================================================
CREATE PROCEDURE DeleteVacancy
(
    @inVacancyID INT,
    @inSuccess INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET @inSuccess = 0;

    DELETE FROM tblVacancies
    WHERE inVacancyID = @inVacancyID;

    IF (@@ROWCOUNT > 0)
        SET @inSuccess = 103;
END
