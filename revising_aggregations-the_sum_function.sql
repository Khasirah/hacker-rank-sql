-- Problem
/*

Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows: 

| Field | Type |
| ID | Number |
| NAME | VARCHAR(17) |
| COUNTRYCODE | VARCHAR(3) |
| DISTRICT | VARCHAR(20) |
| POPULATION | NUMBER |

 */

-- Solution
SELECT
SUM(POPULATION)
FROM CITY
WHERE
DISTRICT = 'California';
