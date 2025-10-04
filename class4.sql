use sakila;
select count(*),count(customer_id) from payment;
-- sum,avg,max,min
-- select count(customer_id) from payment where customer_id=3;

-- select * from payment;
-- select customeer_id,sum(amount),count(customer_id) from payment group by customer_id;

-- select payment_id,count(*) from payment group by payment__id;
-- select customer_id , count(customer_id) from payment
-- where customer_id> 3 group by customer_id;

select customer_id, count(customer_id) from payment group by customer_id;
-- error 
select customer_id, count(customer_id) from payment group by customer_id;

-- kabhi bhi where conditon aggreate function pr nhi chlti kyoki where ka kaam hai filter ka if you need to filter by using aggregate function we use having clause
-- where and having 
-- where use to filter the data from which is present table and having but in we have to apply the fillter used for aggreate function 

-- filter on aggreate function 
select customer_id,count(customer_id) from payment
group by customer_id having count(customer_id)>30;

select amount,count(*),sum(amount) from payment group by amount;

select amount ,count(*) as totalcount,sum(amount) from payment where amount>2 group by amount
having totalcount  >3000;

select * from payment;
select staff_id, count(customer_id) from payment group by staff_id ;
-- select  * from payment group by month(payment_date);
select   month(payment_date),sum(amount) from payment group by month(payment_date);

select amount ,count(customer_id), count(distinct(customer_id)) from payment group by amount;

select amount,count(*) from payment where year(payment_date) = 2005 group by amount having count(*) > 15 ;

