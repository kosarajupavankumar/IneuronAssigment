-- 1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

SELECT REPLACE(FIRST_NAME,'a','A') FROM Worker

-- 2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM WORKER ORDER BY FIRST_NAME ASC, DEPARTMENT DESC

-- 3. Write an SQL query to fetch the names of workers who earn the highest salary.

SELECT FIRST_NAME, LAST_NAME FROM workers as w1 where w1.salary = (SELECT MAX(Salary) * FROM workers);