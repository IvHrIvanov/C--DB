SELECT TOP(5) c.CountryName,Max(p.Elevation) AS [HighestPeakElevation], MAX(r.Length) AS [LongestRiverLenght] FROM Countries AS c
LEFT JOIN MountainsCountries AS mc ON c.CountryCode=mc.CountryCode
LEFT JOIN Mountains AS m ON m.Id=mc.MountainId
LEFT JOIN Peaks AS p ON p.MountainId=m.Id
LEFT JOIN CountriesRivers AS cr ON cr.CountryCode=c.CountryCode
LEFT JOIN Rivers AS r ON r.ID=cr.RiverId
GROUP BY c.CountryName
ORDER BY [HighestPeakElevation] DESC,[LongestRiverLenght] DESC, c.CountryName ASC