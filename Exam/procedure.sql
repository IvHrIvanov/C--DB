CREATE PROCEDURE usp_SearchByTaste(@taste VARCHAR(50))
AS
BEGIN
SELECT cgr.CigarName,CONCAT('$',cgr.PriceForSingleCigar) AS [Price],
t.TasteType,
b.BrandName,
CONCAT(s.[Length],' cm') AS CigarLength,
CONCAT(s.RingRange,' cm') AS [CigarRingRange]
FROM Tastes AS t
FULL JOIN Cigars AS cgr
ON cgr.TastId=t.Id
FULL JOIN Brands AS b
ON b.Id=cgr.BrandId
FULL JOIN Sizes as s
ON s.Id=cgr.SizeId
WHERE t.TasteType = @taste
ORDER BY CigarLength ASC,CigarRingRange DESC
END

EXEC usp_SearchByTaste 'Woody'