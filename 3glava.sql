#3.1
SELECT actor_id, first_name, last_name
FROM actor
ORDER BY 3,2;

#3.2
SELECT actor_id, first_name, last_name
FROM actor
WHERE last name IN ('WILLIAMS', 'DAVIS');

#3.3
SELECT DISTINCT customer_id
FROM rental
WHERE date(rental date) = '2005-07-05';

#3.4
SELECT с.email, г.return_date
-> FROM customer с
INNER JOIN rental r
ON c.customer_id = r.customer_id
WHERE date(r.rental_date) = '2005-06-14' 
ORDER BY 2 desk;
