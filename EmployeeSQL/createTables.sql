create table departments
(
	dept_no varchar(20),
	dept_name varchar(30),
	constraint departmentKey PRIMARY KEY (dept_no)
)

create table dept_emp
(
	emp_no int,
	dept_no varchar(20),
	from_date date,
	to_date date,
	constraint emp_no foreign key (emp_no) references (employees.emp_no)
)



create table dept_manager
(
	dept_no varchar(5),
	emp_no int,
	from_date date,
	to_date date
)


create table employees
(
	emp_no string,
	birth_date date,
	first_name string,
	last_name string,
	gender string,
	hire_date date,
	constraint emp_no PRIMARY KEY (emp_no)
)


create tables salaries
(
	emp_no int,
	salary int,
	from_date date,
	to_date date
)


create table titles
(
	emp_no int,
	title varchar(50),
	from_date date,
	to_date date
)
