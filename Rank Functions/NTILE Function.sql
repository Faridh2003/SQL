/*
NTILE():
	Divide the rows into specified number of groups

Syntax: NTILE(2) OVER(ORDER BY rowname)
			This number is mandatory, that decides the number of buckets

		Bucket Size =	No.of rows
						----------
						No.of.buckets 
		
		RULE: LARGER GROUP COMES FIRST
*/

SELECT
OrderId,
Sales,
NTILE(3) OVER(ORDER BY Sales) AS Bucket3,
NTILE(4) OVER(ORDER BY Sales) AS Bucket4,
NTILE(6) OVER(ORDER BY Sales) AS Bucket6
FROM Sales.Orders