.print
.print ==========================================================
.print SQLite Practice Set 1 (Lessons 1–21)
.print File : lesson21d_exercise4.sql
.print Exercises : 16–20
.print ==========================================================

.print
.print ==========================================================
.print Exercise 16 : WHERE + COUNT()
.print ==========================================================

.print Scenario:
.print Count how many books cost Rs. 600 or more.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT COUNT(*) AS Expensive_Books
.print FROM books
.print WHERE price >= 600;
.print ----------------------------------------------------------

SELECT COUNT(*) AS Expensive_Books
FROM books
WHERE price >= 600;

.print
.print What you learned:
.print Aggregate functions can be combined with WHERE.

.print
.print ==========================================================
.print Exercise 17 : WHERE + AVG()
.print ==========================================================

.print Scenario:
.print Find the average price of books costing Rs. 600 or more.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT AVG(price) AS Average_Price
.print FROM books
.print WHERE price >= 600;
.print ----------------------------------------------------------

SELECT AVG(price) AS Average_Price
FROM books
WHERE price >= 600;

.print
.print What you learned:
.print Aggregate functions work on filtered rows.

.print
.print ==========================================================
.print Exercise 18 : ORDER BY + LIMIT
.print ==========================================================

.print Scenario:
.print Display the most expensive book.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print ORDER BY price DESC
.print LIMIT 1;
.print ----------------------------------------------------------

SELECT *
FROM books
ORDER BY price DESC
LIMIT 1;

.print
.print What you learned:
.print ORDER BY and LIMIT together help find top or bottom records.

.print
.print ==========================================================
.print Exercise 19 : LIKE + ORDER BY
.print ==========================================================

.print Scenario:
.print Display books whose title contains the word 'Python'.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE title LIKE '%%Python%%'
.print ORDER BY title;
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE title LIKE '%Python%'
ORDER BY title;

.print
.print What you learned:
.print LIKE and ORDER BY are often used together when searching.

.print
.print ==========================================================
.print Exercise 20 : Combined Conditions
.print ==========================================================

.print Scenario:
.print Display books costing between Rs. 500 and Rs. 900,
.print sorted from highest price to lowest.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE price BETWEEN 500 AND 900
.print ORDER BY price DESC;
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE price BETWEEN 500 AND 900
ORDER BY price DESC;

.print
.print What you learned:
.print SQL queries become powerful by combining multiple clauses.

.print
.print ==========================================================
.print Final Mini Challenge
.print ==========================================================

.print 1. Count all books costing less than Rs. 700.
.print 2. Find the average price of books between Rs. 500 and Rs. 900.
.print 3. Display the cheapest book.
.print 4. Display the most expensive book.
.print 5. Show books whose title contains 'SQL'.
.print 6. Sort books alphabetically.
.print 7. Display only the first 2 books after sorting by price.

.print
.print ===== End of lesson21d_exercise4.sql =====