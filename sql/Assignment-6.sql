-- 1.  Write an SQL query to print details of the Workers who have joined in Feb’2014.

SELECT * FROM Worker where YEAR(JOINING_DATE) = 2014 and MONTH(JOINING_DATE) = 02;


-- 2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT column_name , count(column_name) from Worker GROUP By field HAVING COUNT(column_name) > 1

-- 3. How to remove duplicate rows from Employees table.

CREATE TABLE Employee (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    COUNTRY VARCHAR(50)
);
INSERT INTO Employee VALUES 
(1,'ADITYA','VARMA','INDIA'),
(2,'ADITYA','VARMA','INDIA'),
(3,'ADITYA','VARMA','INDIA'),
(4,'STEVE','JOBS','USA'),
(5,'STEVE','JOBS','USA'),
(6,'STEVE','JOBS','USA');

DELETE e1.* from employee e1 INNER JOIN employee e2 WHERE e1.id > e2.id AND e1.FIRST_NAME = e2.FIRST_NAME AND
 e1.LAST_NAME = e2.LAST_NAME AND e1.COUNTRY = e2.COUNTRY