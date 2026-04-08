/*
	Percentage based Ranking :
				-> CUME_DIST() :
							* Inclusive of current row
							* TIE RULE: Take the last occurence as its position if duplicates found

				-> PERCENT_RANK():
							* Exclusive of current row
							* TIE RULE: Take the first occurence as its position if duplicates found

	
*/

-- Find the products that falls within the Highest 40% of the prices

SELECT
*,
CONCAT(PercentageRank * 100 , '%' )AS percentageValue
FROM(
	SELECT
	*,
	PERCENT_RANK() OVER(ORDER BY Price DESC) AS PercentageRank
	FROM Sales.Products
)T WHERE PercentageRank <= 0.4