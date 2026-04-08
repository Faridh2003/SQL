-- Data Segmentation

-- Segment all sales into three categories : High, medium, low


SELECT *,
CASE 
	WHEN Categories = 1 THEN 'High'
	WHEN Categories = 2 THEN 'Medium'
	WHEN Categories = 3 THEN 'Low'
END AS SalesLevel
FROM(
	SELECT
	OrderId,
	Sales,
	NTILE(3) OVER(ORDER BY Sales DESC) AS Categories
	FROM Sales.Orders
)T 

-- Equalize Load Processing

-- Inorder to Export the data divide the Orders into 2 groups

SELECT
OrderId,
Sales,
NTILE(2) OVER(ORDER BY OrderId) AS Groups
FROM Sales.Orders