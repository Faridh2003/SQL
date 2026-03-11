-- Find the total sales across all orders
-- Find the total sales for each product
-- Find the total sales for each combination of Prtoduct and order status
-- Additionaly provide details such OrderID, OrderDate

/*	Note : Allows aggregation of data at difeerent granularities within same Query */

SELECT
OrderID,
OrderDate,
ProductID,
OrderStatus,
SUM(Sales) OVER() AS Total_Sales,
SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales_Product,
SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) AS Total_Sales_Product_Status
FROM Sales.Orders