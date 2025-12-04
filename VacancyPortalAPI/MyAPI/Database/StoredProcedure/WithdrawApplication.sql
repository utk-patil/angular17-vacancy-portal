-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 02 Dec 2025
-- Description: Withdraw candidate's job application
-- EXEC WithdrawApplication 10, 5
-- =================================================================

CREATE PROCEDURE WithdrawApplication
(
    @inApplicationID INT,
    @inUserID INT,
	@inSuccess INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

	SET @inSuccess = 0;

    UPDATE tblApplications
    SET 
        inStatus = 5,         
        dtModifiedAt = GETDATE(),
        inModifiedBy = @inUserID
    WHERE 
        inApplicationID = @inApplicationID
        AND inUserID = @inUserID
        AND inStatus IN (0, 1);

    IF (@@ROWCOUNT > 0)
        SET @inSuccess = 1

END
