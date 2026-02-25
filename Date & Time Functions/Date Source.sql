/*
		There are 3 ways of source to get a date using SQL Query
	-> Get date column from table

	-> Hardcoded date : Give date directly in query Eg: '21/03/2003' AS Hardcoded

	-> GETDATE() : Returns cur date and time while query got executed
*/


SELECT 
CreationTime,
OrderDate,
ShipDate,
'21/03/2003' AS Hardcoded,
GETDATE() AS Cur_Time
FROM Sales.Orders