SELECT SUM([Difference]) AS [Sum Difference] FROM(
SELECT wd1.FirstName AS [Host Wizzard],
wd1.DepositAmount AS [Host Wizzard Deposit],
LEAD(wd1.FirstName) OVER(ORDER BY Id ASC) AS [Guest Wizzard],
LEAD(wd1.DepositAmount) OVER(ORDER BY Id ASC)AS [Guest Wizzard Deposit],
wd1.DepositAmount - LEAD(wd1.DepositAmount) OVER(ORDER BY Id ASC) AS [Difference]
FROM WizzardDeposits AS wd1
) AS [LeadQuarry]
WHERE [Guest Wizzard] IS NOT NULL