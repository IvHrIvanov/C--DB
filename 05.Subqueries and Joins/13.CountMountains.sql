SELECT c.CountryCode,COUNT(m.MountainRange) FROM MountainsCountries AS mc
JOIN Countries AS c
ON mc.CountryCode = c.CountryCode
JOIN Mountains AS m
ON m.Id=mc.MountainId
WHERE c.CountryCode ='RU' OR c.CountryCode='BG' OR c.CountryCode='US' 
GROUP BY c.CountryCode