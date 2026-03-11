-- Find the average sales for each product
-- also Average sales across all orders
-- Additional information like Order ID and Order Date

SELECT 
ProductID,
OrderID,
OrderDate,
AVG(Sales) OVER() AS Avg_Sales,
AVG(Sales) OVER(PARTITION BY ProductID) AS Avg_Sales_Per_Product
FROM Sales.Orders


-- Find the orders where the sales are higher than the average sales across all orders
-- Additionaly provide details like Average sales, Order ID and Order Date

SELECT *
FROM(
	SELECT
	OrderID,
	OrderDate,
	AVG(Sales) OVER() AS Average_Sales,
	Sales
	FROM Sales.Orders
)T
WHERE Sales > Average_Sales

-- Calculate the Moving Average Sales for each product over time

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID) AS Average_Sales_Per_Product,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS
				BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS MovingAverage
FROM Sales.Orders

-- Calculate the Moving Average Sales for each product over time, including Only the next order

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID) AS Average_Sales_Per_Product,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS
				BETWEEN CURRENT ROW AND 1 FOLLOWING) AS RollingAverage
FROM Sales.Orders