SELECT employees.emp_no, last_name, first_name, gender, salary from employees join salaries on employees.emp_no = salaries.emp_no

SELECT last_name, first_name, hire_date from employees where hire_date between '1986-01-01' and '1986-12-31';

SELECT * from managers

SELECT managers.dept_no, dept_name, managers.emp_no, last_name, first_name, managers.from_date, managers.to_date from managers join employees on managers.emp_no = employees.emp_no join departments on managers.dept_no = departments.dept_no

SELECT employees.emp_no, last_name, first_name, departments.dept_name from employees join dept_emp on employees.emp_no = dept_emp.emp_no join departments on dept_emp.dept_no = departments.dept_no;

SELECT * from employees where last_name like 'B%' and first_name = 'Hercules';

SELECT employees.emp_no, last_name, first_name, departments.dept_name from employees join dept_emp on employees.emp_no = dept_emp.emp_no join departments on dept_emp.dept_no = departments.dept_no where dept_name = 'Sales'

SELECT employees.emp_no, last_name, first_name, departments.dept_name from employees join dept_emp on employees.emp_no = dept_emp.emp_no join departments on dept_emp.dept_no = departments.dept_no where dept_name = 'Sales' or dept_name = 'Development'



SELECT last_name, COUNT(last_name) from employees GROUP BY last_name ORDER BY count(last_name) desc;
