[Test]
SELECT e.EmployeeID,e.FirstName,
CASE WHEN p.StartDate>='2005-01-01'
       THEN NULL
    ELSE p.[Name]
      END AS ProjectName 
FROM Employees AS e,Projects  AS p,EmployeesProjects AS ep
WHERE e.EmployeeID = 24 AND e.EmployeeID=ep.EmployeeID AND p.ProjectID=ep.ProjectID


SELECT e.EmployeeID,e.FirstName, 
     CASE WHEN p.StartDate>='2005-01-01'
       THEN NULL
         ELSE p.[Name]
       END AS ProjectName 
	  FROM Employees AS e,Projects AS p
RIGHT JOIN EmployeesProjects AS ep
ON ep.ProjectID=p.ProjectID
WHERE e.EmployeeID=24 AND e.EmployeeID=ep.EmployeeID
