-- SQL CASE WHEN practice
-- Assumed table: employees
-- Columns: id, name, department, salary

-- 1. Categorize employees based on salary
SELECT name,
       salary,
       CASE
           WHEN salary >= 80000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employees;

-- 2. Bonus eligibility based on department
SELECT name,
       department,
       CASE
           WHEN department = 'Sales' THEN 'Eligible for Bonus'
           ELSE 'Not Eligible'
       END AS bonus_status
FROM employees;

-- 3. Salary increment percentage
SELECT name,
       salary,
       CASE
           WHEN salary < 40000 THEN salary * 1.20
           WHEN salary BETWEEN 40000 AND 70000 THEN salary * 1.10
           ELSE salary * 1.05
       END AS revised_salary
FROM employees;
