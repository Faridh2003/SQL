/*
	Using SALES DB retireve a list of all orders, along
	with the related customer, product and employee detail.

	For each order, display:
	-> Order ID
	-> Customer Name
	-> Product Name
	-> Sales Amount
	-> Product Price
	-> Salesperson's Name
*/

--Done using LEFT JOIN and "WHERE" Clause

SELECT 
	O.OrderID,
	C.FirstName AS Customers_FirstName,
	C.LastName AS Customers_LastName,
	P.Product AS Product_Name,
	O.Sales AS Sales_Amount,
	P.Price AS Product_Price,
	E.FirstName AS Salesperson_FirstName,
	E.LastName AS Salesperson_LastName
FROM Sales.Orders AS O
LEFT JOIN Sales.Customers C
ON O.CustomerID = C.CustomerID
LEFT JOIN Sales.Products AS P
ON O.ProductID = P.ProductID
LEFT JOIN Sales.Employees AS E
ON O.SalesPersonID = E.EmployeeID
