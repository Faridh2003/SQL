-- Find the top highest sales for each product

SELECT *
FROM(
	SELECT
	OrderID,
	ProductID,
	Sales,
	ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales) AS salesbyproduct
	FROM sales.Orders
)t WHERE salesbyproduct = 1

