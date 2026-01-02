-- Basic SQL practice queries

-- 1. Select all columns from a table
SELECT *
FROM table_name;

-- 2. Select specific columns
SELECT column1, column2
FROM table_name;

-- 3. Filter records using WHERE
SELECT *
FROM table_name
WHERE condition;

-- 4. Aggregate data using GROUP BY
SELECT column1, COUNT(*) AS total_count
FROM table_name
GROUP BY column1;

-- 5. Sort results
SELECT *
FROM table_name
ORDER BY column1 DESC;
