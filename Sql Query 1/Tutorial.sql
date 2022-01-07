--How to create Dadtabase?
Create database TutorialDB

--How to create tables?
create table Tutorial
(
TutorialId int primary key,
TutorialName varchar(100),
TutorialDesc varchar(max),
Published int
)

drop table Tutorial

--How to alter tables, how to add column in existing table?
alter table Tutorial add Author varchar(100)

--How to insert row into table?
insert into Tutorial values(1,'CSharp','Multithreading',0)
insert into Tutorial values(2,'SQL','SQL Commands',1)
insert into Tutorial values(3,'Java','Java hybernate',1)
insert into Tutorial values(4,'C#','OOPS',1)
insert into Tutorial values(5,'C#','File Handling',1)
insert into Tutorial values(6,'Java','Java MVC',0)

--How to delete row/rows from table?
delete from Tutorial where Published=0 and TutorialName='java'

--How to update table row/rows?
update Tutorial set Author='Nagarjun',Published=0 where TutorialName='C#'

--How to view/display table rows?
select * from Tutorial

