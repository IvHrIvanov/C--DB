SELECT cln.Id, 
CONCAT(cln.FirstName,' ',cln.LastName) AS [ClientName],
cln.Email
FROM Clients AS cln
LEFT JOIN ClientsCigars AS cc
ON cc.ClientId = cln.Id
LEFT JOIN Cigars AS cgr 
ON cgr.Id = cc.CigarId
WHERE cc.ClientId IS NULL
ORDER BY [ClientName]