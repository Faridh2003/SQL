/*
		NULLIF(): Compare Two Values
			If Equal : Return NULL
			else:      Return FirstValue

		Syantax: NULLIF(Val1, val2)
	
*/

-- Find the Sales Price for each order by
-- dividing the sales by quantity

SELECT 
OrderID,
Quantity,
Sales,
Sales / NULLIF(Quantity, 0) AS Price
FROM Sales.Orders