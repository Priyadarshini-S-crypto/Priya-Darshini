use practice;

create table users(
   user_id int auto_increment primary key,
   username varchar(20) not null unique,
   password bigint not null,
   age int check(age>=13),
   country varchar(20) default 'USA');
   
insert into users(username,password,age)
values('Priya',12345,14);

insert into users(username,password,age,country)
values('abi',17345,14,'India');

insert into users(username,password,age,country)
values('adhi',17945,16,'Canada');

select * from users;
select * from users order by age desc;
select * from users order by user_id desc;

