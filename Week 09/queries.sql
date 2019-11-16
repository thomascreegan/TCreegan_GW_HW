CREATE VIEW employee_info AS
	SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
	FROM employees
	INNER JOIN salaries ON (employees.emp_no=salaries.emp_no)
	
CREATE VIEW hired_1986 as
	select *
	from employees
	where hire_date >= '1986-01-01 00:00:00' 
       and hire_date < '1987-01-01 00:00:00'
	   
CREATE VIEW manager_info AS
	SELECT departments.dept_no, departments.dept_name, dept_managers.emp_no, dept_managers.from_date, dept_managers.to_date, employees.first_name, employees.last_name
	FROM departments
	INNER JOIN dept_managers ON (departments.dept_no=dept_managers.dept_no)
	INNER JOIN employees on (dept_managers.emp_no=employees.emp_no)

CREATE VIEW Emp_by_Dept as
	SELECT departments.dept_name, dept_managers.emp_no, employees.first_name, employees.last_name
	FROM departments
	INNER JOIN dept_managers on (departments.dept_no = dept_managers.dept_no)
	INNER JOIN employees on (dept_managers.emp_no = employees.emp_no)

CREATE VIEW harold_b as
	select first_name, last_name
	from employees
	where first_name = 'Hercules'
	and last_name = 'B&'

CREATE VIEW sales_employees as
	SELECT departments.dept_name, dept_managers.emp_no, employees.first_name, employees.last_name
	FROM departments
	INNER JOIN dept_managers on (departments.dept_no = dept_managers.dept_no)
	INNER JOIN employees on (dept_managers.emp_no = employees.emp_no)
	WHERE departments.dept_name = 'Sales'

CREATE VIEW sales_and_dev_employees as
	SELECT departments.dept_name, dept_managers.emp_no, employees.first_name, employees.last_name
	FROM departments
	INNER JOIN dept_managers on (departments.dept_no = dept_managers.dept_no)
	INNER JOIN employees on (dept_managers.emp_no = employees.emp_no)
	WHERE departments.dept_name = 'Sales'
	or departments.dept_name = 'Development'
	
CREATE VIEW last_name_freq2 as
SELECT last_name, count(*)
 FROM employees
 GROUP BY last_name
 ORDER BY count(*) desc
