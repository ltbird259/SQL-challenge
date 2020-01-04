select *
from employees;


select *
from employees
where hire_date between '1986-01-01' and '1986-12-31';


select dm.dept_no, dept_name, dm.emp_no, last_name, first_name, from_date, to_date
from dept_manager dm
left join employees e on dm.emp_no = e.emp_no
left join departments d on dm.dept_no = d.dept_no;


select e.emp_no, last_name, first_name, dept_name
from employees e
left join dept_emp de on de.emp_no = e.emp_no
left join departments d on d.dept_no = de.dept_no;


select *
from employees
where last_name like 'B%'
and first_name ='Hercules';


select e.emp_no, last_name, first_name, dept_name
from employees e
left join dept_emp de on de.emp_no = e.emp_no
left join departments d on d.dept_no = de.dept_no
where dept_name = 'Sales';


select e.emp_no, last_name, first_name, dept_name
from employees e
left join dept_emp de on de.emp_no = e.emp_no
left join departments d on d.dept_no = de.dept_no
where dept_name = 'Sales'
or dept_name ='Development';


select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;