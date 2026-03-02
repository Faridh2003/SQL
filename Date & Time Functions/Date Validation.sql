/*
	ISDATE(): Return 1 if given value is Date
*/

--Cast the string values date  into date values

SELECT
	OrderDate,
	ISDATE(OrderDate) AS Validate,
	CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE)
	END NewOrderDate
FROM
(
	SELECT '2023-03-21' AS OrderDate UNION
	SELECT '2025-09-14' UNION
	SELECT '1985-10-16' UNION
	SELECT '15-08-2025'
)a

