-- Problem
/*

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

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
SUM(POPULATION)
FROM
CITY
WHERE
COUNTRYCODE = 'JPN';
