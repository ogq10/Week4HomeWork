--QUESTION 1 ANSWER: 2
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg'

--QUESTION 2 ANSWER: 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99 

--QUESTION 3 ANSWER: Film #1000
SELECT MAX(film_id)
FROM inventory 

--QUESTION 4 ANSWER: 0
SELECT last_name
FROM customer
WHERE last_name = 'William'

--QUESTION 5 ANSWER: staff_id 2
SELECT staff_id, SUM(amount)
FROM payment
GROUP BY staff_id
ORDER BY sum(amount) ASC

--QUESTION 6 ANSWER: 378 
SELECT district, COUNT(DISTINCT(district))
FROM address
GROUP BY district

--QUESTION 7 ANSWER: --use fim actor table and get film id
SELECT film_id, actor_id
FROM film, film_actor

--QUESTION 8 ANSWER: 13
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id, last_name
HAVING (store_id) < 2

--QUESTION 9 ANSWER: 3 
SELECT amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) > 250

--QUESTION 10 ANSWER: 5 RATINGS 
SELECT COUNT(Distinct(rating))
FROM film

--QUESTION 10 ANSWER: rating#2 which is Rated R
SELECT count(rating)
FROM film 
GROUP BY rating
