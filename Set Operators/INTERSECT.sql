
/* Find Employees who are also customers	


		EXCEPT OPERATOR
	--> Return "ONLY COMMON ROWS" in both queries
	--> So obviously "NO DUPLIACTES"
	--> Order does not matter
*/

SELECT
	FirstName,
	LastName
FROM Sales.Employees 

INTERSECT

SELECT
	FirstName,
	LastName
FROM Sales.Customers
