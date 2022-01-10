drop table orders

create table orders(ord_no numeric(5) primary key,purch_amt decimal(8,2),ord_date date,
customer_id numeric(5) references Customer(customer_id),salesman_id numeric(5) references Salesman(salesman_id) )

insert into orders values(70001,150.5,'2012-10-05',3005,5002)
insert into orders values(70009,270.65,'2012-09-10',3001,5005)
insert into orders  values(70002,65.26,'2012-10-05',3002,5001)
insert into orders  values(70004,110.5,'2012-08-17',3009,5003)
insert into orders values(70007,948.5,'2012-07-27',3005,5002)
insert into orders  values(70005,2400.6,'2012-09-10',3007,5001)
insert into orders values(70008,5760,'2012-10-05',3002,5001)
insert into orders values(70010,1983.43,'2012-10-10',3004,5006)
insert into orders values(70003,2480.4,'2012-10-10',3009,5003)
insert into orders values(70012,250.45,'2012-06-27',3008,5002)
insert into orders values(70011,75.29,'2012-08-17',3003,5007)
insert into orders values(70013,3045.6,'2012-04-25',3002,5001)

select * from orders

select ord_date,salesman_id,ord_no,purch_amt from orders

select ord_no,ord_date,purch_amt from orders where salesman_id=5001

select * from orders
select avg(purch_amt) as 'Average purchase amount' from orders

select max(purch_amt) as 'Maximum purchase amount' from orders

select min(purch_amt) as 'Minimum purchase amount' from orders

select customer_id,max(purch_amt) as 'Maximum purchase amount' from orders group by customer_id

select ord_date,salesman_id,count(ord_no) from orders group by ord_date,salesman_id

select count(ord_no) from orders where ord_date='2012-08-17'

select salesman_id,max(purch_amt) from orders where salesman_id between 5003 and 5008 group by salesman_id

select ord_no,purch_amt,cust_name,city from orders inner join Customer on orders.customer_id=Customer.customer_id where purch_amt between 500 and 2000