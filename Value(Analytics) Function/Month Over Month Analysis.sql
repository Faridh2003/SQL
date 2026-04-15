/*
	Analyze the Month over monthperformance by finding the percentage changes in sales between 
	the current and previous month
*/


SELECT
*,
Current_Month - Previous_Month AS MOM_Changes,
ROUND(CAST((Current_Month - Previous_Month) AS FLOAT)/ Previous_Month * 100 , 2) AS MOM_Percentage
FROM(
	SELECT
		MONTH(OrderDate) AS OrderMonth,
		SUM(Sales) AS Current_Month,
		LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) AS Previous_Month
	FROM Sales.Orders
	GROUP BY MONTH(OrderDate)
)T

























