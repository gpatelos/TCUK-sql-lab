SELECT first_name, last_name, address, birthday FROM people INNER JOIN homes ON (people.home_id = homes.id)
WHERE people.birthday IS NOT NULL ORDER BY MONTH(birthday)

SELECT * FROM people INNER JOIN homes ON (people.home_id = homes.id)

SELECT title FROM movies WHERE Genre IS 'Sci-Fi';

SELECT title, imdb_score FROM movies WHERE imdb_score > '6.5';

SELECT title, imdb_score FROM movies WHERE rating IN ('G', 'PG') AND runtime < '100';

SELECT genre, AVG(runtime) FROM movies WHERE imdb_score < 7.5 GROUP BY genre;

UPDATE movies SET rating = 'R' WHERE title  = 'Starship Troopers';

SELECT id, rating FROM movies WHERE genre IN ('Sci-Fi', 'Horror');

SELECT rating, AVG(imdb_score), MIN(imdb_score), MAX(imdb_score) FROM movies GROUP BY rating;

SELECT rating, AVG(imdb_score), MIN(imdb_score), MAX(imdb_score) FROM movies GROUP BY rating HAVING COUNT(*) > 1;

DELETE FROM movies WHERE rating IS 'R';





