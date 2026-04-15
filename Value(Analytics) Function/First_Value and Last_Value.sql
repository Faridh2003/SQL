-- Find the Lowest and Highest Sales for each product


SELECT
OrderID,
ProductID,
FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales)  AS LowestSales,
LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS BETWEEN 
CURRENT ROW AND UNBOUNDED FOLLOWING)  AS HighestSales
--FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales DESC)  AS HIGHSales,
--MIN(Sales) OVER(PARTITION BY ProductID) AS MinSales,
--MAX(Sales) OVER(PARTITION BY ProductID) AS MaxSales
FROM Sales.Orders


-- Find the difference in sales between the current and the lowest sales

SELECT
OrderID,
ProductID,
Sales,
MIN(Sales) OVER(PARTITION BY ProductID) AS LowestSales,
Sales - MIN(Sales) OVER(PARTITION BY ProductID) AS DiffFromLowest
FROM Sales.Orders