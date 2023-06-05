-- QUERY for all employes with their saaries 
SELECT emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries as s
USING(emp_no);

-- QUERY for employees hires between the beginning and end of 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date DESC;

-- QUERY for department managed and department
SELECT d.dept_no, d.dept_name, i.emp_no, e.first_name, e.last_name
FROM departments AS d
INNER JOIN dept_manager AS i
USING (dept_no)
INNER JOIN employees AS e
USING (emp_no);

-- QUERY for employees and specific departments 
SELECT d.dept_no, e.emp_no, e.first_name, e.last_name, s.dept_name
FROM dept_emp AS d
INNER JOIN departments AS S
USING(dept_no)
INNER JOIN employees as e
USING (emp_no);

-- QUERY for specific first name with wildcard for last name 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- QUERY for employees by sales department, joining three tables, dept_em, departments, employees
SELECT s.dept_name,e.first_name, e.last_name
FROM dept_emp AS d
INNER JOIN departments AS S
USING(dept_no)
INNER JOIN employees as e
USING (emp_no)
WHERE s.dept_name = 'Sales';

-- QUERY for employees by sales and development department, joining three tables, dept_em, departments, employees
SELECT s.dept_name,e.first_name, e.last_name, e.emp_no
FROM dept_emp AS d
INNER JOIN departments AS S
USING(dept_no)
INNER JOIN employees as e
USING (emp_no)
WHERE s.dept_name IN ('Sales','Development');

-- QUERY for count of employees by last name
SELECT last_name, COUNT(last_name) as count_of_last_name 
FROM employees 
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

