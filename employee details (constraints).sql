use practice;

create table employee(
emp_id int auto_increment primary key,
name varchar(20) not null,
age int check (age>=20),
location varchar(20) default 'Chennai');

alter table employee add contact bigint unique not null;

insert into employee(name,age,location,contact)
values('Priya',21,'Trichy',9876457987);

insert into employee(name,age,contact)
values('Iswarya',23,9876457990);

update employee set contact= 9087678890 where emp_id=1;

select * from employee;