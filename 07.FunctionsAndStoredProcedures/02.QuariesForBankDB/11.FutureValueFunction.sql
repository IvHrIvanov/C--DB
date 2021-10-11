CREATE FUNCTION ufn_CalculateFutureValue(@sum DECIMAL(18,4),@rate FLOAT,@numberYaers INT)
RETURNS DECIMAL(18,4)
AS 
BEGIN
DECLARE @futureValue DECIMAL(18,4)
SET @futureValue = @sum * (POWER((1+@rate),@numberYaers))
RETURN @futureValue
END

GO

SELECT dbo.ufn_CalculateFutureValue(1000,0.1,5) AS [Output]