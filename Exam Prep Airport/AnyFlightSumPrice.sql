SELECT t.FlightId,SUM(Price) AS [Price] FROM Tickets AS t
JOIN Flights AS f
on f.Id=t.FlightId
GROUP BY t.FlightId
ORDER BY [Price]DESC,t.FlightId 

