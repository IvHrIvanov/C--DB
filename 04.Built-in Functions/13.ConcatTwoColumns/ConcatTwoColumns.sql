SELECT PeakName,RiverName
,LOWER(PeakName+SUBSTRING(RiverName,2,LEN(RiverName)-1)) AS Mix
FROM Peaks,Rivers
WHERE SUBSTRING(PeakName,LEN(PeakName),1) LIKE SUBSTRING(RiverName,1,1)
ORDER BY MIX 
