-- 1. Write an SQL query to fetch intersecting records of two tables.

SELECT <Column_names> FROM table_1 INTERSECT SELECT <Column_names> FROM table_2;

-- 2.  Write an SQL query to show records from one table that another table does not have.

SELECT * FROM table_1 EXCEPT SELECT * FROM table_2;