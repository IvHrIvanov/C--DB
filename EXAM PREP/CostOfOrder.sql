CREATE  FUNCTION udf_GetCost(@jobId INT)
RETURNS DECIMAL(8,2)
AS
BEGIN
DECLARE @result DECIMAL(8,2)
SET @result=(SELECT SUM(p.Price) AS [Result]FROM Jobs AS j
LEFT JOIN Orders AS o
ON o.JobId=j.JobId
 LEFT JOIN OrderParts AS op
ON op.OrderId=o.OrderId
 LEFT JOIN Parts AS p
ON p.PartId=op.PartId
WHERE j.JobId=@jobId)
IF(@result IS NULL) BEGIN RETURN 0 END
RETURN @result
END
GO
SELECT dbo.udf_GetCost(2)