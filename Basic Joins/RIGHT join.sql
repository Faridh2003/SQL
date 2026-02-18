/*	 Get all customers along with their orders,
	 Including orders without matching customers  */


/*
		RIGHT JOIN
	--> Retrun "ALL ROWS FROM RIGHT" and "ONLY MATCHING FROM LEFT" 
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


-------------------------------------------------------------------------

-- Same task but only using "LEFT JOIN"

/*	 Get all customers along with their orders,
	 Including orders without matching customers  */

SELECT 
	C.id,
	C.country,
	O.order_id,
	O.sales
FROM orders as O
LEFT JOIN customers AS C
ON C.id = O.customer_id

