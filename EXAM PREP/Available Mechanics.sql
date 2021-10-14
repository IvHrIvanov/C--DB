SELECT CONCAT(m.FirstName, ' ', m.LastName) AS [Aviable] From Mechanics AS m
WHERE m.MechanicId NOT IN (SELECT j.MechanicId FROM Jobs AS j
WHERE Status = 'In Progress'
GROUP BY j.MechanicId)