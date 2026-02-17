/*
   MEMBERSHIP OPERATORS:
   --> IN --> TO MAKE A GROUP OF VALUES AND FILTER eg: values "IN" my group
   --> "NOT IN" --> TO MAKE A GROUP OF VALUES AND FILTER eg: values "NOT IN" my group
*/

--> Customers from countries other than India and Germany
SELECT * 
FROM customers
WHERE country NOT IN ('India', 'Germany')

--> Customers from India and Germany
SELECT * 
FROM customers
WHERE country IN ('India', 'Germany')