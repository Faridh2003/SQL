
--> Show all orders that are placed during the Peculiar month 


SELECT
*
FROM Sales.Orders
where MONTH(OrderDate) = 2
		