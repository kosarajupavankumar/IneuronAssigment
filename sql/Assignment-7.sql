-- 1. Write an SQL query to show only odd rows from a table.

SELECT * FROM Worker Where MOD(worker_id,2) = 1

-- 2. Write an SQL query to clone a new table from another table.

-- # Code to Create a New table
CREATE TABLE CloneWorker (
    WORKER_ID INT NOT NULL AUTO INCREMENT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    DEPARTMENT VARCHAR(50),
    JOINING_DATE DATETIME
);
-- # Code to Clone content of a table to another table
INSERT INTO CloneWorker SELECT * FROM Worker;