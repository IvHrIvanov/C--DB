SELECT p.id,p.[Name],p.Seats,p.[Range] FROM Planes AS p
WHERE p.[Name] LIKE '%Tr%'
ORDER BY id,[Name],Seats,[Range]