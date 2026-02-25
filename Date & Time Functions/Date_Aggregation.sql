--> How many orders were placed each year ?

select
	YEAR(OrderDate) AS Date,
	COUNT(*) AS N0_of_Order
from Sales.Orders 
Group BY YEAR(OrderDate)

--> How many orders were placed each Month ?

select
	MONTH(CreationTime) AS Date,
	COUNT(*) AS N0_of_Order
from Sales.Orders 
Group BY MONTH(CreationTime)

--> Giving Month Name instead of month date 1,2

select
	DATENAME(MONTH, OrderDate) AS Month,
	COUNT(*) AS N0_of_Order
from Sales.Orders 
Group BY DATENAME(MONTH, OrderDate)