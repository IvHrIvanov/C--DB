SELECT e1.EmployeeID,e1.FirstName,e1.ManagerID,e2.FirstName AS ManagerName FROM Employees AS e1
JOIN Employees AS e2
ON e1.ManagerID = e2.EmployeeID
WHERE e1.ManagerID=3 OR e1.ManagerID=7
ORDER BY e1.EmployeeID