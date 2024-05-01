--DATA ANALYSIS: 

--Q1:List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary
FROM 
    employees
INNER JOIN 
    salaries ON employees.emp_no = salaries.emp_no;
--Q2:List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
first_name,
last_name, 
hire_date 
FROM 
employees
WHERE hire_date >= '1/1/86' and hire_date <= '12/31/86' 

--Q3:List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
    employees.first_name,
    employees.last_name,
	department_manager.dept_no
FROM employees 
INNER JOIN 
    department_manager ON employees.emp_no = department_manager.emp_no;

--Q4:List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT 
 de.emp_no,
 de.dept_no,
 departments.dept_name,
 employees.first_name,
 employees.last_name
FROM department_employee as de
INNER JOIN 
	departments on departments.dept_no = de.dept_no
INNER JOIN 
	employees on employees.emp_no = de.emp_no;
	
--Q5:List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 
e.first_name,
e.last_name,
e.sex
FROM employees as e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Q6:List each employee in the Sales department, including their employee number, last name, and first name.
--sales : "d007" dept_no in departments 
--then take, emp_no in department_employee - filtering by d007
--then join with employee for first_name, and last_name 
SELECT 
de.emp_no,
employees.first_name,
employees.last_name
FROM department_employee as de
INNER JOIN employees on employees.emp_no = de.emp_no
WHERE dept_no = 'd007';
--Q7:List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
e.first_name,
e.last_name,
e.emp_no,
d.dept_name
FROM employees as e
INNER JOIN department_employee as de 
	ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE (d.dept_name ='Sales') OR (d.dept_name = 'Development')
Order BY e.emp_no;

--Q8:List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS "Number of Shared Last Names"
FROM employees
WHERE last_name IS NOT NULL
GROUP BY last_name
ORDER BY "Number of Shared Last Names" DESC;
