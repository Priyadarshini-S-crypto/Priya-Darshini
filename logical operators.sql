use training;
 
 create table employee(
    id int auto_increment primary key,
    name varchar(20),
    salary decimal(10,2),
    exp int);
    
insert into employee(name,salary,exp) values('priya',60000,3),('abi',70000,3),('rekha',90000,5),('raju',95000,7);

select * from employee;

select * from employee where salary>70000 and exp>3;
             -- or --
select * from employee where exp in (3,5);
             -- or --
select * from employee where exp <> 3;
