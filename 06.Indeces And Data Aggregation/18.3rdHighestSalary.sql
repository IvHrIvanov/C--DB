SELECT DepartmentID,Salary AS [ThirdHighestSalary] FROM (
SELECT e.DepartmentID,
e.Salary,
DENSE_RANK() OVER(PARTITION BY e.DepartmentID ORDER BY e.Salary DESC)
AS [ThirdRank]
FROM Employees AS e
GROUP BY e.DepartmentID,e.Salary
) AS [RANK]
WHERE [ThirdRank]=3