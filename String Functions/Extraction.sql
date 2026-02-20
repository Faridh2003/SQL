
/*		STRING FUNCTIONS - EXTRACTION TYPE
	--> LEFT : Extract from the FIRST, syantax: LEFT('VALUE', No.of.char)
	--> RIGHT: Extract from the LAST, syantax: RIGHT('VALUE', No.of.char)
	--> SUBSTRING: Extract from the SPECIFIC POSITION, syantax: SUBSTRING('VALUE', Starting point, No.of.char)
	
	TASK 1 : RETRIEVE THE FIRST TWO CHARACTERS FOR EACH NAME */


SELECT 
FirstName,
LastName,
UPPER(LEFT(FirstName, 2)) AS START,
UPPER(RIGHT(LastName, 2)) AS LAST
FROM sales.Customers

--TASK 2 : Retrieve the list of customer's firstname after removing the first character from the name

SELECT 
FirstName,
LastName,
UPPER(SUBSTRING(FirstName, 2,LEN(FirstName) - 1)) AS NAME
FROM sales.Customers
