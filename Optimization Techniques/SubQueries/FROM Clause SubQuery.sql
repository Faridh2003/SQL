-- TASK 1: Find the products that have the prie higher than the 
--		   average price of all products.


SELECT
*
FROM (
	SELECT
	ProductID,
	Product,
	Price,
	AVG(Price) OVER () AS AveragePrice
	FROM Sales.Products
) AS T
WHERE Price > AveragePrice


-- Task 2: Rank customers based on their total amount of sales

SELECT
*,
ROW_NUMBER() OVER (ORDER BY TotalSales DESC) AS SalesRank
FROM (
	SELECT
	CustomerID,
	SUM(Sales) AS TotalSales
	FROM Sales.Orders
	GROUP BY CustomerID
) AS T

