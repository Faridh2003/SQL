/*
						   NULL			|    Empty String		|	 Blank Space
	-----------------------------------------------------------------------------------------------|
	Representation	|	  NULL			|		''				|		' '						   |
					|					|						|								   |
	Meaning			|	  Unknown		|	Known,Empty Value   |     Known, Space Value		   |
					|					|						|								   |
	Data Type		|	 Special Marker	|	String(0)			|	 String(1 or more)			   |
					|					|						|								   |
	Storage			|	 very Minimal	|	Occupies Memory		|	 Occupies Memory(Each Space)   |
					|					|						|								   |
	Performance		|	 Best			|	Fast				|	 Slow						   |
					|					|						|								   |
	Comparison		|	 IS NULL		|	= ''				|	 = ' '						   |
	-----------------------------------------------------------------------------------------------|
*/


WITH ORDERS AS(
SELECT 1 ID, 'A' Category UNION
SELECT 2, NULL UNION
SELECT 3, '' UNION
SELECT 4, '  '
)
SELECT
*,
TRIM(Category) AS Policy1, -- Converting Blank Space into Empty String
NULLIF(TRIM(Category), '') AS Policy2,	  -- Converting Empty String to NULL
COALESCE(NULLIF(TRIM(Category), ''), 'UNKNOWN') AS Policy3 -- Converting NULL into default val 'Unknown'
FROM ORDERS


/*
							DATA POLICY(Flow)

	    1. Use NULL and Empty String avoid using Blank Spsaces 
								
		2. Use only NULL and avoid using Empty String and Blank Spaces (UseCase: Data Preparation for optimization and storage, i.e., Before inserting into DB)
																				 
		3. Use default value 'Unknown' and avoid using NULL, Empty String, Balnk Space (UseCase: Data Preparation for Reporting, i.e., Before showcasing the report)

*/