CREATE  PROCEDURE usp_EmployeesBySalaryLevel(@levelSalary nvarchar(10))
AS
BEGIN
SELECT e.FirstName,e.LastName FROM Employees AS e
WHERE dbo.ufn_GetSalaryLevel(e.Salary)=@levelSalary
END

EXEC usp_EmployeesBySalaryLevel 'High'