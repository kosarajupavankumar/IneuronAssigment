--1. Write an SQL query to show the top n (say 10) records of a table.

SELECT TOP 10 * FROM Worker;
SELECT * FROM Worker LIMIT 10;

-- 2. Write an SQL query to determine the nth (say n=5) highest salary from a table.

SELECT DISTINCT(salary) from Worker ORDER BY DESC LIMIT 1 OFFSET 5
