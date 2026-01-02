-- SQL Subquery practice
-- Assumed table: employees
-- Columns: id, name, department, salary

-- 1. Employees earning more than average salary
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 2. Employees working in departments with high average salary
SELECT name, department, salary
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING AVG(salary) > 60000
);

-- 3. Highest paid employee
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
