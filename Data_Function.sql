create database Date_Function

create table Employee(employee_id int,joining_date datetime)

drop  table Employee

insert Employee values(101,'2022-1-12 10:11:05')

select * from Employee

select datename(mm,joining_date) from Employee

select datename(dd,joining_date) from Employee

select datename(yyyy,joining_date) from Employee

select cast(getdate() as time ) [time] from Employee

select datepart(hh,GETDATE())

select datepart(ms,GETDATE())

select datepart(mi,GETDATE())

select cast(Getdate() as varchar(12)) ,convert(varchar(10),sales_date,102)from Employee

select datepart(mm,joining_date) from Employee

select dateadd(mm,1,joining_date) from Employee

select DATEDIFF(dd,joining_date,'2022-02-11') from Employee



