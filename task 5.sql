create database task_5
show databases
use  task_5


create table customer(
customer_id int  ,
customer_name varchar(40),
email varchar(100));

select * from customer


create table if not exists orders(
order_id int ,
cus_id int  ,
order_date date,
total_amount decimal
);

insert into customer values  (1, 'Alice Smith', 'alice.s@example.com'),
(2, 'Bob Johnson', 'bob.j@example.com'),
(3, 'Charlie Brown', 'charlie.b@example.com'),
(4, 'David Lee', 'david.l@example.com'),
(5, 'Eve Taylor', 'eve.t@example.com'),
(6, 'Frank White', 'frank.w@example.com'),
(7, 'Grace Miller', 'grace.m@example.com'),
(8, 'Henry King', 'henry.k@example.com');



insert into orders values (101, 1, '2023-01-15', 150.00),
(102, 2, '2023-01-16', 200.50),
(103, 1, '2023-02-01', 75.25),
(104, 3, '2023-02-10', 300.00),
(109, 1, '2023-04-01', 99.99),   -- New record
(110, 3, '2023-04-05', 120.00),  -- New record
(111, 2, '2023-04-10', 210.30),  -- New record
(112, 67, '2023-05-01', 60.00),
(106, 55, '2023-03-10', 50.00)

select * from orders
select * from customer
--- creating inner joint 

select c.customer_id, c.customer_name, c.email, o.order_id,o.order_date,o.total_amount from customer c 
inner join 
orders o on c.customer_id=o.cus_id;



--- creating left joint 

select c.customer_id ,c.customer_name, c.email, o.order_id , order_date,o.total_amount from customer c 
left join 
orders o  on c.customer_id=o.cus_id;


-- creating right join 

select c.customer_id ,c.customer_name, c.email, o.order_id , order_date,o.total_amount from customer c
right join 
orders o on c.customer_id=o.cus_id;


select c.customer_id ,c.customer_name, c.email, o.order_id , order_date,o.total_amount from customer c
left join
orders o on c.customer_id=o.cus_id;
union
select c.customer_id ,c.customer_name, c.email, o.order_id , order_date,o.total_amount from customer c
right join 
orders o on c.customer_id=o.cus_id;




-- create  full joint 
select c.customer_id ,c.customer_name, c.email, o.order_id , order_date,o.total_amount from customer c
left join
orders o on c.customer_id=o.cus_id;
union all
select c.customer_id ,c.customer_name, c.email, o.order_id , order_date,o.total_amount from customer c
right join 
orders o on c.customer_id=o.cus_id;

