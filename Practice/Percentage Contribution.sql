-- Find the percentage contribution of each product's sales to total sales
-- Formula : Percentage = (Product Sales / Total Sales) * 100


SELECT
ProductID,
Sales,
SUM(Sales) OVER() AS Total_Sales,
ROUND(CAST(Sales AS FLOAT) / SUM(Sales) OVER() * 100, 2) AS Percentage_Contribution
FROM SALES.Orders