SELECT * FROM(
SELECT 
	p.PartId,
	p.[Description],
	pn.Quantity AS [Required],
	p.StockQty AS [In Stock], 
	ISNULL(op.Quantity,0) AS [Ordered]
FROM Jobs AS j
LEFT JOIN PartsNeeded AS pn
ON pn.JobId=j.JobId
LEFT JOIN Parts AS p
ON p.PartId=pn.PartId
LEFT JOIN Orders AS o
ON o.JobId=j.JobId
LEFT JOIN OrderParts AS op
ON op.OrderId=o.OrderId
WHERE j.[Status] !='Finished' AND (o.Delivered = 0 OR o.Delivered IS NULL)) AS [da]
WHERE [Required] > [In Stock]+[Ordered]



