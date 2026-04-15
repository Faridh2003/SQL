/*	Show all customer details and find the
	  total orders for each cutomers */


SELECT
*
FROM Sales.Customers AS c
LEFT JOIN (
	SELECT
	CustomerID,
	COUNT(OrderID) AS Total_Orders
	FROM Sales.Orders
	GROUP BY CustomerID
) AS o
ON c.CustomerID = o.CustomerID