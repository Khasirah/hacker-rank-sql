-- Problem
/*
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

Input Format

The Employee table containing employee data for a company is described as follows:

| Column | Type |
| employee_id | Integer |
| name | String |
| months | Integer |
| salary | Integer |



where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

Sample Input

| employee_id | name | months | salary |
| 12228 | Rose | 15 | 1968 |

Sample Output

Angela
Michael
Todd
Joe
Explanation

Angela has been an employee for 1 month and earns $3443 per month.

Michael has been an employee for 6 months and earns $2017 per month.

Todd has been an employee for 5 months and earns $3996 per month.

Joe has been an employee for 9 months and earns $3573 per month.

We order our output by ascending employee_id.
 */
-- Solution
SELECT name
FROM Employee
WHERE
salary > 2000
AND months < 10
ORDER BY employee_id ASC;
