/*
	LOGICAL OPERATORS
	--> AND --> ALL CONDITIONS MUST BE TRUE
	--> OR --> ANY CONDITION CAN BE TRUE
	--> NOT --> NEGATES THE CONDITION
*/


--> AND, OR can be used to combine multiple conditions in a WHERE clause.
select * from ddl

SELECT *
FROM DDL
WHERE AGE > 22 AND State IN ('Tamil NadU', 'Kerela') AND ID >=1

--> "NOT" : used to avoid a condition follows it.

SELECT *
FROM DDL
WHERE NOT State =  'Tamil Nadu' OR NOT AGE < 22