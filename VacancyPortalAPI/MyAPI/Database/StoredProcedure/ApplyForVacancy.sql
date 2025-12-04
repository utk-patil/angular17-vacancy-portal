-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 02 Dec 2025
-- Description: Apply for a vacancy 
-- EXEC ApplyForVacancy 10, 5, @inSuccess OUTPUT
-- =================================================================
CREATE PROCEDURE ApplyForVacancy
(
    @inVacancyID	INT,
    @inUserID		INT,
    @inSuccess		INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @inSuccess = 0;

    IF EXISTS
    (
        SELECT 1
        FROM tblApplications
        WHERE inVacancyID = @inVacancyID
          AND inUserID = @inUserID
          AND inStatus <> 5
    )
    BEGIN
        SET @inSuccess = 105;
        RETURN;
    END;

    INSERT INTO tblApplications
    (
        inVacancyID,
        inUserID,
        inStatus,
        inCreatedBy,
        dtCreatedAt
    )
    VALUES
    (
        @inVacancyID,
        @inUserID,
        0, 
        @inUserID, 
        GETDATE()
    );

    IF (@@ROWCOUNT > 0)
        SET @inSuccess = 101;

END;
GO
