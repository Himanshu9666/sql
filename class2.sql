-- date functions [Important]
-- date pr kaam krna ke liye
select current_date(), current_time(),current_timestamp(),now();

-- add date
select now(),adddate( now(),40);
select now(),adddate( now(),interval 2 month );
select now(),adddate( now(),interval -2 day ) ;
select now(),addtime( now(),'02:00:00') ;

-- year and month
select now(),year( now() ), last_day(now());

-- estract 
select now(),extract( DAY_MINUTE FROM  now());
select now(),extract( quarter from  now());
-- select now(),date_format( now(),'Year is %y ,my month is %m') ;
 -- adddate, now ,curtime,extact , year, month,date_formate
 use sakila;
 -- select payment_date, year(payment_date),extract( month from payment_date),
--  date_format(payment_date,'Hour of shopping is %H'),
--  datediff()
 
 -- order by , alias ,aggregate,
 -- single row function (scaler functions)
 -- function each row function (aggregate function)
 select sum(amount), count(amount) from payments;
 
 
