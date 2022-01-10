drop table Customer

create table Customer(customer_id numeric(5) primary key,cust_name varchar(30),city varchar(15),grade numeric(3),salesman_id numeric(5))

insert into Customer values(3002,'Nick Rimando','New York',100,5001)
insert into Customer values(3007,'Brad Davis','New York',200,5001)
insert into Customer values(3005,'Graham Zusi','California',200,5002)
insert into Customer values(3008,'Julian Green','London',300,5002)
insert into Customer values(3004,'Fabian Johnson','Paris',300,5006)
insert into Customer values(3009,'Geoff Cameron','Berlin',100,5003)
insert into Customer values(3003,'Jozy Altidor','Moscow',200,5007)
insert into Customer values(3001,'Brad Guzan','London',222,5005)

select * from Customer

select customer_id,cust_name,city,grade,salesman_id from Customer where grade=200

select count(*) as 'Number of Customer' from Customer

select city,max(grade) as 'Maximum Grade' from Customer Group By city

select cust_name,Customer.city,name,commission from Customer inner join Salesman on Customer.salesman_id=Salesman.salesman_id 

select cust_name,Customer.city,name,commission from Salesman inner join Customer on Salesman.salesman_id=Customer.salesman_id where commission > 0.12

select cust_name,Customer.city,name,Salesman.city,commission from Customer inner join Salesman on Customer.salesman_id=Salesman.salesman_id where Salesman.city<>Customer.city and  commission > 0.12