SELECT  TOP(50) FirstName,LastName,t.[Name] AS Town,AddressText
FROM Addresses,Towns t,Employees
WHERE Addresses.AddressID=Employees.AddressID AND Addresses.TownID=t.TownID
ORDER BY FirstName,LastName ASC
