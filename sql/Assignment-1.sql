-- 1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as &lt;WORKER_NAME&gt;.

SELECT FIRST_NAME as WORKER_NAME FROM Worker;

-- 2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

SELECT DISTINCT DEPARTMENT FROM Worker;

-- 3. Write an SQL query to show the last 5 record from a table.

SELECT * FROM Worker ORDER BY Id DESC LIMIT 5;
