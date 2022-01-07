create database HandsOn

drop table Salesman

Create table Salesman(salesman_id numeric(5) primary key,name varchar(30) not null,city varchar(15) not null,commission decimal(5,2))

insert into Salesman values(5001,'James Hoog','New York',0.15)
insert into Salesman values(5002,'Nail Knite','Paris',0.13)
insert into Salesman values(5005,'Pit Alex','London',0.11)
insert into Salesman values(5006,'Mc Lyon','Paris',0.14)
insert into Salesman values(5007,'Paul Adam','Rome',0.13)
insert into Salesman values(5003,'Lauson Hen','San Jose',0.12)

select * from Salesman

select name,commission from Salesman


select name,city from Salesman where city='Paris'

select count(DISTINCT(name)) from Salesman