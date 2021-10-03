SELECT TOP(5) EmployeeID,FirstName,Salary,d.[Name] AS DepartmentName
FROM Employees AS e,Departments AS d
Where e.Salary>15000 AND e.DepartmentID=d.DepartmentID
ORDER BY d.DepartmentID ASC 
