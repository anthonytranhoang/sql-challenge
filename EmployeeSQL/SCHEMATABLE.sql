CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
	);
	
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(255) NOT NULL,
    birth_date VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(255) NOT NULL,
    hire_date VARCHAR(255) NOT NULL
);

CREATE TABLE departments (
	dept_no VARCHAR(255) PRIMARY KEY, 
	dept_name VARCHAR(255)
	);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY, 
	salary INT
	);

CREATE TABLE dept_emp (
	emp_no INT, 
	dept_no VARCHAR(255) 
	);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR(255) , 
	emp_no INT 
	);