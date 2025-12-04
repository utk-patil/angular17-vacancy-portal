-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 30 Nov 2025
-- Description: Get my applications
-- EXEC GetMyApplications NULL, 5, NULL, 1, 10
-- =================================================================

CREATE PROCEDURE GetMyApplications
(
    @inVacancyID	INT,
    @inUserID		INT,
    @stSearch		NVARCHAR(200),
	@inStatus		INT,
    @inPageNumber	INT = 1,
    @inPageSize		INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Offset INT;

    SET @Offset = (@inPageNumber - 1) * @inPageSize;

    SET @SQL = ';WITH PAGED AS
				(
					SELECT CAST(ROW_NUMBER() OVER (ORDER BY V.inVacancyID DESC) AS BIGINT) AS inRowNumber,
							CAST(COUNT(1) OVER() AS BIGINT) AS inTotalRecord,
							V.inVacancyID, V.stTitle, V.stDescription,
							A.inApplicationID,
							V.inCountryID,	C.stName AS stCountryName,
							V.inStateID,	S.stName AS stStateName,
							V.inCityID,		CI.stName AS stCityName,
							V.flgIsActive,
							V.inCreatedBy,	(UC.stFirstName + '' '' + UC.stLastName) AS stCreatedBy,
							V.inModifiedBy,	(UM.stFirstName + '' '' + UM.stLastName) AS stModifiedBy,
							V.dtCreatedAt,	V.dtModifiedAt, A.inStatus,
							CASE A.inStatus
								WHEN 0 THEN ''Submitted''
								WHEN 1 THEN ''Reviewed''
								WHEN 2 THEN ''Shortlisted''
								WHEN 3 THEN ''Rejected''
								WHEN 4 THEN ''Selected''
								WHEN 5 THEN ''Withdrawn''
								ELSE ''Unknown''
							END AS stStatus
				FROM tblVacancies AS V
				INNER JOIN tblApplications AS A
					ON A.inVacancyID = V.inVacancyID
				INNER JOIN tblCountries AS C 
					ON V.inCountryID = C.inCountryID
				INNER JOIN tblStates AS S 
					ON V.inStateID = S.inStateID
				INNER JOIN tblCities AS CI 
					ON V.inCityID = CI.inCityID
				INNER JOIN tblUsers AS UC 
					ON V.inCreatedBy = UC.inUserID
				LEFT JOIN tblUsers AS UM 
					ON V.inModifiedBy = UM.inUserID
				WHERE V.flgIsActive = 1
			';

    IF (ISNULL(@inVacancyID, 0) <> 0)
        SET @SQL += ' AND V.inVacancyID = ' + CAST(@inVacancyID AS NVARCHAR(20));

    IF (ISNULL(@inUserID, 0) <> 0)
        SET @SQL += ' AND A.inUserID = ' + CAST(@inUserID AS NVARCHAR(20));

	IF (@inStatus IS NOT NULL)
        SET @SQL += ' AND A.inStatus = ' + CAST(@inStatus AS NVARCHAR(20));

    IF (ISNULL(@stSearch, '') IS NOT NULL AND LTRIM(RTRIM(@stSearch)) <> '')
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
