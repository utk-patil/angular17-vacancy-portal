-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 02 Dec 2025
-- Description: Validate login credentials
-- EXEC GetLogin 'sophia.williams', 'Candidate@123', 0
-- =================================================================
CREATE PROCEDURE GetUserLogin
(
    @stUsername     NVARCHAR(200),
    @stPassword     NVARCHAR(500),
    @inSuccess      INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @inUserID INT;
    DECLARE @stPass NVARCHAR(500);

    SELECT 
        @inUserID = U.inUserID,
        @stPass = U.stPassword
    FROM tblUsers AS U
    WHERE U.stUsername = @stUsername;

    IF (@inUserID IS NULL)
    BEGIN
        SET @inSuccess = 104;

        SELECT 
            0 AS inUserID,
            '' AS stName,
            '' AS stUsername,
            '' AS stEmail,
            0 AS inRoleID,
            '' AS stRoleName;

        RETURN;
    END

    IF (@stPass <> @stPassword)
    BEGIN
        SET @inSuccess = 107;

       SELECT 
            0 AS inUserID,
            '' AS stName,
            '' AS stUsername,
            '' AS stEmail,
            0 AS inRoleID,
            '' AS stRoleName;

        RETURN;
    END

    SET @inSuccess = 1;

    SELECT 
        U.inUserID,
        (U.stFirstName + ' ' + U.stLastName) AS stName,
        U.stUsername,
        U.stEmail,
        R.inRoleID,
        R.stName AS stRoleName
    FROM tblUsers AS U
    INNER JOIN tblUserRoles AS UR ON U.inUserID = UR.inUserID
    INNER JOIN tblRoles AS R ON UR.inRoleID = R.inRoleID
    WHERE U.inUserID = @inUserID;

END
