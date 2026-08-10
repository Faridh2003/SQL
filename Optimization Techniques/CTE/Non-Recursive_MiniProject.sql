/*
	Mini Project - Customer Details from Various sectors
	Step 1: Find the total sales per customer (STAND ALONE CTE)
	Step 2: Find the Last Order Date for each customer (MULTIPLE STAND ALONE CTE)
	Step 3: Rank customers based on total sales per customer (NESTED CTE)
	Step 4: Segment customers based on their total sales (NESTED CTE)


	I have done it using CTE (Common Table Expression)
*/


-- Step 1: Find the total sales per customer (STAND ALONE CTE)

-- CTE QUERY
WITH CTE_TOTAL_SALES AS
(	
	SELECT
		CustomerID,
		SUM(Sales) AS TotalSales
	FROM Sales.Orders
	GROUP BY CustomerID
)

-- Step 2: Find the Last Order Date for each customer (MULTIPLE STAND ALONE CTE)
, CTE_LAST_DATE AS
(
	SELECT
		CustomerID,
		MAX(OrderDate) AS LastOrder
	FROM Sales.Orders
	GROUP BY CustomerID
)

-- Step 3: Rank customers based on total sales per customer (NESTED CTE)
, CTE_RANK_CUSTOMERS AS
(
	SELECT
	CustomerID,
	TotalSales,
	RANK() OVER(ORDER BY TotalSales DESC) AS CustomerRank
	FROM CTE_TOTAL_SALES
)

-- Step 4: Segment customers based on their total sales (NESTED CTE)
, CTE_CUSTOMER_SEGMENT AS
(
	SELECT
	CustomerID,
	TotalSales,
	CASE WHEN TotalSales > 100 THEN 'High'
		 WHEN TotalSales > 80 THEN 'Medium'
		 ELSE 'Low'
	END CustomerSegment
	FROM CTE_TOTAL_SALES
)

-- MAIN QUERY
SELECT
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
CLD.LastOrder,
crc.CustomerRank,
ccs.CustomerSegment
FROM Sales.Customers AS C
LEFT JOIN CTE_TOTAL_SALES AS cts
ON C.CustomerID = cts.CustomerID
LEFT JOIN CTE_LAST_DATE AS cld
ON C.CustomerID = cld.CustomerID
LEFT JOIN CTE_RANK_CUSTOMERS AS crc
ON C.CustomerID = crc.CustomerID
LEFT JOIN CTE_CUSTOMER_SEGMENT AS ccs
ON C.CustomerID = ccs.CustomerID