use sakila;

select * from actor;
select first_name from actor where actor_id=5;

select * from actor where first_name='NICK';
select * from actor where first_name='ED';
-- sub quary
-- >,>=,<,<=,!=
-- scaler sub quary
select * from actor  where first_name = (select first_name from actor where actor_id=5);

select * from payment;
-- select * from payment where amount = 5.99; 

select * from payment  where amount = (select amount from payment where payment_id = 3);
select amount from payment where payment_id=14;
select * from payment where amount = (select amount from payment where payment_id=14);
-- get the paymnet_id, amount and paymnet date where the amount of rental_id  is 1476
select amount from payment where rental_id = 1476;
select payment_id ,amount,payment_date from payment where amount =(select amount from payment where rental_id = 1476);

-- get the payment_id ,amount and paymnet_date where the mount of the table = the month of payment_id=4
select month(payment_date) from payment where payment_id = 4;
select payment_id ,amount,payment_date from payment where month(payment_date)=(select month(payment_date) from payment where payment_id = 4);

-- get the payment_id and amount from the tabel where the amount is = the maximum amount from thr table 
select max(amount) from payment;
select payment_id,amount from payment where amount = (select max(amount) from payment);
