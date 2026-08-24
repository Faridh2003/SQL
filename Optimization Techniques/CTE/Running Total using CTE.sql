-- Find the Running Total of sales for each month

-- USING CTE

WITH CTE_MONTHLY_SUMMARY AS(
	SELECT
	DATETRUNC(MONTH, OrderDate) AS Order_Month,
	SUM(Sales) AS Total_Sales
	FROM Sales.Orders
	GROUP BY DATETRUNC(MONTH, OrderDate)
)
SELECT
Order_Month,
SUM(Total_Sales) OVER(ORDER BY Order_Month) AS Running_Total
FROM CTE_MONTHLY_SUMMARY

-- USING WINDOW FUNCTION
SELECT
DATETRUNC(MONTH, OrderDate) AS Order_Month,
SUM(Sales) OVER(ORDER BY MONTH(OrderDate) 
				ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Running_Total
FROM Sales.Orders