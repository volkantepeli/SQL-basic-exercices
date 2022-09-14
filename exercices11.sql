-- In the movie table, the movie length is shown in the length column. How many movies are longer than the average movie length?
SELECT COUNT(*) FROM film
WHERE length > (SELECT AVG(length) FROM film) ;

-- How many movies have the highest rental_rate in the movie table?
SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film) ;

-- In the movie table, list the movies with the lowest rental_rate and the lowest replacement_cost values.
SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film) ;

-- In the payment table, list the customers who make the most purchases.
SELECT customer_id, COUNT(customer_id) FROM payment
GROUP BY customer_id
ORDER BY COUNT(customer_id) DESC ;