use practice;

create table student(
    student_name varchar(20),
    student_mark int,
    department varchar(20));
    
insert into student(student_name,student_mark,department)
values('priya',95,'ece');

insert into student(student_name,student_mark,department)
values('roshni',96,'ece');

insert into student(student_name,student_mark,department)
values('abishek',95,'eee');

insert into student(student_name,student_mark,department)
values('raj',94,'eee');

insert into student(student_name,student_mark,department)
values('adhi',92,'eee');

select * from student;

select sum(student_mark) as totalmarks from student;

select max(student_mark) from student;
select min(student_mark) from student;
select avg(student_mark) from student; 
select count(student_name) from student where department='eee';