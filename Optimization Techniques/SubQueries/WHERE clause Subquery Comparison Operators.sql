/*
COMPARISON OPERATORS : >, <, >=, <=, =, !=
*/


--Ques 1:  Find the products that have higher price than the average of all products


SELECT
*
FROM Sales.Products
WHERE Price > (SELECT AVG(Price) FROM Sales.Products)