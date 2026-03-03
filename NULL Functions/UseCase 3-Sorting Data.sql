-- Sort the customer from Lowest to Highest scores,
-- with NULLs appearing at last

SELECT 
CustomerID,
COALESCE(Score, 0) AS Score
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score