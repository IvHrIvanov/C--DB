SELECT TOP(5) EmployeeID,JobTitle,a.AddressID,AddressText
FROM Employees e,Addresses a
WHERE a.AddressID = e.AddressID
ORDER BY AddressID