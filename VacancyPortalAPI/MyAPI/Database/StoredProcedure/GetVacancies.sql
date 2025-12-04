-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 30 Nov 2025
-- Description: Get vacancies with IDs and Names
-- EXEC GetVacancies NULL, NULL, NULL, NULL, NULL, 1, 10
-- =================================================================

CREATE PROCEDURE GetVacancies
(
    @inVacancyID	INT,
    @inUserID		INT,
	@inPostedBy		INT,
    @flgIsActive	BIT,
    @stSearch		NVARCHAR(200),
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
							V.inCountryID,	C.stName AS stCountryName,
							V.inStateID,	S.stName AS stStateName,
							V.inCityID,		CI.stName AS stCityName,
							V.flgIsActive,
							V.inCreatedBy,	(UC.stFirstName + '' '' + UC.stLastName) AS stCreatedBy,
							V.inModifiedBy,	(UM.stFirstName + '' '' + UM.stLastName) AS stModifiedBy,
							V.dtCreatedAt,
							V.dtModifiedAt
				FROM tblVacancies AS V
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
				WHERE 1 = 1
			';

    IF (ISNULL(@inVacancyID, 0) <> 0)
        SET @SQL += ' AND V.inVacancyID = ' + CAST(@inVacancyID AS NVARCHAR(20));

	IF (ISNULL(@inPostedBy, 0) <> 0)
        SET @SQL += ' AND V.inCreatedBy = ' + CAST(@inPostedBy AS NVARCHAR(20));

    IF (ISNULL(@inUserID, 0) <> 0)
        SET @SQL += ' AND NOT EXISTS (
                        SELECT 1
                        FROM tblApplications A
                        WHERE A.inVacancyID = V.inVacancyID
                          AND A.inUserID = ' + CAST(@inUserID AS NVARCHAR(20)) + '
                          AND A.inStatus <> 5
                      )';

    IF (@flgIsActive IS NOT NULL)
        SET @SQL += ' AND V.flgIsActive = ' + CAST(@flgIsActive AS NVARCHAR(5));

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
