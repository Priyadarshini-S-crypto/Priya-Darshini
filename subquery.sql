use training;

create table employees(
 emp_id int,
 emp_name varchar(20),
 dept_id int,
 salary int,
 manager_id int);
 
 create table departments(
  dept_id int,
  dept_name varchar(20),
  location varchar(20));
  
  create table projects(
   proj_id int,
   proj_name varchar(20),
   dept_id int,
   budget int);
   
   insert into employees values
   (1,'priya john',101,50000,1001),
   (2,'abi john',101,60000,1002),
   (3,'john',102,70000,1003),
   (4,'braga',102,75000,1003),
   (5,'guru',101,65000,1004),
   (6,'alice',102,55000,1001);
   
   insert into departments values
   (101,'hr','first floor'),
   (101,'hr','second floor'),
   (102,'java dev','third floor'),
   (102,'java dev','fourth floor'),
   (101,'hr','fifth floor');
   
   insert into projects values
   (1,'abc',101,100000),
   (2,'cde',101,200000),
   (3,'fgh',102,300000),
   (4,'ijk',102,400000),
   (5,'lmn',101,500000);
   
truncate table employees;
truncate table departments;
truncate table projects;

   select * from employees;
   select * from departments;
   select * from projects;
   
   select * from employees where dept_id = (Select dept_id from employees where emp_name ='john');
   
   select ;
   
   select * from employees where salary = (select min(salary) from employees);
   
   select * from employees where manager_id = (select manager_id from employees where emp_name='alice');