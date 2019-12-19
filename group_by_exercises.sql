USE employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%'
AND(last_name LIKE '%e');

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%'
AND(last_name LIKE '%e');

SELECT last_name, COUNT(*)
FROM employees WHERE UPPER(last_name) LIKE '%Q%'
AND (UPPER(last_name) NOT LIKE '%QU%')
GROUP BY last_name
ORDER BY COUNT(*) DESC;


SELECT  COUNT(*), gender
FROM employees where first_name IN ('Irena','Maya','Vidya')
GROUP BY gender
ORDER BY COUNT(*);