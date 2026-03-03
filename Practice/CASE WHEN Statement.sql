/*
		Evaluate list of condition and returns a value whenever the first condition is met

	Syntax:

	CASE
		WHEN cond 1 THEN result 1
		WHEN cond 2 THEN result 2
		....
		....
		ELSE result (Executes only if none of the WHEN cases are true)......[Optional]
	END

	UseCases:
	
	1. Categorizing data : Group data based on certain Condition
	2. Mapping Data : Transform value from one form to another
	3. Handle Nulls : Replace NULL with a specific value
	4. Conditional Aggregation : Perform aggregation based on specific conditions
*/

-- Case 1: Generate a report showing the total sales for each category
	 -- High   : If sales > 50
	 -- Medium : If sales is between 20 and 50
	 -- Low: If the sales is lower than 20
-- Sort the result from Highest sales to Lowest
--SELECT
--Category,
--SUM(Sales) AS Total_Sales
--FROM(
--	SELECT 
--	OrderID,
--	Sales,
--	CASE
--		WHEN Sales > 50 THEN 'High'
--		WHEN Sales > 20 THEN 'Medium'
--		ELSE 'Low'
--	END Category
--	FROM Sales.Orders
--)S
--GROUP BY Category
--ORDER BY Total_Sales DESC

-- Case 2:  Retrieve Employee detail with sex displayed as full text

SELECT
EmployeeID,
FirstName,
LastName,
Salary,
CASE
	WHEN Gender = 'M' THEN 'Male'
	WHEN Gender = 'F' THEN 'Female'
	ELSE 'Not Available'
END AS Sex
FROM Sales.Employees

-- Retrieve Customer detail with abbreviated country code

SELECT
CustomerID,
FirstName,
LastName,
Country,
Score,
CASE
	WHEN Country = 'USA' THEN 'US'
	WHEN Country = 'Germany' THEN 'GR'
	ELSE 'n/a'
END AS Country_Code1,

-- Only if same col and same operation like =,/ for all WHEN cases then we can use the below syntax - more readable
CASE Country
	WHEN 'USA' THEN 'US'
	WHEN 'Germany' THEN 'GR'
	ELSE 'n/a'
END Country_Code12
FROM Sales.Customers

-- CASE 3:  Find the Average score of customers and treat NULL as 0
--			Provide additional details such as CustomerID and LastName

SELECT 
CustomerID,
LastName,
Score,
AVG(Score) OVER() AS Average_Score,
CASE
	WHEN Score IS NULL THEN 0
	ELSE Score
END AS Score_Treated,
AVG(CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END) OVER() AS Average_Score_Clean
FROM Sales.Customers

-- Case 4:  Count how many times each customer has placed an order
--			With sales greater than 30.

SELECT DISTINCT
CustomerID,
COUNT(*) AS Total_Orders_Count, -- Normal Aggregation
SUM(CASE 
	WHEN Sales > 30 THEN 1
	ELSE 0
	END) AS High_Value_Orders_Count -- Conditional Aggregation
FROM Sales.Orders
GROUP BY CustomerID




