use sam123;
create table employee0(emp_id int,
emp_name char(20),
emp_email varchar(30) not null,
dept_id int,
 constraint e_id primary key(emp_id),
 constraint emp_mail unique(emp_email),
 constraint dept_id0 foreign key employee0(dept_id) references department(dept_id));
 
 insert into employee0(emp_id,emp_name,emp_email,dept_id)
 values(1,'dev','erhehhdh@gmail.com',1),
 (2,'sam','gegignefai@12gmail.com',1),
 (3,'alic','fjwbfufbufebf@gmail.com',2),
 (4,'bob','fjbwfiaewbg@gmail.com',2),
 (5,'alina','lkfhewfhwefe@gmail.com',1),
 (6,'shreya','wkjbfwisbf@gmail.com',2);
 
 select * from employee0;
-- learning assignment varchar vs char data types
-- float and double data type 
-- date-time and timestamp
-- 
use sam123;
create table department (dept_id int ,
dept_name varchar(20),
constraint dept_c unique (dept_id),
constraint dept_n check (dept_name in('biology','physics')));

insert into department(dept_id,dept_name)
values(1,'biology'),
(2,'physics');

select * from department as d;
select * from employee0 as e;

select e1.emp_name,e1.dept_id,e2.emp_name,e2.dept_id from employee0 as e1
join employee0 as e2 on e1.emp_id=e2.dept_id AND e1.emp_name=e2.emp_name;


select min(e.emp_name),d.dept_name from employee0 as e
join department as d on d.dept_id=e.dept_id group by d.dept_name;