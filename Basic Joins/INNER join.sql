/*	Get all customers along with their orders,
	But only for customers who have palced an order */

---------------------------------------------------------------------------------------------

/*
		INNER JOIN
	--> Retruns only matching rows in BOTH the tables
	--> ONLY COMMON DATA

	NOTE: Order of the table does not matter 
	i.e: 
	select * FROM Table A INNER JOIN Table B
	select * FROM Table B INNER JOIN Table A ..........both are same and gave same result */


--It is always a better practice to mention table_name.col_name (Must to avoid Col ambigity)

SELECT 
	customers.id,	
	customers.first_name,
	customers.country,
	orders.order_id,
	orders.sales
FROM customers
INNER JOIN orders
on customers.id = orders.customer_id

----------------------------------------------------------------------------------------------------------------

/*
	--> It is always a better practice to make ALIAS for table_name (Must to avoid Col ambigity)
	--> Can see both query gives same results (As ORDER DOES NOT MATTERS in INNER JOIN)
*/
SELECT 
	C.id,	
	C.first_name,
	C.country,
	O.order_id,
	O.sales
FROM orders AS O
INNER JOIN customers AS C
on C.id = O.customer_id