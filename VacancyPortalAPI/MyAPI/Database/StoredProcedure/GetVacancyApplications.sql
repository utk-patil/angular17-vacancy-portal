-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 06 Dec 2025
-- Description: Get all applications for a vacancy created by recruiter
-- EXEC GetVacancyApplications 12, 5, NULL, NULL, 1, 10
-- =================================================================

CREATE PROCEDURE [dbo].[GetVacancyApplications]
(
    @inVacancyID    INT,
    @inUserID       INT,
    @stSearch       NVARCHAR(200),
    @inStatus       INT,
    @inPageNumber   INT = 1,
    @inPageSize     INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Offset INT;

    SET @Offset = (@inPageNumber - 1) * @inPageSize;

    SET @SQL = ';WITH PAGED AS
                (
                    SELECT CAST(ROW_NUMBER() OVER (ORDER BY A.inApplicationID DESC) AS BIGINT) AS inRowNumber,
                           CAST(COUNT(1) OVER() AS BIGINT) AS inTotalRecord,
                           V.inVacancyID, V.stTitle, V.stDescription,
                           A.inApplicationID,
                           V.inCountryID,  C.stName AS stCountryName,
                           V.inStateID,    S.stName AS stStateName,
                           V.inCityID,     CI.stName AS stCityName,
                           V.flgIsActive,
                           A.inCreatedBy,  (UC.stFirstName + '' '' + UC.stLastName) AS stCreatedBy,
                           A.inModifiedBy, (UM.stFirstName + '' '' + UM.stLastName) AS stModifiedBy,
                           V.dtCreatedAt,  V.dtModifiedAt,
                           A.inStatus,
                           CASE A.inStatus
                                WHEN 0 THEN ''Submitted''
                                WHEN 1 THEN ''Reviewed''
                                WHEN 2 THEN ''Shortlisted''
                                WHEN 3 THEN ''Rejected''
                                WHEN 4 THEN ''Selected''
                                WHEN 5 THEN ''Withdrawn''
                                ELSE ''Unknown''
                           END AS stStatus
                FROM tblApplications AS A
                INNER JOIN tblVacancies AS V ON A.inVacancyID = V.inVacancyID
                INNER JOIN tblCountries AS C ON V.inCountryID = C.inCountryID
                INNER JOIN tblStates AS S ON V.inStateID = S.inStateID
                INNER JOIN tblCities AS CI ON V.inCityID = CI.inCityID
                INNER JOIN tblUsers AS UC ON A.inCreatedBy = UC.inUserID
                LEFT JOIN tblUsers AS UM ON A.inModifiedBy = UM.inUserID
                WHERE 1 = 1
            ';

    IF (@inVacancyID IS NOT NULL AND @inVacancyID <> 0)
        SET @SQL += ' AND V.inVacancyID = ' + CAST(@inVacancyID AS NVARCHAR(20));

    IF (@inUserID IS NOT NULL AND @inUserID <> 0)
        SET @SQL += ' AND V.inCreatedBy = ' + CAST(@inUserID AS NVARCHAR(20));

    IF (@inStatus IS NOT NULL)
        SET @SQL += ' AND A.inStatus = ' + CAST(@inStatus AS NVARCHAR(20));

    IF (@stSearch IS NOT NULL AND LTRIM(RTRIM(@stSearch)) <> '')
        SET @SQL += ' AND (V.stTitle LIKE ''%' + @stSearch + '%''
                           OR V.stDescription LIKE ''%' + @stSearch + '%'' )';

    SET @SQL += ' )
                SELECT *
                FROM PAGED
                WHERE inRowNumber BETWEEN ' + CAST(@Offset + 1 AS NVARCHAR(20)) + '
                                     AND ' + CAST(@Offset + @inPageSize AS NVARCHAR(20)) + ';
                ';

    EXEC (@SQL);
END
