 -- single row function (scaler functions)
 -- function each row function (aggregate function)
 use sakila;
--  select sum(amount), count(amount) from payments;
--  select count(payment_id) from payment where payment_id<55;
--  select count(address_id),count(address2),count(*) from address;
--  select * from payment;
--  select max(amount),min(amount),count(amount),count(amount) ,avg(amount) from payment;
--  
--  select count(distinct amount), count(amount) from payment
select  payment_id , amount from payment where year (payment_date) =2005 ;
select count(distinct customer_id) from payment where month(payment_date) =6 ;
select max(amount),avg(amount),max(amount)-avg(amount) from payment where amount>2 and year(payment_date)=2006;

-- group by statment (grouping similar data)
select customer_id from payment group by customer_id;
select count(customer_id) from payment group by customer_id =2;
select count(customer_id) from payment group by customer_id =4;
select count(customer_id) from payment group by customer_id;

 