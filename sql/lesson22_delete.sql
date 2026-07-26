.print
.print ======================================================
.print Lesson 22 : DELETE
.print ======================================================

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    movie_name TEXT,
    rating REAL
);

INSERT INTO movies (movie_name, rating)
VALUES
('Inception', 9.0),
('Interstellar', 9.2),
('Avatar', 8.1),
('Titanic', 8.5);

.print
.print Initial Table
.print ------------------------------------------------------

SELECT *
FROM movies;

.print
.print ======================================================
.print Example 1 : Delete one movie by ID
.print ======================================================

.print SQL Executed:
.print DELETE FROM movies
.print WHERE id = 3;

DELETE FROM movies
WHERE id = 3;

.print
.print Result

SELECT *
FROM movies;

.print
.print What you learned:
.print DELETE removes only the matching row.

.print
.print ======================================================
.print Example 2 : Delete using movie name
.print ======================================================

.print SQL Executed:
.print DELETE FROM movies
.print WHERE movie_name = 'Titanic';

DELETE FROM movies
WHERE movie_name = 'Titanic';

.print
.print Result

SELECT *
FROM movies;

.print
.print What you learned:
.print WHERE can use any column.

.print
.print ======================================================
.print Warning Example
.print ======================================================

.print SQL (Do NOT execute now)
.print DELETE FROM movies;

.print
.print This would remove ALL rows.
.print The table would still exist.

.print
.print ======================================================
.print Verify table still exists
.print ======================================================

.print SQL Executed:
.print SELECT * FROM movies;

SELECT *
FROM movies;

.print
.print ======================================================
.print Mini Challenge
.print ======================================================

.print 1. Insert two new movies.
.print 2. Delete one using ID.
.print 3. Delete one using movie_name.
.print 4. Display the final table.

.print
.print ===== End of Lesson 22 =====

INSERT INTO movies (movie_name)
VALUES ('Ramayana');


