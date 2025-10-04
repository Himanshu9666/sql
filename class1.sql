show databases;  -- will show all data
use sakila; -- use sakila as a databe

show tables; -- show table to see all the 
-- select statment (DQL) * access all colum
select * from actor;
describe actor; -- will give data table info (datatype,colum,relationship and more)

select actor_id ,first_name from actor; -- select table can be any case formate
select Actor_ID ,first_name from actor;
select actor_id ,first_name,
Actor_ID ,first_name 
from actor;
-- dont crete new colum in orignal data
select actor_id ,first_name,actor_id*5 from actor;

-- to filter rows
select * from actor where actor_id=5;
select * from actor where first_name = 'NICK' ; -- Data shoude be case sencitive

select * from actor where LAST_NAME = 'DAVIS' ;

select actor_id,last_name,first_name from actor where LAST_NAME = 'DAVIS';

select * from actor where actor_id !=5;
select * from actor where actor_id <>5;

select * from actor where first_name = 'NICK' and actor_id =44 ;
select * from actor where first_name = 'NICK' or actor_id =46 ;
select * from actor where first_name = 'NICK' or actor_id !=46 ;

select * from actor where actor_id >=2 and actor_id <=6 ;
select * from actor where actor_id >2 and actor_id >6 ;
select * from actor where actor_id not between 2 and 6 ;
select * from actor where actor_id in (2,6,9);

-- like operator (pattern ke accoding data filter)
select * from actor Where first_name  = 'N';

-- % (Wildcard character) :zero or more Character
select * from actor Where first_name  like 'N%';
select * from actor Where first_name  like 'S%';

select * from actor Where first_name  like 'S%T';
select * from actor where first_name like '%S%';


-- (_) : exactly 1 character
select * from actor where first_name like 'E_';
select * from actor where first_name like 'A____%';
select * from actor where first_name like '_D%';


-- 1 - get the actor id in firstname where last word shoud be 'TE'
select * from actor where first_name like '%TE';


-- 2- get the actor id in firstname where 'NN' letter shoud be present in middle 

select * from actor where first_name like '_%NN%_';
-- 3-get the actor id in firstname and lastame where lastname in colum the first word is 'B' and secound last word 'R'
select  * from actor where first_name like 'B%R_';

-- 4- get the user information where the first name will have minimum 4 charcters
select  * from actor where first_name like '____%';

-- 5- get all the colums where the actor id from 2 to 90 and the first name "S" shoud be present in middle in and "A " shoud me the last 2 charcater

select * from actor where actor_id between 2 and 90 and first_name like '_%S%A_';

-- operator 
-- functions
-- inbuilt functions
-- scaler function (row function )  2) multi row functions
-- apply on each row and return the output for each row 
-- total charcter in each first_name 
select first_name,char_length(first_name),lower(first_name) from actor;
select first_name,last_name,concat(first_name,' ',last_name) from actor;
-- select first_name,last_name,concat(first_name,'-regex') from actor;
-- select first_name,last_name,concat('MR/MRS' ,' ' first_name,' ',last_name) from actor;
-- select first_name,last_name,concat_ws('@','MR', first_name,last_name) from actor;

-- Substr (to extract some data)
select first_name,substr(first_name,3),substr(first_name,3,2) from actor;

-- first coloum ,postion , table
-- trim function
 select char_length(trim('  Hey  '));
 select char_length(rtrim('  Hey '));
 
 -- replace function
 -- select first_name, replace((first_name,'E','#') from actor;
 select first_name,lpad(first_name,5,'@') from actor;
 
-- numeric function
-- round 
select round(11.2); -- only the decimal part
select round(11.68, 1);  -- only the decimal part
select round(11.687 , 2); -- only decimal part
select round (7.627, -1); -- only the inegar round off part 
select round (2.627, -1); -- nearest convert to 10
-- 2<5 => 0 
select round(34.74 ,-2) ; -- nearest convert to 100
select round(56.74 ,-2) ; -- nearest convert to 100

select round(506.74 ,-3) ; -- nearest convert to 1000
select round(456.74 ,-3) ; -- nearest convert to 1000

select round(6546.637 ,2 ), truncate(6546.637, 2);

-- other function
-- select mod(10,2), floor(6.99999999), ceil(4.000002);

-- date functions [Important]
-- date pr kaam krna ke liye
select current_date(), current_time(),current_timestamp(),now();



