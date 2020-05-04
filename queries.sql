SELECT 
	employees.emp_no
	,employees.last_name
	,employees.first_name
	,employees.gender
	,salaries.salary
FROM employees 
	INNER JOIN salaries 
		ON employees.emp_no = salaries.emp_no;
		
SELECT
	employees.emp_no 
 	,employees.last_name
	,employees.first_name
	,employees.hire_date
FROM employees 
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

SELECT
	mgr.dept_no 
	,depts.dept_name 
	,mgr.emp_no 
	,emps.last_name
	,emps.first_name
	,emps.hire_date 
	,mgr.to_date
FROM dept_manager AS mgr
	JOIN employees AS emps
		ON mgr.emp_no = emps.emp_no
	JOIN departments AS depts
		ON depts.dept_no = mgr.dept_no;
		
SELECT
	emps.emp_no
	,emps.last_name
 	,emps.first_name
	,depts.dept_name
FROM employees AS emps
	JOIN dept_emp AS deptemp 
		ON emps.emp_no = deptemp.emp_no
	JOIN departments AS depts
		ON depts.dept_no = deptemp.dept_no;
		
SELECT 
	employees.last_name
	,employees.first_name
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'a%';

SELECT
	emps.emp_no
	,emps.last_name
	,emps.first_name
	,dept.dept_name
FROM employees AS emps
	JOIN dept_emp AS deptemp
		ON emps.emp_no = deptemp.emp_no
	JOIN departments AS dept
		ON dept.dept_no = deptemp.dept_no
WHERE dept.dept_name = 'Sales';

SELECT
	emps.emp_no
	,emps.last_name
	,emps.first_name
	,dept.dept_name
FROM employees AS emps
	JOIN dept_emp AS deptemp
		ON emps.emp_no = deptemp.emp_no
	JOIN departments AS dept
		ON dept.dept_no = deptemp.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development';

SELECT last_name, COUNT (last_name) AS nc
FROM employees
	GROUP BY last_name
	ORDER BY nc DESC;