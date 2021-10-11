CREATE  PROCEDURE usp_GetHoldersWithBalanceHigherThan(@number DECIMAL(18,4))
AS
BEGIN
SELECT FirstName,LastName FROM AccountHolders AS ah
JOIN Accounts AS a
ON a.AccountHolderId=ah.Id
WHERE  SUM(Balance)>@number
GROUP BY FirstName,LastName
ORDER BY FirstName,LastName
END

EXEC usp_GetHoldersWithBalanceHigherThan 40000
