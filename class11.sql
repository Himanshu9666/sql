use sakila;

select * from actor;
select * from film_actor;
select * from film ;
select a.actor_id, a.first_name, f.actor_id,
f.film_id from actor as a
 join film_actor as f ;
 
 select f.film_id,f.title from film_actor as f join fi ;
 
 -- join actor and film_actor(actor_id)
 -- join film_actor and film (film_id)
use sakila;
select a.actor_id,a.first_name,fa.actor,fa.film_id, flm.film_id as film,flm.title from
	actor as a join film_actor as fa join film as flm 
		where a.actor_id =fa.actor_id and fa.film_id = flm.film_id ;
        
-- what is subquary and single row sub quary 
 
 