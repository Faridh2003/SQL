
/* Find Employees who are not customers at the same time	


		EXCEPT OPERATOR
	--> Return "ALL DISTINCT ROWS" from "FIRST QUERY" that are "NOT IN SECOND QUERY"
	--> So obviously "ORDER IS IMPORTANT"(only set operator like this)
*/

SELECT
	FirstName,
	LastName
FROM Sales.Employees 

EXCEPT

SELECT
	FirstName,
	LastName
FROM Sales.Customers
