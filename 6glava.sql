#6.1
A union В = {L M N O P Q R S T}
A union all B = {L M N O P P Q R S T}
A intersect В = {Р}
A except В = {L М N 0}
#6.2
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'L%' 
UNION
SELECT first_name, last_name
FROM customer
WHERE last name LIKE 'L%';

#6.3
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'L%'
UNION
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'L%'
ORDER BY last name;
