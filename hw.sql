drop table dept_emp
Create table dept_emp(
emp_no integer,
dept_no varchar(300),
date_from varchar(300),
to_date varchar (300),
foreign key (dept_no) references Departments(dept_no),
primary key(emp_no, dept_no)
)
select * from dept_emp
drop table department_managers
Create table department_managers(
dept_no varchar(300),
emp_no integer,
date_from varchar(300),
to_date varchar (300),
foreign key (dept_no) references Departments(dept_no)
);
drop table employees
Create table employees(
emp_no integer primary key,
birth_date varchar(300),
first_name varchar(300),
last_name varchar(300),
gender varchar(300),
hire_date varchar(300)
)
select * from employees;
Create table salaries(
emp_no integer,
salary integer,
from_date varchar(300),
date_to varchar(300),
foreign key (emp_no) references employees(emp_no)
);
create table titles(
emp_no integer,
title varchar(300),
from_date varchar(300),
date_to varchar(300),
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
