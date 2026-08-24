-- Show the employee hierachy by displaying each employee's level
-- within the organization

WITH Employee_Hierachy AS
(	
	-- Anchor Query
	SELECT
		EmployeeID,
		FirstName,
		ManagerID,
		1 AS Level
	FROM Sales.Employees
	WHERE ManagerID IS NULL

	UNION ALL

	-- Recursive Query
	SELECT
		e.EmployeeID,
		e.FirstName,
		e.ManagerID,
		Level +1
	FROM Sales.Employees AS e
	INNER JOIN Employee_Hierachy eh
	ON e.ManagerID = eh.EmployeeID
)

-- Main Query

SELECT
*
FROM Employee_Hierachy
