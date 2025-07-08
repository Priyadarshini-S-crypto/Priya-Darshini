create database practice;
use practice;
create table studentsdetails(
     reg_no int,
     student_name varchar(20),
     mobile_number bigint);
select * from studentsdetails;
select reg_no,student_name from studentsdetails;
insert into studentsdetails(reg_no,student_name,mobile_number) 
values(1,'Iswarya',9787468978);
insert into studentsdetails(reg_no,student_name,mobile_number) 
values(2,'Priya',8778942951);
alter table studentsdetails add address varchar(20);
alter table studentsdetails add age int;
update studentsdetails set address='Trichy' where student_name='Priya';
update studentsdetails set address='Chennai' where student_name='Iswarya';
update studentsdetails set age=26;
update studentsdetails set age =22 where student_name='Priya';
alter table studentsdetails change column address student_address varchar(20);
delete from studentsdetails where student_name='Priya';
truncate table studentsdetails;
drop table studentsdetails;

