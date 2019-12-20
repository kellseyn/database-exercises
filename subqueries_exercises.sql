USE employees;

SELECT CONCAT(first_name, ' ', last_name), hire_date, emp_no
FROM employees
WHERE hire_date IN(
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW() AND(gender = 'F')
);

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees
        WHERE to_date > NOW() AND (gender = 'F')
    )
);

SELECT first_name, last_name
FROM employees
WHERE emp_no =(
    SELECT emp_no
    FROM salaries
    WHERE salary ORDER BY salary DESC LIMIT 1
);
