use practice;

create table shop1(
  vegetable varchar(20),
  price decimal(10,2));
  
create table shop2(
   vegetable varchar(20),
   price decimal(10,2));
   
insert into shop1
values('brinjal',30.25);
insert into shop1
values('carrot',20.50);
insert into shop1
values('cabbage',50.75);
insert into shop1
values('cauliflower',40.26);
insert into shop1
values('tomato',30.35);
insert into shop1
values('onion',30.87);

insert into shop2
values('beans',30.45);
insert into shop2
values('brinjal',30.35);
insert into shop2
values('cauliflower',50.25);
insert into shop2
values('onion',30.65);
insert into shop2
values('capsicum',40.25);

select s1.vegetable,s1.price as shop1,s2.price as shop2
from shop1 s1 inner join shop2 s2
on s1.vegetable=s2.vegetable;

select s1.vegetable,s1.price as shop1,s2.price as shop2
from shop1 s1 left join shop2 s2
on s1.vegetable=s2.vegetable;

select s2.vegetable,s2.price as shop2,s1.price as shop1
from shop1 s1 right join shop2 s2
on s1.vegetable=s2.vegetable;

create table customer(
  customer_id int auto_increment primary key,
  customer_name varchar(20),
  customer_address varchar(100));

create table orders(
  order_id int,
  customer_id int auto_increment primary key,
  product varchar(20),
  price decimal(10,2));
  
insert into customer(customer_name,customer_address) values('priya','abc-chennai'),('abi','jkm-trichy'),('adhi','lmn-chennai');

insert into orders(order_id,product,price) values(101,'air conditioner',50000.75),(102,'washing machine',25000.75),(101,'fan',5000.75),(101,'water filter',20000.75);
  
select * from customer;

select * from orders;

select c.customer_id,c.customer_name,o.product,o.price
from customer c inner join orders o
on c.customer_id = o.customer_id;