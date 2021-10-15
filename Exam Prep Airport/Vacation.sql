CREATE  FUNCTION udf_CalculateTickets(@origin VARCHAR(50), @destination VARCHAR(50), @peopleCount INT)
RETURNS VARCHAR(50)
AS
BEGIN
DECLARE @price DECIMAL(18,2)
IF @peopleCount <= 0 BEGIN RETURN 'Invalid people count!' END
IF (NOT EXISTS (SELECT f.Destination FROM Flights AS f
WHERE f.Destination=@destination AND f.Origin =@origin)) 
BEGIN RETURN 'Invalid flight!' END

SET @price=(SELECT TOP(1) t.Price FROM Flights AS f
LEFT JOIN Tickets AS t
ON t.FlightId=f.Id
WHERE f.Origin=@origin AND f.Destination=@destination
)
SET @price = @price*@peopleCount
RETURN CONCAT('Total price',' ',@price)
END

GO
SELECT dbo.udf_CalculateTickets('Kolyshley','Rancabolang', 33)
SELECT dbo.udf_CalculateTickets('Kolyshley','Rancabolang', -1)
SELECT dbo.udf_CalculateTickets('Invalid','Rancabolang', 33)