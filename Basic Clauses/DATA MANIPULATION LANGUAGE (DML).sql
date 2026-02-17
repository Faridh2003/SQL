/*
	DML - Data Manipulation Language(TO CHANGE IN DATA)
	--> INSERT
	--> UPDATE
	--> DELETE
*/

--THIS WILL CREATE DATA IN THE TABLE DDL 

									--MANUAL INSERTION--
INSERT INTO DDL (ID, NAME, AGE, State)
VALUES (1, 'Abitha', '45', 'Tamil Nadu'),
	   (2, 'khalil', '55', 'Tamil Nadu'),
	   (3, 'Sneha', '23', 'Kerela'),
	   (4, 'Faridh', '23', 'Tamil Nadu'),
	   (5, 'Javidh', '23', 'Karnataka')

-- This will insert the whole table into an another table using "SELECT" (SOURCE) ->(TRAGET)
-- NOTE: Ensure CREATION of Target Table 

								--INSERTION USNIG SELECT
INSERT INTO TEMP (ID, NAME, AGE, CITY)
SELECT 
	ID,
	NAME,
	AGE,
	NULL AS CITY
FROM DDL


-- THIS WILL DELETE THE ENTIRE ROW FROM THE TABLE DDL
-- IF 'WHERE' IS NOT GIVEN IT WILL DELETE ALL THE ROWS FROM THE TABLE

UPDATE DDL
	set AGE = 22
where 
	id = 5

DELETE FROM DDL
where id = 5

--THIS WILL DELETE THE ENTIRE DATA FROM THE TABLE WITHOUT ANY LOGGING (MUCH FASTER).
--CAN'T USE 'WHERE' HERE.
TRUNCATE TABLE DDL

