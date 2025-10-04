use sakila;
select * from payment ;
select count(customer_id),amount from payment group by amount;
-- how much amount we spend in each year 
select year(payment_date) from payment group by year (payment_date);
select year(payment_date) ,staff_id,sum(amount) from payment group by year(payment_date),staff_id;

-- order by (sort)
select * from payment order by customer_id;
select * from payment order by customer_id desc;
select * from payment order by customer_id desc , amount desc;

-- conditonal functions
select customer_id , amount, if (amount>3, "HIGH","LOW") from payment; 
select customer_id , amount, if(amount=2.99, "HIGH", if(amount=5.99 ,"AVG","LOW")) from payment; 
select customer_id,amount,
	case
		when amount=2.99 then "High"
		when amount=5.99 then "Avg"
		else "low"
	end as col
 from payment;

-- select two coloum customer_id and staus if customer id is grater then 1 print hello if customer grater then 4 print user otherwise print regex  
select customer_id ,
	case
		when customer_id >4 then "User"
        when customer_id>1  then "Hello"
        else "REGEX"
	end as colum
from payment;

-- what are relationship in my sql 
-- what is primary key and supar key
-- what are joins in sql 
-- sql zoo chaper 1,2,3,5