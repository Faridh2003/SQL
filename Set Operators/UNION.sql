/* Combine the data from employees and customers into One data */

/*
		UNINON OPERATOR
	--> Return all "DISTICT ROWS" from both queries
	--> So obviously it remove duplicate rows from the result
*/

SELECT
	FirstName,
	LastName
FROM Sales.Customers

UNION

SELECT
	FirstName,
	LastName
FROM Sales.Employees
