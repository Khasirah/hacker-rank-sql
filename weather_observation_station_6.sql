--Problem Statement
/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Write a query to print the list of CITY that start with vowels in lexicographical order. Do not print duplicates.
*/

--Solution

WITH city_with_vowel
AS
(
    SELECT CITY, SUBSTRING(CITY,1,1) AS vowel
    FROM STATION
)

SELECT CITY
FROM city_with_vowel
WHERE vowel IN ("A","I","U","E","O")
ORDER BY CITY;

-- Solution 2
SELECT CITY
FROM STATION
WHERE CITY LIKE '[AIUEO]%';