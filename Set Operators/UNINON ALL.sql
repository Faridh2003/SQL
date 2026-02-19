/* Combine the data from employees and customers into One table
			INCLUDING DUPLIACTES	


		UNINON ALL OPERATOR
	--> Return "ALL ROWS" from both queries
	--> So obviously it "ALLOW DUPLICATE" rows to the result
*/

SELECT
	FirstName,
	LastName
FROM Sales.Customers

UNION ALL

SELECT
	FirstName,
	LastName
FROM Sales.Employees
