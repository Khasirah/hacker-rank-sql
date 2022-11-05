-- Problem
/*

Query the average population of all cities in CITY where District is California.

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
avg(POPULATION)
from
CITY
where
DISTRICT = 'California';
