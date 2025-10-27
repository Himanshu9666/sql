create database regexdb;
use regexdb;
create table test(id int);
insert into test values (10),(11),(10),(null);
select count(*),count(id)from test;

create table test2(id int not null);
insert into test2 value (10),(11),(10);
insert into test2 value(null),(12);-- this will give error

create table test3(id int unique);
insert into test3 value (10),(11),(10); -- duplicate value

create table test4(id int,gender varchar(20));
insert into test4(id)values(10);
select * from test4;


create table test5(id int,gender varchar(20) default'male');
insert into test5(id)values(10);
select * from test5;


-- create table test6(id > 5) ,gender varchar(20));
insert into test6(id)values(10);
insert into test6(id)values(20); -- this will give me error
select * from test6;

create table test7(id int check (id>5) , gender varchar(20),
 check (gender in ('male', 'female' ))); -- check
insert into test7(id, gender) values(10 , 'male');
insert into test7(id) values(3); -- this will give an error 
-- select * from test7;

create table test8(id int check(id>5),gender varchar(20),
constraint db_test8_gender_chk check (gender in ('male','female'))); -- check


insert into test8(id, gender) value (10, 'male');
insert into test8(id, gender) value (11, 'female'); 
select * from test8;

-- primary key
create table product(pid int primary key, pname varchar(20));
insert into product values(101, 'iphone');
-- insert the product values(10, 'ipad');
insert into product values(102, 'ipad');
select * from product;

-- with foriegn key
create table orders(order_id int, price int, pid int);
insert into orders values(1981, 200, 101), (1982, 250, 102), (1983, 275,101), (1984, 500, 108);
select * from orders;
-- you have to crete two table employee ,employeid,empoye name,employee email shoud be unique department_id foreigin key
-- also crete a table called department ,departmentid,unique and department name which will be check constrain ,the depart should be phyics and biology
-- in the department table also try to insert null value inside the department id coloum



CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    employee_email VARCHAR(100) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);
-- varchar vs char datatypes 
-- flote and double datatype
-- date -time and timestamp

-- --------------------------------------------------------------------------------------------

-- operations
-- function , string ,date,numeric,(scaler function)
-- group by (operation on same set of row)
-- sum,avg,count

-- where and having
-- normalization:
-- 1 normal form
-- 2 norml form nf => parital dependency
-- (non -key attribute partially on key value)
-- 1. a. 50 
-- 1. a.60
-- join
-- inner join where condition = condition
-- inner join   on
-- inner join   using

-- left join  
-- natural 
--     cross join
-- cross => cartesion join 
-- self join  --important when you combine by it self it called self join
-- table join table join table 3
-- where  table1.condtion = table2 and table2.condition.codot =table3.condition

-- table join table2. on . condition
-- join table3 .on condition

-- subquery
-- inner qurery return 1 row
-- >,<,<=,>=
-- multi row subquery
--  in  =  =any
-- >any ,<any

-- >all ,<all
-- in and exits   importent
--
-- single row 
-- constaion
-- not null
-- unique -- it can be multipal in a table and it have multipal null value
-- default 
-- check 
-- primary key not null and unique
-- foregin key  

--  ------------------------------------------------------------------------------------------------------------

-- data type
-- numeric. => tinyint,smallint,mediumint,int,bigint

create table himanshu (id tinyint); # id tinyint unsigned
insert into himanshu values(10),(-9);
insert into himanshu values(-120);  #-128 to 127 (1byte) 2**8
select * from himanshu ;

-- smallint. 2 byte 
create table himanshu1 (id float,id2 double); # id tinyint unsigned
insert into himanshu1 values(10.987654356,10.56786554678);
select * from himanshu1 ;

create table himanshu3(id2 double(5,2));
insert into himanshu3 values(10.123456789);
insert into himanshu3 values(170.123456789);
insert into himanshu3 values(1690.123456789);
select * from himanshu3 ;

create table himanshu4(gender char(5));
insert into himanshu3 values('abc');
insert into himanshu4 values('abcde');
insert into himanshu4 values('sdfghmnbv'); -- error
insert into himanshu3 values('abc               ');
select * from himanshu4 ; 
select gender ,char_length(gender) from himanshu4;

-- char is datatype its a fix charater and it will truncate all the wirdspaces from the last

create table himanshu4(gender varchar(5));
insert into himanshu3 values('abc');
insert into himanshu3 values('abc           ');
select * from himanshu4 ; 
select gender ,char_length(gender) from himanshu4;
-- varchar is datatype 
-- char vs varchar interview 
-- create table himanshu4( date('25/09/2025'));
insert into himanshu3 values('year/month/date');
insert into himanshu3 values('abc           ');
select * from himanshu4 ; 
