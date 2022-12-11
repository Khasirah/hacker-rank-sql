-- Problem
/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

Input Format

The STATION table is described as follows:

Station.jpg
| Field | Type |
| ID | NUMBER |
| CITY | VARCHAR2(21) |
| STATE | VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.
 */
-- Solution
WITH q_max_lat_n AS
    (
        SELECT MAX(LAT_N) AS max_lat_n
        FROM STATION
        WHERE LAT_N < 137.2345
    )
SELECT ROUND(LONG_W,4)
FROM STATION, q_max_lat_n
WHERE LAT_N = max_lat_n;
