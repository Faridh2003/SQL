-- To sort the data inside the Window function

/*
	Rank each order based on their sales from highest to Lowest
	Additionally provide details such OrderID, OrderDate
*/

SELECT
OrderID,
OrderDate,
Sales,
RANK() OVER(ORDER BY Sales DESC) AS Rank_Sales
FROM Sales.Orders