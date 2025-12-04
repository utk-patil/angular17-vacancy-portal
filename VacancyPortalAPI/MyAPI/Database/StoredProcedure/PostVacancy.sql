-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 05 Dec 2025
-- Description: Insert or update vacancy details
-- EXEC PostVacancy NULL, 'Title', 'Desc', 1, 1, 1, 1, 5, @inSuccess OUTPUT
-- =================================================================
CREATE PROCEDURE PostVacancy
(
    @inVacancyID INT,
    @stTitle NVARCHAR(300),
    @stDescription NVARCHAR(MAX),
    @inCountryID INT,
    @inStateID INT,
    @inCityID INT,
    @flgIsActive BIT,
    @inUserID INT,
    @inSuccess INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @inSuccess = 0;

    IF (ISNULL(@inVacancyID, 0) = 0)
    BEGIN
        INSERT INTO tblVacancies
        (
            stTitle,
            stDescription,
            inCountryID,
            inStateID,
            inCityID,
            flgIsActive,
            inCreatedBy,
            dtCreatedAt
        )
        VALUES
        (
            @stTitle,
            @stDescription,
            @inCountryID,
            @inStateID,
            @inCityID,
            @flgIsActive,
            @inUserID,
            GETDATE()
        );

        IF (@@ROWCOUNT > 0)
            SET @inSuccess = 101;

        RETURN;
    END

    UPDATE tblVacancies
    SET 
        stTitle       = @stTitle,
        stDescription = @stDescription,
        inCountryID   = @inCountryID,
        inStateID     = @inStateID,
        inCityID      = @inCityID,
        flgIsActive   = @flgIsActive,
        inModifiedBy  = @inUserID,
        dtModifiedAt  = GETDATE()
    WHERE 
        inVacancyID = @inVacancyID;

    IF (@@ROWCOUNT > 0)
        SET @inSuccess = 102;

END
