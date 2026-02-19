
/* Generate all possible combinations of customers and orders */

/*
		CROSS JOIN
	--> Returns all possible combination between both the tables
	--> NO CONDITION NEEDED as it find all possibilities
	--> No.of rows(t1) * No.of rows(t2) possibilities
	--> Order doesn't matter
*/

SELECT *
FROM customers
CROSS JOIN orders