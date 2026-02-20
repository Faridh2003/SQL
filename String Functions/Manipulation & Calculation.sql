/*
		STRING FUNCTIONS(MANIPULATION)
	--> Used to update, change, edit, create, prepare your data using these funstions
	--> Eg: CONCAT(), UPPER(), LOWER(), TRIM(), REPLACE()....


    CONCAT() -> To combine multiple columns into same column

	Show the List of customers first name and last name in a single column */


SELECT
	CONCAT(FirstName, ' ', LOWER(LastName), '-', Score) AS Name,
	UPPER(Country) AS COUNTRY_NAME,
	REPLACE('123-454-876', '-', '') AS PHONE
FROM Sales.Customers

SELECT 
'file.txt' AS OLD_FILE,
REPLACE('file.txt', '.txt', '.csv') AS UPDATED_FORMAT
FROM sales.Customers

SELECT 
FirstName,
LastName,
LEN(LastName) AS LENGTH_BEFORE,
LEN(TRIM(LastName)) AS LENGHT_AFTER,
LEN(LastName) - LEN(TRIM(LastName)) AS FLAG
from sales.Customers
WHERE LEN(LastName) - LEN(TRIM(LastName)) = 0
