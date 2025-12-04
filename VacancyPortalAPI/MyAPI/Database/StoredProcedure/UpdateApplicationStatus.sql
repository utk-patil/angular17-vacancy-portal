-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 05 Dec 2025
-- Description: Update job application status
-- EXEC UpdateApplicationStatus 2002, 3, 5, @inSuccess OUTPUT
-- =================================================================
CREATE PROCEDURE UpdateApplicationStatus
(
    @inApplicationID INT,
    @inStatus INT,
    @inUserID INT,
    @inSuccess INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @inSuccess = 0;

    UPDATE tblApplications
    SET 
        inStatus = @inStatus,
        inModifiedBy = @inUserID,
        dtModifiedAt = GETDATE()
    WHERE 
        inApplicationID = @inApplicationID;

    IF (@@ROWCOUNT > 0)
        SET @inSuccess = 102;
END
