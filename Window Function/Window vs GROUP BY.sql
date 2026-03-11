/*

			GROUP BY()

	-> Result Granularity : The numkber of rows in the output is defined by the dimension
	-> It can't do aggregation and provide additional details at same time

			WINDOW Functions
	-> Result Granularity : Return aggregated result in each row

	Note : Granularity means Level or scale of data. Eg: No.of.rows
*/

-- Find the total sales across all orders

SELECT 
SUM(Sales) AS Total_Sales
FROM Sales.Orders -- Overall you have single row ....aggregating everything together 

-- Find the total sales for Each product

SELECT 
	ProductID,
	SUM(Sales) AS Sales_per_Product
FROM Sales.Orders
GROUP BY ProductID -- Total rows in op decided by unique no.of.products


-- Find the total sales for Each product
-- additional provide datails like Order Id & OrderDate

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales
FROM Sales.Orders

