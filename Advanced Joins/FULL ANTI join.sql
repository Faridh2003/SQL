
/*  Find customers without orders and Orders without customers */

/*
		FULL ANTI JOIN

	--> Returns UNMATCHED ROWS in either Tables
	--> Order is not important
*/

SELECT *
FROM customers AS C
FULL JOIN orders AS O
ON C.id = O.customer_id
WHERE 
	O.customer_id IS NULL
	or C.id IS NULL 