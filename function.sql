use practice;
delimiter $$
create function total(mark1 int, mark2 int, mark3 int)
returns int
deterministic
begin
return (mark1+mark2+mark3);
end $$
delimiter ;

drop function total;
select total(57,78,93) as total_mark ;

use practice;
delimiter $$
create function student_name(first varchar(20),last varchar(20))
returns varchar(20)
deterministic
begin
return (concat(first,' ',last)) ;
end $$
delimiter ;

select student_name('Priya','Darshini'),student_name('Sami','Abishek');