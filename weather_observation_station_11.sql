-- Problem
/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

| Field | Type |
| ID | NUMBER |
| CITY | VARCHAR(21) |
| STATE | VARCHAR(2) |
| LAT_N | NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

-- Solution
SELECT DISTINCT CITY
FROM STATION
WHERE
LOWER(LEFT(CITY, 1)) NOT IN ('a','i','u','e','o')
OR LOWER(RIGHT(CITY, 1)) NOT IN ('a','i','u','e','o');
