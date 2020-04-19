Create table employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	primary key (emp_no)
	);
Create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	primary key(emp_no),
	foreign key(emp_no) REFERENCES employees(emp_no)
	);
	
	
Create table managers(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	primary key(emp_no),
	foreign key(emp_no) REFERENCES employees(emp_no)
	);
	
Create table departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	primary key(dept_no)
	);
	
Create table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	foreign key (emp_no) REFERENCES employees(emp_no),
	foreign key (dept_no) REFERENCES departments(dept_no)
	);