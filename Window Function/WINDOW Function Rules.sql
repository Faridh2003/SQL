/*
	RULES:

	-> Window function can be used only with SELECT and ORDER BY clauses
	-> Nested WINDOW functions are not allowed
	-> Window dunction can be used together with GROPU BY in the same query,
	   only if the same column are used
*/

-- Rank Customer based on Total Sales

SELECT
CustomerID,
SUM(Sales)AS Customer_Sales,
RANK() OVER(ORDER BY SUM(Sales) DESC) AS Rank_Sales
FROM Sales.Orders
GROUP BY CustomerID