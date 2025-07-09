create database training;
use training;

create table customers(
  customer_id int auto_increment primary key,
  Name varchar(20),
  City varchar(20));
  
create table orders(
  orderID int,
  customerID int,
  Product varchar(20));
  
insert into customers(Name,city) values('Alice','New York');
insert into customers(Name,city) values('Bob','Chicago');
insert into customers(Name,city) values('Charlie','Miami');

insert into orders(orderID,customerid,product) values(101,1,'Laptop');
insert into orders(orderID,customerid,product) values(102,1,'Mouse');
insert into orders(orderID,customerid,product) values(103,2,'Keyboard');
insert into orders(orderID,customerid,product) values(104,4,'Monitor');

truncate table orders;

drop table orders;

select * from customers;

select * from orders;

select c.customer_id,c.name,o.product
from customers c inner join orders o
on c.customer_id=o.customerId;

select c.customer_id,c.name,o.product
from customers c left join orders o
on c.customer_id=o.customerId;

select c.customer_id,c.name,o.product
from customers c right join orders o
on c.customer_id=o.customerId;

select c.customer_id,c.name,c.city,o.orderid,o.customerid,o.product
from customers c inner join orders o
on c.customer_id=o.customerid;

select c.customer_id,c.name,c.city,o.product
from customers c inner join orders o 
on c.customer_id=o.customerid where o.product='mouse';
