/*
		IS NULL : Returns 'True' if VALUE IS NULL else 'False'

		IS NOT NULL: Returns 'True' if VALUE IS NOT NULL else 'False'

*/

-- Identify customers who have no scores

SELECT  *
FROM Sales.Customers
WHERE Score IS NULL

-- Identify customers who have scores

SELECT  *
FROM Sales.Customers
WHERE Score IS NOT NULL