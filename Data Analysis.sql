----List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT emp_no, last_name, first_name, sex
FROM public.employees
---------
Select salary
From public.salaries 

----List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

SELECT first_name, last_name, hire_date
FROM public.employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

----***List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT dept_no, emp_no
FROM dept_manager;


----List the department number for each employee along with that employee’s employee number, last name, first name, and department name 

SELECT de.emp_no, de.dept_no, e.first_name, e.last_name
FROM public.dept_emp AS de
INNER JOIN public.employees AS e ON de.emp_no = e.emp_no;

----List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

----***List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT emp_no, last_name, first_name
FROM public.employees as e
INNER JOIN public.Dept_emp AS e on de

----***List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT emp_no, last_name, first_name, dept_name
FROM public.employees
WHERE dept_name IN ('Sales', 'Development');

----***List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)