#5.1
SELECT с.first_name, c.last_name, a.address, ct.city
FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city ct
ON a.city_id = ct.city_id
WHERE a.district = 'California';
#5.2
SELECT f.title
FROM film f
INNER JOIN film_actor fa
ON f.film_id = fa.film_id
INNER JOIN actor a
ON fa.actor_id = a.actor_id
WHERE a.first name = 'JOHN';

#5.3
SELECT al.address addrl, a2.address addr2, al.city_id
FROM address al
INNER JOIN address a2
WHERE al.city_id = a2.city_id
AND al.address id <> a2.address id;
