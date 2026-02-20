/*
		NUMERIC FUNCTIONS
	--> ROUND() : It will round off the value based on estimation
				SYNTAX: ROUND(VAL, POSITION)
	-->ABS() : It will return the ABSOLUTE VALUE of the Input Eg: ABS(10) = 10 || ABS(-10) = 10
	*/

SELECT 
3.516 AS Number,
ROUND(3.516 ,2) AS ROUND2, -- 3.520
ROUND(3.516, 1) AS ROUND1, -- 3.500
ROUND(3.516, 0) AS ROUND0  -- 4.000

SELECT 
-10,
ABS(-10),
ABS(10)