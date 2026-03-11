/*
		   FRAME CLAUSE
	-> Defines the subset of rows within each window that is relevant for the calculation

	-> Simply Decides the scope of rows in each window

	Syntax:      ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
						      ------------	   -------------------
				Lower Value  |-> CURRENT ROW				|->	Higher Value |-> CURRENT ROW
				 of frame	 |-> N PRECEDING					 of frame	 |-> N FOLLOWING
							 |-> UNBOUNDED PRECEDING					     |-> UNBOUNDED FOLLOWING
				 
	UNBOUNDED PRECEDING : Fixed with first possible row
	UNBOUNDED FOLLOWING : Fixed with Last possible row

	Note:
	-> If we use ORDER BY FRAME clause will be there default
	-> SQL excecute WINDOW function after WHERE clause

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY Sales				
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Total_Sales 
-- ROWS UNBOUNDED PRECEDING
-- even nothing..................All 3 give same results...This short form is only allowed fpr PRECEDINHG
FROM Sales.Orders													 



SELECT
OrderID,
OrderDate,
OrderStatus,				-- Remember by default (ORDER BY always have a WINDOW hidden) 
Sales,						-- Default Frame: ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY Sales) AS Total_Sales		
FROM Sales.Orders


SELECT
OrderID,
OrderDate,
OrderStatus,		 
Sales,						
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY Sales
ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS Total_Sales		
FROM Sales.Orders


SELECT
OrderID,
OrderDate,
OrderStatus,		 
Sales,						
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY Sales
ROWS BETWEEN 1 PRECEDING AND UNBOUNDED FOLLOWING) AS Total_Sales		
FROM Sales.Orders

SELECT
OrderID,
OrderDate,
OrderStatus,		 
Sales,						
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY Sales
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Total_Sales		
FROM Sales.Orders


