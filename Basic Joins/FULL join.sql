/*	 Get all customers and all orders,
	 Even if there is NO match  */

/*
		FULL JOIN
	--> Return ALL ROWS from BOTH tables
	--> ORDER of the table DOES NOT matter
*/

SELECT 
	C.id,
	C.first_name,
	O.order_id,
	O.sales
FROM customers AS C
FULL JOIN orders AS O
ON O.customer_id = C.id