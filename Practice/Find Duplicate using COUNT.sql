-- Check Whether the table order contains any Duplicate rows

SELECT
OrderID,
COUNT(*) OVER(PARTITION BY OrderID) AS PK
FROM Sales.Orders

SELECT
* 
FROM(
	SELECT
		OrderID,
		COUNT(*) OVER(PARTITION BY OrderID) AS PK
	FROM Sales.OrdersArchive
)T
WHERE PK > 1