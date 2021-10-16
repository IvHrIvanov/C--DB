SELECT TOP (5) cgr.CigarName,
cgr.PriceForSingleCigar,
cgr.ImageURL
FROM Cigars AS cgr
JOIN Sizes AS s ON s.Id = cgr.SizeId
WHERE s.[Length] >= 12 AND (cgr.CigarName LIKE '%ci%'
OR cgr.PriceForSingleCigar > 50) AND s.RingRange > 2.55
ORDER BY CigarName ASC, PriceForSingleCigar DESC