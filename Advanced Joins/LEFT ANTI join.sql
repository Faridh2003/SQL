
/* Get all customers who haven't placed any Order */

/*
		LEFT ANTI JOIN
	--> Return ALL ROWS in left that has NOT MATCH WITH right
	--> ORDER of the table is VERY IMPORTANT
*/

SELECT
	C.id,
	C.first_name,
	O.order_id,
	O.sales
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id
WHERE customer_id IS NULL