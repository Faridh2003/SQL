/*
	-->	DATEADD(): This function is used to add or subtract a specified time interval from a date.
		Syntax: DATEADD(datepart, number, date)

	-->	DATEDIFF(): Return the difference between two dates in terms of a specified date part.
		Syntax: DATEDIFF(datepart, startdate, enddate)
*/

--DATEADD() Example
SELECT
OrderID,
OrderDate,
DATEADD(YEAR,-10,OrderDate) AS Order_10Years_Ago,
DATEADD(Month,-12,OrderDate) AS Order_1Year_Ago
FROM SALES.Orders

--DATEDIFF() Example
--Calculate the age of employees

SELECT 
BirthDate,
DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age,
DATEDIFF(YEAR, '2003-03-21', GETDATE()) AS MyAge
FROM SALES.Employees

--Find the Average Shipping duration in days for each month

SELECT
MONTH(OrderDate) AS Order_Month,
AVG(DATEDIFF(DAY,OrderDate,ShipDate)) AS Average_Shipping
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

--TIME GAP Analysis
--Find the number of days between each order and the previous order

SELECT
OrderID,
OrderDate AS Cur_Date,
LAG(OrderDate) OVER (ORDER BY OrderDate) AS Previous_Date,
DATEDIFF(DAY,LAG(OrderDate) OVER(ORDER BY OrderDate), OrderDate) AS Days_Between_Orders
FROM Sales.Orders
