.print
.print ==========================================================
.print SQLite Practice Set 1 (Lessons 1–21)
.print File : lesson21a_exercise1.sql
.print Exercises : 1–5
.print ==========================================================

.print
.print ==========================================================
.print Exercise 1 : Create Books Table
.print ==========================================================

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print DROP TABLE IF EXISTS books;
.print
.print CREATE TABLE books (
.print     id INTEGER PRIMARY KEY,
.print     title TEXT,
.print     author TEXT,
.print     price INTEGER
.print );
.print ----------------------------------------------------------

DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    price INTEGER
);

.print
.print ✔ Table 'books' created successfully.

.print
.print ==========================================================
.print Exercise 2 : Insert Sample Data
.print ==========================================================

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print INSERT INTO books (...)
.print ----------------------------------------------------------

INSERT INTO books (title, author, price)
VALUES
('Python Basics', 'John Smith', 500),
('SQLite Made Easy', 'David Brown', 650),
('Learning Flask', 'Alice Green', 850),
('HTML & CSS', 'Robert White', 400),
('JavaScript Essentials', 'Emily Clark', 700);

.print
.print Result of:
.print SELECT * FROM books;
.print ----------------------------------------------------------

SELECT *
FROM books;

.print
.print What you learned:
.print INSERT INTO adds new rows to an existing table.

.print
.print ==========================================================
.print Exercise 3 : WHERE Clause
.print ==========================================================

.print Scenario:
.print Show books costing Rs. 500 or less.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE price <= 500;
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE price <= 500;

.print
.print What you learned:
.print WHERE filters rows that satisfy a condition.

.print
.print ==========================================================
.print Exercise 4 : ORDER BY
.print ==========================================================

.print Scenario:
.print Display books from the cheapest to the most expensive.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print ORDER BY price ASC;
.print ----------------------------------------------------------

SELECT *
FROM books
ORDER BY price ASC;

.print
.print What you learned:
.print ORDER BY ASC sorts rows from lowest to highest.

.print
.print ==========================================================
.print Exercise 5 : LIMIT
.print ==========================================================

.print Scenario:
.print Show only the first three books.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print LIMIT 3;
.print ----------------------------------------------------------

SELECT *
FROM books
LIMIT 3;

.print
.print What you learned:
.print LIMIT restricts the number of rows returned.

.print
.print ==========================================================
.print Mini Challenge
.print ==========================================================

.print 1. Add one new book.
.print 2. Update the price of one book.
.print 3. Display books costing more than 600.
.print 4. Sort books by title.
.print 5. Display only 2 books.

.print
.print ===== End of lesson21a_exercise1.sql =====