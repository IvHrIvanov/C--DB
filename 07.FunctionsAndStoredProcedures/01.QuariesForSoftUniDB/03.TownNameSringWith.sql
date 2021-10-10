CREATE  PROCEDURE usp_GetTownsStartingWith(@param nvarchar(20))
AS
BEGIN
SELECT t.[Name] AS [Town] FROM Towns AS t
WHERE t.[Name] LIKE UPPER(@param+'%')
END

EXEC usp_GetTownsStartingWith @param='b'

