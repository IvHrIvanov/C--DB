SELECT e.DepartmentID, MAX(e.Salary) AS [MaxSalary] 
FROM Employees AS e
GROUP BY e.DepartmentID
HAVING MAX(e.Salary)<30000 OR Max(e.Salary)>70000 