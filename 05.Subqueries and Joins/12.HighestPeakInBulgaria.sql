-- WITHOUT JOIN
SELECT c.CountryCode, m.MountainRange,p.PeakName,p.Elevation
FROM Peaks AS p,
Mountains AS m,
Countries AS c,
MountainsCountries AS mc
WHERE mc.MountainId=m.Id
AND c.CountryCode=mc.CountryCode 
AND p.MountainId=mc.MountainId
AND c.CountryCode='BG'
AND p.Elevation>2835
ORDER BY p.Elevation DESC

-- Join
SELECT c.CountryCode,m.MountainRange,p.PeakName,p.Elevation FROM Countries AS c
JOIN MountainsCountries AS mc
ON mc.CountryCode=c.CountryCode
JOIN Mountains AS m
ON m.Id=mc.MountainId
JOIN Peaks as p
ON p.MountainId=mc.MountainId
WHERE c.CountryCode='BG' AND p.Elevation>2835
ORDER BY p.Elevation DESC