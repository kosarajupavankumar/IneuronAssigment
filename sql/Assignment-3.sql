-- 1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

SELECT RTRIM(FIRST_NAME) FROM Worker

--2.  Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

SELECT DISTINCT(DEPARTMENT), LEN(DEPARTMENT) FROM Worker

--3.  Write an SQL query to fetch nth max salaries from a table.

SELECT DISTINCT(Salary) FROM Worker ORDER BY Salary DESC LIMIT 1 OFFSET n;