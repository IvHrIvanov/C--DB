SELECT * FROM (SELECT EmployeeID,FirstName,LastName,Salary,
 RANK() OVER(PARTITION BY Salary ORDER BY EmployeeID) AS [Rank]
  FROM Employees) [Rank]
  WHERE Salary BETWEEN 10000 AND 50000 AND [Rank] =2
  ORDER BY Salary DESC