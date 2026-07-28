/*
Correlated Subquery: The subquery that is dependant on the result of main query to 
					 executes its query is called correlated subquery

				1) Each rows of main query is given as data for subquery
				2) Subquery executes
				3) If subquery also giving result out of the main query that
				    row will bw in the final result
				4) Cycle is gonna repeat for n rows of main query

Non Correlated Subquery: The subquery that is completely independant on the result of main query to 
					     executes its query is called correlated subquery

						 -> Better Performer because executes only once, So faster

*/

-- Ques 1: Show all customer details and find the total order of each customers

SELECT
*,
(SELECT COUNT(*) FROM Sales.Orders AS o WHERE o.CustomerID = c.CustomerID) AS TotalOrders
FROM Sales.Customers AS C


/*
	EXISTS: Check whether the subquery return a value

		IF YES: Add that row in the final result
		ELSE:   DON'T ADD it in the final result

*/

-- Ques 2: Show the order details for the customers in germany

SELECT 
*
FROM Sales.Orders AS o
WHERE EXISTS (SELECT 1
				FROM Sales.Customers AS c 
				WHERE Country = 'Germany'
				AND o.CustomerID = c.CustomerID)