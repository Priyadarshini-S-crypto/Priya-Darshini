create database customerdetails;

use customerdetails;

create table customer(
    customer_id bigint,
    customer_name varchar(20),
    customer_address varchar(50),
    city varchar(20),
    state varchar(20));

select * from customer;

insert into customer 
values(125004203,'Priya','Mela street,Arjunan Nagar,M.K.Kottai.','Trichy','Tamil Nadu');
insert into customer
values(125005139,'Abishek','vairam nagar,new housing board unit','thanjavur','tamil nadu');

alter table  customer change column customer_address address varchar(200);

alter table customer add mobile_number bigint;

update customer set mobile_number= 9940281272;
update customer set mobile_number=8778942951 where customer_name='Priya';

