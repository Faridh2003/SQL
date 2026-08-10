-- Generate a sequence of numbers from 1 to 20

WITH CTE_GENERATE AS
(
	-- Anchor query
	SELECT
	1 AS NUMBER

	UNION ALL

	--Recursive Query
	SELECT
	NUMBER + 1
	FROM CTE_GENERATE
	WHERE NUMBER < 1000
)

-- Main Query
SELECT
*
FROM CTE_GENERATE
OPTION (MAXRECURSION 1000) --> Used to Limit the no of recursions; Default is 100
						    -- Can increase the default value b giving manual number