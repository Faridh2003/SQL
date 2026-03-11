--	Find the highest and lowest sales for all orders
-- Find the highest and lowest sales for each product
-- Additionally provide details such Order ID, Order Date

--SELECT
--OrderId,
--ProductID,
--OrderDate,
--Sales,
--MAX(Sales) OVER(PARTITION BY ProductID) AS Maximum_Sales_Product,
--MAX(Sales) OVER() AS Maximum_Sales,
--MIN(Sales) OVER(PARTITION BY ProductID) AS Minimum_Sales_Product,
--MIN(Sales) OVER() AS Minimum_Sales
--FROM Sales.Orders

-- Show the Employees who have the highest Salaries

-- Calculate the deviation of each sales from the both the Maximum and Minimum Sales

SELECT
OrderID,
ProductID,
OrderDate,
MAX(Sales) OVER() AS HighestSales,
MIN(Sales) OVER() AS LowestSales,
Sales,
Sales - LowestSales AS DeviationfromLowest,
HighestSales - Sales AS DeviationfromHighest
FROM(
	SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	MAX(Sales) OVER() AS HighestSales,
	MIN(Sales) OVER() AS LowestSales
	FROM Sales.Orders
)T 