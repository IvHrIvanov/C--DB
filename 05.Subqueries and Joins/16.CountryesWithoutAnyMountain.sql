SELECT COUNT(Countries.CountryCode) AS [Count] FROM Countries
LEFT JOIN MountainsCountries AS m
ON Countries.CountryCode = m.CountryCode
WHERE m.MountainId IS NULL