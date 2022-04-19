--1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

SELECT * FROM WORKER where FIRST_NAME NOT IN ('Vipul','Satish')

--2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

SELECT * FROM Worker WHERE FIRST_NAME LIKE '______h';

--3. Write a query to validate Email of Employee.

SELECT * FROM Worker where Email LIKE "_%@_%._%"
