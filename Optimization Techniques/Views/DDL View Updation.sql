/*
Updating view can only be done by DROPing the existing view and CREATEing the updated View

	T-SQL -> Transact-SQL is the extension of SQL that adds programming features

We do it in 2 ways
	-> Without T-SQL ( Should execute DROP first seperately and Create seperately)
	-> With T-SQL

*/

-- Without T-SQL
DROP VIEW V_MONTHLY_SUMMARY

CREATE VIEW V_MONTHLY_SUMMARY AS
(
	SELECT
	DATETRUNC(MONTH, OrderDate) AS Order_Month,
	SUM(Sales) AS Total_Sales,
	COUNT(OrderID) AS TotalOrders,
	SUM(Quantity) AS TotalQuantity
	FROM Sales.Orders
	GROUP BY DATETRUNC(MONTH, OrderDate)
)

--	With T-SQL

IF OBJECT_ID('Sales.V_MONTHLY_SUMMARY' , 'V') IS NOT NULL
	DROP VIEW Sales.V_MONTHLY_SUMMARY
GO
	CREATE VIEW Sales.V_MONTHLY_SUMMARY AS
(
	SELECT
	DATETRUNC(MONTH, OrderDate) AS Order_Month,
	SUM(Sales) AS Total_Sales,
	COUNT(OrderID) AS TotalOrders,
	SUM(Quantity) AS TotalQuantity
	FROM Sales.Orders
	GROUP BY DATETRUNC(MONTH, OrderDate)
)
