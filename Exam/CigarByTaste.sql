SELECT cgr.Id, 
cgr.CigarName, 
cgr.PriceForSingleCigar, 
t.TasteType, 
t.TasteStrength
FROM Cigars AS cgr
JOIN Tastes AS t ON t.Id = cgr.TastId
WHERE t.TasteType = 'Earthy' OR t.TasteType = 'Woody'
ORDER BY PriceForSingleCigar DESC