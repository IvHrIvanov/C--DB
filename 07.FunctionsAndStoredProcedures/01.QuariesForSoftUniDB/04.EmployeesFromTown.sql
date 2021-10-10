CREATE  PROCEDURE usp_GetEmployeesFromTown(@town nvarchar(50))
AS
BEGIN
SELECT e.FirstName,e.LastName FROM Employees AS e
JOIN Addresses AS a
ON a.AddressID=e.AddressID
JOIN Towns AS t
ON t.TownID=a.TownID
WHERE t.TownID=a.TownID AND e.AddressID=a.AddressID AND t.[Name]=@town
END

EXEC usp_GetEmployeesFromTown 'Sofia'
