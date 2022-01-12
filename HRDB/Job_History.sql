create table Job_History(employee_id numeric primary key,start__date date,end_date date,job_id varchar(10) references Jobs(job_id),
department_id numeric references Departments(department_id))