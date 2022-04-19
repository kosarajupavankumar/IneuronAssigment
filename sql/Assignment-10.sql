-- 1. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY salary DESC) AS R_NUM, first_name, salary FROM employee) as HEllO WHERE R_NUM=5;


-- 2. Write an SQL query to fetch the list of employees with the same salary.

CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT
);

INSERT INTO employee VALUES
(1,'Luke','Skywalker',100),
(2,'Anakin','Skywalker',200),
(3,'Liea','Skywalker',50),
(4,'Rey','Skywalker',150),
(5,'Han','Solo',100),
(6,'Darth','Vader',150);

SELECT * FROM employee ORDER BY salary ASC;