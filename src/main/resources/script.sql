
/* FROM PART I */

-- SELECT CONCAT_WS(' ', p.first_name, p.last_name) AS Name, h.address, p.birthday
-- FROM people AS p
-- INNER JOIN homes AS h on (p.home_id = h.id)
-- WHERE p.birthday IS NOT NULL
-- ORDER BY MONTH(p.birthday) ASC


/* FROM PART II */

INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc.', 92, 'Animation', 8.1, 'G'),
('Troll 2', 95, 'Horror', 2.8, 'PG-13'),
('Manos: The Hands of Fate', 70, 'Horror', 1.9, 'NOT RATED');


SELECT *
FROM movies
WHERE genre = 'Sci-Fi';


SELECT *
FROM movies
WHERE imdb_score > 6.5;


SELECT *
FROM movies
WHERE rating IN ('G', 'PG') AND
runtime < 100;


SELECT genre, AVG(runtime)
FROM movies
WHERE imdb_score < 7.5
GROUP BY genre;


UPDATE movies SET rating = 'R'
WHERE title = 'Starship Troopers';


SELECT id, rating
FROM movies
WHERE genre IN ('Horror', 'Documentary');


SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating;


SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;


DELETE FROM movies
WHERE rating = 'R';