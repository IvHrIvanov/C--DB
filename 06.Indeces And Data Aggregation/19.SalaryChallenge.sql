SELECT TOP(10) 
e.FirstName,
e.LastName,
e.DepartmentID FROM Employees AS e
 WHERE e.Salary>(
 SELECT AVG(e1.Salary) AS [AverageSalary] 
 FROM Employees AS e1
 WHERE e.DepartmentID=DepartmentID
 GROUP BY DepartmentID) 
 ORDER BY DepartmentID