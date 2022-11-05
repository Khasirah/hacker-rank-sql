-- Problem
/*

Query the average population for all cities in CITY, rounded down to the nearest integer.

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
select
round(avg(POPULATION),0)
from
CITY;
