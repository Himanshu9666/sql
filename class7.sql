use regex123;
select * from product;
select * from orders; 
select product.pid,product.pname,product.price,orders.city from product
join
orders where product.pid=orders.productid ;

select product.pid,product.pname,product.price,orders.city from product
left join
orders on product.pid=orders.productid ;

select product.pid,product.pname,product.price,orders.city from product
 inner join
orders on product.pid=orders.productid ;

select product.pid,product.pname,product.price,orders.city from orders
 left join
 product on orders.productid = product.pid;

select product.pid,product.pname,product.price,orders.city from product
right join
orders on product.pid=orders.productid ;

use sakila;
select * from actor;

desc actor;
select * from film_actor;
desc film_actor;

select actor.actor_id, actor.first_name, film_actor.actor_id,
film_actor.film_id from actor
 join film_actor where actor.actor_id = film_actor.actor_id;