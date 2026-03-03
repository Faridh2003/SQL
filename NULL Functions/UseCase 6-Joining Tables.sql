-- List all details of customers who have not placed any orders

SELECT
C.*,
O.OrderID
FROM sales.Customers AS C
LEFT JOIN Sales.Orders AS O
ON C.CustomerID = O.CustomerID
WHERE O.CustomerID IS NULL

SELECT *
FROM Sales.Customers

SELECT *
FROM Sales.Orders