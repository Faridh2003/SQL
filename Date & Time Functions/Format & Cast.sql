SELECT 
OrderDate,
FORMAT(OrderDate, 'dd') AS Formated_Date,
FORMAT(OrderDate, 'ddd') AS Formated_Date1,
FORMAT(OrderDate, 'dddd') AS Formated_Date2,
FORMAT(OrderDate, 'MM') AS Formated_MM,
FORMAT(OrderDate, 'MMM') AS Formated_MMM,
FORMAT(OrderDate, 'MMMM') AS Formated_MMMM
FROM Sales.Orders


/*
		Show creation time using following Format:
		Day Wed Jan Q1 2025 12:24:56 PM
*/

SELECT 
CreationTime,
'Day ' + FORMAT(CreationTime, 'ddd ') + FORMAT(CreationTime, 'MMM ') + 'Q' +
DATENAME(QUARTER, CreationTime) + ' ' + 
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS Custom_Time
FROM SALES.Orders


/*
		CONVERT() : Return the data in the converted data type and desired format
*/

SELECT
OrderDate,
CreationTime,
CONVERT(DATE, CreationTime) AS [DateTime To Date],
CONVERT(DATE, '2025-08-23') AS [Date To String],
CONVERT(INT, '134') AS [String To Integer],
CONVERT(VARCHAR, CreationTime, 32) AS [US Style : 32],
CONVERT(VARCHAR, CreationTime, 34) AS [EURO Style : 34],
CONVERT(VARCHAR, CreationTime, 111) AS [JAPAN Style conv : 111]
FROM SALES.Orders


/*
		CAST(): Convert into a data type
*/

SELECT 
CAST(LEFT(CreationTime,4) AS INT) AS [Year To Int],
CreationTime,
CAST(CreationTime AS DATE) AS [DateTime To Date]
FROM SALES.Orders