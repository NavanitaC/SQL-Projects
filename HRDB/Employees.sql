create table Employees(employee_id numeric primary key references Job_History(employee_id),first_name varchar(20),last_name varchar(25),email varchar(25),
phone_number varchar(20),hire_date date,job_id varchar(10) references Jobs(job_id),salary numeric,commission_pct numeric,manager_id numeric,
department_id numeric references Departments(department_id))