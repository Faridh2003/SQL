
/* Get all ORDERS without matching CUSTOMERS */

/*
		RIGHT ANTI JOIN

	--> Return ALL ROWS in RIGHT that has NOT MATCH WITH LEFT
	--> ORDER of the table is VERY IMPORTANT
*/

SELECT
	C.id,
	C.first_name,
	O.order_id,
	O.sales
FROM customers AS C
RIGHT JOIN orders AS O
ON C.id = O.customer_id
WHERE C.id IS NULL


-----------------------------------------------------------------------------------------

/* Get all ORDERS without matching CUSTOMERS */

--SAME TASK using LEFT ANTI JOIN

SELECT 
 C.id,
 C.first_name,
 O.order_id,
 O.sales
FROM orders AS O
LEFT JOIN customers AS C
ON C.id = O.customer_id
WHERE C.id IS NULL