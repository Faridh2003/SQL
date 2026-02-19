/*  Get All customers along with their orders 
	but only for customers who placed an order 
	without using INNER JOIN	*/

-- using FULL JOIN
SELECT *
FROM customers AS C
FULL JOIN orders AS O
ON C.id = O.customer_id
WHERE C.id IS NOT NULL AND O.customer_id IS NOT NULL

-----------------------------------------------------------------
 -- USING LEFT JOIN
SELECT *
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id
WHERE O.customer_id IS NOT NULL