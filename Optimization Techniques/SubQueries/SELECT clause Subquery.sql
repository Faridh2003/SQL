
/* RULE : Only Scalar subquery is allowed in SELECT clause
		  
		  Scalar subquery : Returns a single value as an result


	Task 1: Show the Prod Id, Product name  
			and the total number of product and Orders */

SELECT
	ProductID,
	Product,
	(SELECT COUNT(ProductID) FROM Sales.Products) AS Total_Products,
	(SELECT COUNT(OrderID) FROM Sales.Orders) AS Total_Orders
FROM Sales.Products