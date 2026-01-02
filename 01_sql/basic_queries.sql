-- SQL Practice Queries
-- Assumed table: employees
-- Columns: id, name, department, salary

-- 1. View all employees
SELECT * 
FROM employees;

-- 2. Select name and department
SELECT name, department
FROM employees;

-- 3. Filter employees by department
SELECT name, department
FROM employees
WHERE department = 'Sales';

-- 4. Sort employees by salary (highest first)
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- 5. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

