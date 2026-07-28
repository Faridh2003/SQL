/*
	LOGICAL OPERATORS
	IN, NOT IN -> To check whether the value matches any values in the list; eg: WHERE X IN (1,2,3)
	
	ANY		-> To check whether the value matches any values in the list.(ATLEAST ONE)
				can work with comparison operators like (<, >, =, <=, >=, =, !=)
	
	ALL		-> To check whether ALL the value matches with values in the list.
	
	EXISTS	-> Check for the existence of the value in a data
*/

-- Ques 1: Show the details of orders made by customers in Germany

-- Main Query
SELECT
*
FROM Sales.Orders
WHERE CustomerID IN 
				(SELECT		--Sub Query
				CustomerID
				FROM Sales.Customers
				WHERE Country = 'Germany')

-- Ques 1: Show the details of orders made by customers not from Germany

-- Main Query
SELECT
*
FROM Sales.Orders
WHERE CustomerID NOT IN 
				(SELECT		--Sub Query
				CustomerID
				FROM Sales.Customers
				WHERE Country = 'Germany')

       
-- ANY:

/* QUES2: Find Female employees whose salaries are greater
		   than any male employee */

SELECT
EmployeeID,
FirstName,
LastName,
Gender,
Salary
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M')

-- ALL: 

/* QUES 3: Find Female employees whose salaries are greater
		   than all male employee */

SELECT
EmployeeID,
FirstName,
LastName,
Gender,
Salary
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M')

