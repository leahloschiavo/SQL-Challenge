----List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT d.dept_no, e.emp_no, d.dept_name, e.last_name, e.first_name, ol.emp_no AS manager_emp_no
FROM Departments AS d
JOIN Dept_manager AS ol ON d.dept_no = ol.dept_no
JOIN Employees AS e ON e.emp_no = ol.emp_no;
---------


----List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

SELECT first_name, last_name, hire_date
FROM public.employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

----***List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT d.dept_no, e.emp_no, d.dept_name, e.last_name, e.first_name, ol.emp_no AS manager_emp_no
FROM Departments AS d
JOIN Dept_manager AS ol ON d.dept_no = ol.dept_no
JOIN Employees AS e ON e.emp_no = ol.emp_no;

----List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT d.dept_no, e.emp_no, d.dept_name, e.last_name, e.first_name, ol.emp_no AS manager_emp_no
FROM Departments AS d
JOIN Dept_manager AS ol ON d.dept_no = ol.dept_no
JOIN Employees AS e ON e.emp_no = ol.emp_no;

----List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

----List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM public.employees AS e
INNER JOIN public.Dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN public.Departments AS d ON de.dept_no = d.dept_no

----List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT e.emp_no, e.last_name, e.first_name, e.sex
FROM public.employees AS e
INNER JOIN public.Dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN public.Departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
UNION ALL
SELECT e.emp_no, e.last_name, e.first_name, 'NA' AS sex
FROM public.employees AS e
WHERE e.emp_no NOT IN (SELECT emp_no FROM public.Dept_emp);

----***List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT last_name, COUNT(*) as frequency
FROM public.employees
GROUP BY last_name
ORDER BY frequency DESC, last_name;