-- TOP -N Analysis

-- Find the top highest sales for each product

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
ROW_NUMBER() OVER( PARTITION BY ProductID ORDER BY Sales DESC) AS ProductRanks
FROM Sales.Orders