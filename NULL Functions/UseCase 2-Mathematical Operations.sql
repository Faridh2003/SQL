/*
		Handle null values before any mathematical operations
	Eg: 0 + 5     --> 5    i.e. Null + 5  --> Null
		'A' + 'B' --> 'AB' i.e. Null +'B' --> Null
*/


-- Display Full Name of the customer in a single field,
-- by merging their FirstName and LastName.
-- Add 10 bonus point to each costomer score

SELECT
FirstName,
LastName,
COALESCE(FirstName, '') + ' ' + COALESCE(LastName, '') AS FullName,
Score,
COALESCE(Score, 0) + 10 AS Bonus_Score
From Sales.Customers