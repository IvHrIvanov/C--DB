SELECT TOP(3) e.EmployeeID,FirstName FROM Employees AS e
FULL OUTER JOIN EmployeesProjects AS ep
ON ep.EmployeeID=e.EmployeeID
WHERE ep.ProjectID IS NULL
ORDER BY e.EmployeeID ASC
