-- Rank the orders based on their sales from lowest to highest
/*
	ROW_NUMBER() : Doesn't differentiate duplicates. Eg: Duplicates have different ranks
	RANK() : Handle duplicate values with giving "same rank" and "skip" for next unique one
	DENSE_RANK() : Handle duplicate values with giving "same rank" but "won't skip" for next unique one
*/

SELECT
OrderID,
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) AS SalesRownumber,
RANK()       OVER(ORDER BY Sales DESC) AS SalesRank,
DENSE_RANK() OVER(ORDER BY Sales DESC) AS SalesDenseRank
FROM Sales.Orders