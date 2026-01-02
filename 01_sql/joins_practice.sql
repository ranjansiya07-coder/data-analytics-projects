-- SQL JOIN practice
-- Assumed tables:
-- employees(emp_id, name, dept_id, salary)
-- departments(dept_id, dept_name)

-- 1. INNER JOIN: employee with department
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 2. LEFT JOIN: all employees, even without department
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. Count employees per department
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
