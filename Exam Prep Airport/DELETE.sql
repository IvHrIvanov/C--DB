DELETE FROM Tickets WHERE FlightId IN (SELECT Id FROM Flights AS f
WHERE Destination='Ayn Halagim')
DELETE FROM Flights
WHERE PlaneId IN (SELECT p.Id FROM Planes AS p WHERE 
p.Id = (SELECT PlaneId FROM Flights WHERE Destination='Ayn Halagim')
)


