use training;

create table students(
	student_id int,
    student_name varchar(20));
    
create table subject(
    subject varchar(20));
insert into students values(1,'priya'),(2,'abi'),(3,'rekha'),(4,'sundaram');
insert into subject values('maths'),('science'),('social');

select * from students;
select * from subject;
select st.*,sub.*
from students st cross join subject sub;

select * from students where student_id=3;
    





































































































































































































































