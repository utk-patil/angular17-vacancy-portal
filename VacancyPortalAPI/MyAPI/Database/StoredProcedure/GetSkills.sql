-- =================================================================
-- Author: Utkarsh Patil
-- Creation Date: 30 Nov 2025
-- Description: Get list of all skills
-- EXEC GetSkills
-- =================================================================

CREATE PROCEDURE GetSkills
AS
BEGIN
    SET NOCOUNT ON;

    SELECT S.inSkillID, S.stName
    FROM tblSkills AS S
    ORDER BY S.stName ASC;
END
