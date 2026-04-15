-- Analyze customer loyalty by rank the customers based in the
-- average number of days between orders

SELECT
CustomerID,
AVG(DaysBetween) AS AverageNumber,
RANK() OVER(ORDER BY COALESCE(AVG(DaysBetween), 999999)) AS LoyaltyRank
FROM
(
	SELECT
	OrderId,
	CustomerID,
	OrderDate AS CurrentOrder,
	LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) AS NextOrder,
	DATEDIFF(day, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) AS DaysBetween
	FROM Sales.Orders
)T GROUP BY CustomerID