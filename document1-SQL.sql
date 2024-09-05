--1)question
select count(*)
from actor a 
where last_name = 'Wahlberg'


--2) question
select count(*)
from payment p 
where amount between 3.99 and 5.99;

--3) question
   SELECT COUNT(*) AS quantity
   FROM inventory
   GROUP BY film_id
   HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM inventory
    GROUP BY film_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
            );
  --4)question
       select count(*)
       from customers c 
       where  last_name = 'William'


--5) question
 select staff_id , count(*) as rental_count 
 from rental r 
 group by staff_id 
 order by rental_count desc
 limit 1;

--6) question
--how many district are different here 

select count(distinct district) as different_district
from address a 


--7) question 
--What film has the most actors in it? (use film_actor table and get film_id)
   SELECT film_id, count(actor_id)
   FROM film_actor
   GROUP BY film_id
   ORDER BY COUNT(actor_id) DESC
    LIMIT 1;

   
 -- 8) question 
     SELECT COUNT(*) AS customer_count
     FROM customer
     WHERE last_name LIKE '%es' AND store_id = 1;
     
 --9)question  :How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
    select count(*) as payment_amount
    from payment p 
    where customer_id  between 380 and 430
    having (
    count(rental_id ) >250

    
    --10)Within the film table, how many rating categories are there? 

SELECT count( distinct  rating) 
FROM film 
 
 what rating has the most
--movies total?
 
SELECT rating
FROM film
GROUP BY 1
order by count(*) desc
limit 1






    