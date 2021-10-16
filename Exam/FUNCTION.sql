CREATE  FUNCTION udf_ClientWithCigars(@name VARCHAR(50))
RETURNS INT
AS
BEGIN
DECLARE @count INT
SET @count = (
SELECT COUNT(*) AS [Output]FROM Clients AS c
JOIN ClientsCigars AS cc
ON c.Id=cc.ClientId
JOIN Cigars as cgr
ON cgr.Id=cc.CigarId
WHERE c.FirstName=@name)
RETURN @count
END
GO
		   		 	  	  
