SELECT CONCAT(cl.FirstName ,' ' ,cl.LastName) AS [FullName],
a.Country, a.ZIP, CONCAT('$', MAX(ci.PriceForSingleCigar)) AS [CigarPrice]
FROM Clients AS cl
JOIN Addresses AS a ON a.Id = cl.AddressId
JOIN ClientsCigars AS cc ON cc.ClientId = cl.Id
JOIN Cigars AS ci ON ci.Id = cc.CigarId
GROUP BY CONCAT(cl.FirstName ,' ' ,cl.LastName), a.Country, a.ZIP
HAVING ZIP NOT LIKE'%[^0-9]%'