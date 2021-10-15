SELECT [Full Name],[Plane Name],Trip,[Luggage Type] FROM(
SELECT CONCAT(p.FirstName,' ',p.LastName)  AS [Full Name],
pl.[Name] AS [Plane Name],
CONCAT(f.Origin,' - ',f.Destination) AS [Trip],
lt.[Type] AS [Luggage Type]
FROM Passengers AS p
JOIN Tickets AS t
ON t.PassengerId=p.Id
JOIN Flights AS f
ON f.Id=t.FlightId
JOIN Planes AS pl
ON pl.Id=f.PlaneId
JOIN Luggages AS l
ON l.Id=t.LuggageId
JOIN LuggageTypes AS lt
ON lt.Id=l.LuggageTypeId
GROUP BY
CONCAT(p.FirstName,' ',p.LastName),
pl.[Name],
CONCAT(f.Origin,' - ',f.Destination),
lt.[Type] ) AS [da]
ORDER BY [Full Name],[Plane Name],Trip,[Luggage Type]

