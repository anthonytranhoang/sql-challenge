--List the employee number, last name, first name, sex, and salary of each employee.
select a.salary, a.emp_no, b.last_name, b.first_name, b.sex 
from salaries as a
inner join employees as b
on a.emp_no = b.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT a.emp_no, a.dept_no, b.dept_name, c.first_name, c.last_name
FROM dept_manager AS a
INNER JOIN departments AS b ON a.dept_no = b.dept_no
INNER JOIN employees AS c ON a.emp_no::VARCHAR = c.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT a.dept_no, a.emp_no, b.dept_name, c.first_name, c.last_name
FROM dept_emp AS a
INNER JOIN departments AS b ON a.dept_no = b.dept_no
INNER JOIN employees AS c ON a.emp_no::VARCHAR = c.emp_no;

--List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT a.emp_no, b.dept_name, c.first_name, c.last_name
FROM dept_emp AS a
INNER JOIN departments AS b ON a.dept_no = b.dept_no
INNER JOIN employees AS c ON a.emp_no::VARCHAR = c.emp_no
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.emp_no, b.dept_name, c.first_name, c.last_name
FROM dept_emp AS a
INNER JOIN departments AS b ON a.dept_no = b.dept_no
INNER JOIN employees AS c ON a.emp_no::VARCHAR = c.emp_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;