-- Problem
/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.
Input Format

| Columns | Type |
| Name | String |
| Occupation | String |

The OCCUPATIONS table is described as follows:  Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input

An OCCUPATIONS table that contains the following records:

| Name | Occupation |
| Samantha | Doctor |
| Julia | Actor |
| Maria | Actor |
| Meera | Singer |
| Ashely | Professor |
| Ketty | Professor |
| Christeen | Professor |
| Jane | Actor |
| Jenny | Doctor |
| Priya | Singer |

Sample Output

Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.
Explanation

The results of the first query are formatted to the problem description's specifications.
The results of the second query are ascendingly ordered first by number of names corresponding to each profession (2 <= 2 <= 3 <= 3), and then alphabetically by profession (doctor <= singer, and acror <= professor).
 */
-- Solution
WITH ordered_names(name) AS
    (SELECT 
     CONCAT(Name,'(', LEFT(Occupation,1),')') AS a
     FROM OCCUPATIONS
     ORDER BY a)

SELECT name
FROM ordered_names;
WITH occurrences_of_occupation(occupation_cout,occupation) AS
    (SELECT 
     COUNT(Occupation) AS a, 
     CONCAT(LOWER(Occupation),'s.') AS b
     FROM OCCUPATIONS
     GROUP BY Occupation
     ORDER BY a, b ASC
    )
SELECT CONCAT('There are a total of ',occupation_cout,' ',occupation)
FROM occurrences_of_occupation;
