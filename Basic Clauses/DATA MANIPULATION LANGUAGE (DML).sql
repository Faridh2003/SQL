/*
	DML - Data Manipulation Language(TO CHANGE IN DATA)
	--> INSERT
	--> UPDATE
	--> DELETE
*/

--THIS WILL CREATE DATA IN THE TABLE DDL
INSERT INTO DDL (ID, NAME, AGE, State)
VALUES (1, 'Abitha', '45', 'Tamil Nadu'),
	   (2, 'khalil', '55', 'Tamil Nadu'),
	   (3, 'Sneha', '23', 'Kerela'),
	   (4, 'Faridh', '23', 'Tamil Nadu'),
	   (5, 'Javidh', '23', 'Karnataka')

-- THIS WILL UPDATE THE DATA IN THE TABLE DDL
UPDATE DDL
	set AGE = 22
where 
	id = 5

DELETE FROM DDL
where id = 5

