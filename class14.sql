use sakila; 
-- subquery
-- two row return (ulti row subquery) in operater
-- we dont use >,<,><,!=,= operaters
select amount from payment where payment_id =2 or payment_id=3;

-- in operater 
select * from payment where amount in (select amount from payment where payment_id =2 or payment_id=3);
-- both are equal 
-- any operater
select * from payment where amount =any (select amount from payment where payment_id =2 or payment_id=3);

-- >=
select amount from payment 
where amount >=any 
(select amount from payment where payment_id =2 or payment_id=3);

-- <=
select amount from payment 
where amount <=any 
(select amount from payment where payment_id =2 or payment_id=3) ;

-- greater then all
select amount from payment 
where amount >all 
(select amount from payment where payment_id =2 or payment_id=3) order by amount desc ;

-- less then all

select amount from payment 
where amount <all 
(select amount from payment where payment_id =2 or payment_id=3) order by amount desc ;


