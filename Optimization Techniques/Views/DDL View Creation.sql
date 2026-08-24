-- View Creation without Schema (If not mentioned, default value is dbo)
/*
CREATE VIEW V_MONTHLY_SUMMARY AS(
	SELECT
	DATETRUNC(MONTH, OrderDate) AS Order_Month,
	SUM(Sales) AS Total_Sales
	FROM Sales.Orders
	GROUP BY DATETRUNC(MONTH, OrderDate)
)
*/
-- VIEW creation with schema

CREATE VIEW Sales.V_MONTHLY_SUMMARY AS(
	SELECT
	DATETRUNC(MONTH, OrderDate) AS Order_Month,
	SUM(Sales) AS Total_Sales
	FROM Sales.Orders
	GROUP BY DATETRUNC(MONTH, OrderDate)
)