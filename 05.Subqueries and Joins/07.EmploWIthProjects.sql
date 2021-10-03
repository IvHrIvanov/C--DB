SELECT TOP(5) e.EmployeeID,FirstName,p.[Name] AS [ProjectName] FROM Employees AS e,Projects AS p
JOIN EmployeesProjects AS ep
ON ep.ProjectID=p.ProjectID 
WHERE p.StartDate > '2002-08-13' AND p.EndDate IS NULL AND ep.EmployeeID=e.EmployeeID
ORDER BY e.EmployeeID ASC