SELECT TOP(5) c.CountryName,r.RiverName
FROM Countries AS c
LEFT JOIN CountriesRivers AS cr
ON cr.CountryCode=c.CountryCode
LEFT JOIN Rivers AS r
ON r.ID = cr.RiverID
WHERE c.ContinentCode='AF'
ORDER BY c.CountryName ASC