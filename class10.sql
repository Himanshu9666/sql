use regex123;
create table product(pid  int,  pname  varchar(20), price int );
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);

create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);

 -- cross join cartesian join 
 -- each row of 1st table is combined with each row of another table (m*n)
 -- no common colum so working as cross join
 
 select p.pid,p.price,o.productid,o.city from product as p 
 cross join orders as o;
 
 -- changing colum name here
 alter table orders rename column productid to pid;
 select * from orders;
 
  -- natural join is kind of join which works comman name of colums
  -- comman colum working as inner join 
  
  select p.pid, p.price,o.pid,o.city from product as p 
  natural join orders as o;
  