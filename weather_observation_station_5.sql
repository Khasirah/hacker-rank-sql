--Problem STATEMENT
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
 
Let |city| be the length of the city, write a query to print two lines:
1. First line is city1 and |city1| separated by space, where |city1| is the possible minimum value.
2. Second line is city2 and |city2| separated by space, where |city2|  is the possible maximum value.
If there are more than one possible cities print the lexicographical smallest.
*/

--Solution

WITH length_city
AS
(
    SELECT CITY, LENGTH(CITY) AS length_name_city
    FROM STATION
),

min_length
AS
(
    SELECT MIN(LENGTH(CITY)) AS min_length_name_city
    FROM STATION
),

max_length
AS
(
    SELECT MAX(LENGTH(CITY)) AS max_length_name_city
    FROM STATION
),

city_with_min_length
AS
(
    SELECT CITY, length_name_city
    FROM length_city, min_length
    WHERE length_name_city = min_length_name_city
    ORDER BY CITY ASC
    LIMIT 1
),

city_with_max_length
AS
(
    SELECT CITY, length_name_city
    FROM length_city, max_length
    WHERE length_name_city = max_length_name_city
    ORDER BY CITY DESC
    LIMIT 1
)

SELECT *
FROM city_with_min_length
UNION
SELECT *
FROM city_with_max_length;