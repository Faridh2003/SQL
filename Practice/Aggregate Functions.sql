/*
		Aggregate Functions
	SUM(): Add the Int val in the col
	AVG(): Find average of val(Excluding NULL) in the col
	COUNT():count of elements in a column(Excluding NULL)
	MAX(), MIN() : Maximum and Minimum element in the column
*/

-- Find the Total Number of orders
-- Find total sales of all orders
-- Find the average sales of all orders
-- Find the Maximum sales of all orders

SELECT
COUNT(*) AS No_of_Orders,
SUM(Sales) AS Total_sales,
AVG(Sales) AS Average_sales,
MAX(Sales) AS Highest_Sale,
MIN(Sales) AS Lowest_Sale
FROM Sales.Orders


-- Find the Average score of customers with and without null
SELECT 
AVG(Score) AS AVG_Score_WITH_NULL,
AVG(COALESCE(Score, NULL, 0)) AS AVG_Score_Without_NULL
FROM Sales.Customers