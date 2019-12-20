USE employees;
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT CONCAT(dept_name) as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' ORDER BY Department_Manager;

SELECT CONCAT(dept_name) as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND (gender = 'F') ORDER BY Manager_Name;


SELECT DISTINCT title, COUNT(*)
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
JOIN titles as t
ON t.emp_no = e.emp_no
WHERE t.to_date = '9999-01-01' AND d.dept_no = 'd009' GROUP BY title ORDER BY title;


SELECT CONCAT(dept_name) as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Name, CONCAT(salary) as Salary
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN salaries as sal
ON sal.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND(sal.to_date = '9999-01-01') ORDER BY Department_Name;


