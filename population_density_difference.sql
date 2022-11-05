-- Problem
/*

Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows: CITY.jpg

| Field | Type |
| ID | Number |
| NAME | VARCHAR(17) |
| COUNTRYCODE | VARCHAR(3) |
| DISTRICT | VARCHAR(20) |
| POPULATION | NUMBER |

 */
-- Solution
SELECT
MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
