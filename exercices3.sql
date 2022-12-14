-- List the country names in the country column of the country table, starting with the 'A' character and ending with the 'a' character.
SELECT country FROM country
WHERE country LIKE 'A%a' ;

-- List the country names in the country column of the country table, consisting of at least 6 characters and ending with the 'n' character.
SELECT country FROM country
WHERE country ILIKE '_____n' ;

-- In the title column of the movie table, list the movie names containing at least 4 'T' characters, regardless of upper or lower case letters.
SELECT title FROM film
WHERE title ILIKE '%T%T%T%T%' ;

-- From the data in all the columns in the movie table, sort the data that starts with the title 'C' character, has a length greater than 90 and a rental_rate of 2.99.
SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99 ;