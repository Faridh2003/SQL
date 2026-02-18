
/*	 Get all customers along with their orders,
	 Including those without orders  */


/*
		LEFT JOIN
	--> Retrun "ALL ROWS FROM LEFT" and "ONLY MATCHING FROM RIGHT" 
	--> ORDER of the table is VERY IMPORTANT
*/

SELECT *
FROM customers
LEFT JOIN orders
ON id = customer_id

------------------------------------------------------------------------------------

--BETTER PRACTICE

SELECT
	C.id,
	C.first_name,
	C.country,
	O.order_id,
	O.sales
FROM customers AS C
LEFT JOIN orders AS O
ON id = customer_id

