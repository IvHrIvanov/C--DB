SELECT * INTO AverageSalaryTable
FROM Employees AS e
WHERE e.Salary >30000

DELETE FROM AverageSalaryTable
WHERE ManagerID = 42

UPDATE AverageSalaryTable 
SET Salary +=5000
WHERE DepartmentID=1

SELECT a.DepartmentID, AVG(a.Salary) AS [AverageSalary] FROM AverageSalaryTable AS a
GROUP BY a.DepartmentID