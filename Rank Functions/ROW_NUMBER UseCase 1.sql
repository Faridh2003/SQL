-- TOP -N Analysis

-- Find the top highest sales for each product

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
ROW_NUMBER() OVER( PARTITION BY ProductID ORDER BY Sales DESC) AS ProductRanks
FROM Sales.Orders



-- Bottom-N-Analysis

-- Find the bottom lowest 2 customers based on total sales


SELECT
*
FROM(
	SELECT
		CustomerID,
		SUM(Sales) AS Total_Sales,
		ROW_NUMBER() OVER(ORDER BY SUM(Sales)) AS TotalSales
	FROM sales.Orders
	GROUP BY CustomerID
)t WHERE TotalSales <= 2



-- Generate Unique ID's

-- Assign unique ID's to the rows of "Orders Archive" table

SELECT
ROW_NUMBER() OVER(ORDER BY OrderID, OrderDate) AS UniqueID,
*
FROM Sales.OrdersArchive


-- Identify Duplicates

-- Identify duplicate rows in the table "Orders Archive" and return thr clrean result without duplicates

SELECT
*
FROM sales.OrdersArchive