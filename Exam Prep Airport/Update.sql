SELECT Price FROM Flights AS f
JOIN Tickets AS t
ON f.Id=t.FlightId
WHERE Destination='Carlsbad'
UPDATE Tickets
SET Price += Price*0.13