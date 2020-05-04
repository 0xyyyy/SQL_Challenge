-- CREATE TABLE departments (
-- dept_no VARCHAR(255) PRIMARY KEY
-- ,dept_name VARCHAR(255)
-- );

-- CREATE TABLE employees (
-- emp_no INT PRIMARY KEY 
-- ,birth_date VARCHAR(255)
-- ,first_name VARCHAR(255)
-- ,last_name VARCHAR(255)
-- ,gender VARCHAR(3)
-- ,hire_date VARCHAR(255)
-- );

-- CREATE TABLE dept_emp (
-- emp_no INT
-- ,dept_no VARCHAR(255)
-- ,from_date VARCHAR(255)
-- ,to_date VARCHAR(255)
-- ,FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- ,FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
-- );

-- CREATE TABLE dept_manager (
-- dept_no VARCHAR(255) 
-- ,emp_no INT 
-- ,from_date VARCHAR(255)
-- ,to_date VARCHAR(255)
-- ,FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
-- ,FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

-- CREATE TABLE salaries (
-- emp_no INT
-- ,salary INT
-- ,from_date VARCHAR(255)
-- ,to_date VARCHAR(255)
-- ,FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

-- CREATE TABLE titles (
-- emp_no INT 
-- ,title VARCHAR(255)
-- ,from_date VARCHAR(255)
-- ,to_date VARCHAR(255)
-- ,FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

