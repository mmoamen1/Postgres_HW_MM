drop table dept_emp
Create table dept_emp(
emp_no integer,
dept_no varchar(300),
date_from date,
to_date date,
foreign key (dept_no) references Departments(dept_no),
primary key(emp_no, dept_no)
)
select * from dept_emp
drop table department_managers
Create table department_managers(
dept_no varchar(300),
emp_no integer,
date_from date,
to_date date,
foreign key (dept_no) references Departments(dept_no)
);
drop table employees
Create table employees(
emp_no integer primary key,
birth_date date,
first_name varchar(300),
last_name varchar(300),
gender varchar(300),
hire_date date
)
select * from employees;
Create table salaries(
emp_no integer,
salary integer,
from_date date,
date_to date,
foreign key (emp_no) references employees(emp_no)
);
create table titles(
emp_no integer,
title varchar(300),
from_date date,
date_to date,
foreign key (emp_no) references employees(emp_no)
);
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from salaries as s
inner join employees as e on
e.emp_no = s.emp_no;
select * from employees
where hire_date = 1986;
select e.first_name, e.last_name, m.date_from, m.to_date 
from department_managers as m
inner join employees as e on
e.emp_no = m.emp_no;
select e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name
from dept_emp as de
inner join employees as e on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no;
select * from employees
where (first_name = 'Hercules' or substring(last_name,1,2) = 'B') ;
select e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name 
from dept_emp as de 
inner join employees as e on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no
where dept_name = 'Sales';
select e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name 
from dept_emp as de 
inner join employees as e on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no
where (dept_name = 'Sales' or dept_name = 'Development');
select last_name, count(last_name) from employees
group by last_name
order by count desc;
