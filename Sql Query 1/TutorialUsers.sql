
drop table TutorialUsers

create table TutorialUsers(UserId int primary key,Name varchar(100),Email varchar(100),Subcriped char(1),
TutorialId int references Tutorial(TutorialId),Fees int not null)
 
insert into TutorialUsers(UserId,Name,Email,Subcriped,TutorialId) values(5,'navanita','n@gmail.com','N',6)

select * from TutorialUsers