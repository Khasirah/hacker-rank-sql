--Problem
/*

Query a count of the number of cities in CITY having a Population larger than 100,000.

Input Format

| Field | Type |
| ID | Number |
| NAME | VARCHAR(17) |
| COUNTRYCODE | VARCHAR(3) |
| DISTRICT | VARCHAR(20) |
| POPULATION | NUMBER |

The CITY table is described as follows:

 */

-- Solution
SELECT
COUNT(1)
FROM
CITY
WHERE
POPULATION > 100000;
