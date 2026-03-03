-- Find the avg score of the customers
/*
		Handle null values before doing Aggregations.
	Eg: AVG of 5, 6, Null is (5+6+null)/3....so Handle it before aggregation
*/

SELECT
CustomerID,
Score,
AVG(Score) OVER() AS AverageScore1,
AVG(COALESCE(Score,0)) OVER() AS AverageScore2
FROM Sales.Customers