CREATE  PROCEDURE usp_GetEmployeesSalaryAboveNumber(@Number DECIMAL(18,4))
AS
BEGIN
SELECT e.FirstName,e.LastName FROM Employees as e
WHERE e.Salary >= @Number
END

EXEC usp_GetEmployeesSalaryAboveNumber @Number = 48100