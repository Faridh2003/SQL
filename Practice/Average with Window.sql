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