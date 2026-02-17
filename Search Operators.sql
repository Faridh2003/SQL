/*
              SEARCH OPERATORS

    LIKE, NOT LIKE (TO FILTER BASED ON A PATTERN)

    "%" --> ANY NUMBER OF CHARACTERS eg: "U%" --> any val starting with "U" | "%a%" --> any vale containing "a"
    "_" --> ANY SINGLE CHARACTER eg: "U_A" --> any val starting with "U", followed by any single char, followed by "A"
*/


--> "%": It can have 0, 1 or n number of characters
SELECT * 
FROM customers
WHERE country LIKE ('U%') -- eg:Usa,Uranus, Ukraine ( Any value starting with "U")


--> "_": It should have only 1 character
SELECT * 
FROM customers
WHERE country LIKE ('U_A') -- eg: USA, U_A, U1A ( Any value starting with "U", followed by any single char, followed by "A")
