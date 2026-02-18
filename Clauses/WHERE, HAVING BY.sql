/*
Find Average score of each country
Considering customers score not equal to 0
and return only those countries whose Average score greater than 430
*/

Select 
	country As Customer_native,
	Avg(SCORE) as Average_Score	
From customers
Where score != 0
Group by country
Having Avg(score) > 430

