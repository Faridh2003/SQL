/*

		PART EXTRACTION
	--> DAY(), MONTH(), YEAR()

	--> DATEPART(): Return Particular part of date, even info like week(which week of 52)
					as an INTEGER

	-->	DATENAME(): Return particular part of date as a string like month name(January, february etc),
					day name(even 1 AS String 1), weekday name(Monday, Tuesday, etc)

	-->	DATETRUNC(): Truncate the date to a specified part, like minute, day, month, year etc

	--> EOMONTH(): Return the last day of the month for a given date
*/

SELECT
	CreationTime,
	
	DAY(CreationTime) AS Day,
	MONTH(CreationTime) AS Month,
	YEAR(CreationTime) AS Year,

	--DATEPART() Examples
	DATEPART(MONTH, CreationTime) AS Month_DP,
	DATEPART(YEAR, CreationTime) AS Year_DP,
	DATEPART(QUARTER, CreationTime) AS Quarter_DP,
	DATEPART(WEEK, CreationTime) AS WEEK_DP,
	DATEPART(DAY, CreationTime) AS Day_DP,

	--DATENAME() Examples
	DATENAME(DAY, CreationTime) AS Day_Name,
	DATENAME(WEEKDAY, CreationTime) AS WeekDay_Name,
	DATENAME(MONTH, CreationTime) AS Month_Name,

	--DATETRUNC() Examples
	DATETRUNC(MINUTE, CreationTime) AS Truncated_Minute,
	DATETRUNC(DAY, CreationTime) AS Truncated_Day,
	DATETRUNC(YEAR, CreationTime) AS Truncated_Year,

	--EOMONTH() Example
	EOMONTH(CreationTime) AS End_Of_Month,
	CAST(DATETRUNC(MONTH, CreationTime)AS DATE) AS Start_of_Month
FROM Sales.Orders



SELECT
DATETRUNC(MONTH, CreationTime) AS Dates,
COUNT(*) AS Total_Orders
FROM Sales.Orders
GROUP BY DATETRUNC(Month, CreationTime)