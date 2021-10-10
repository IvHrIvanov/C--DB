CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(7)
AS
BEGIN
DECLARE @prom nvarchar(7)

  IF(@salary<30000) 
  BEGIN
  SET @prom='Low'
  END
  ELSE IF (@salary >=30000 AND @salary<=50000) 
  BEGIN
  SET @prom = 'Average'
  END
  ELSE 
  BEGIN
  SET @prom = 'High'
  END
  RETURN @prom
END
GO
SELECT e.Salary ,dbo.ufn_GetSalaryLevel(Salary) AS [Salary Level] FROM  Employees AS e