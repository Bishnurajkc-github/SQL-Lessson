.print
.print ==========================================================
.print SQLite Practice Set 1 (Lessons 1–21)
.print File : lesson21b_exercise2.sql
.print Exercises : 6–10
.print ==========================================================

.print
.print ==========================================================
.print Exercise 6 : BETWEEN
.print ==========================================================

.print Scenario:
.print Show books costing between Rs. 500 and Rs. 800.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE price BETWEEN 500 AND 800;
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE price BETWEEN 500 AND 800;

.print
.print What you learned:
.print BETWEEN includes both the starting and ending values.

.print
.print ==========================================================
.print Exercise 7 : LIKE
.print ==========================================================

.print Scenario:
.print Show books where the author's name starts with 'D'.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE author LIKE 'D%%';
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE author LIKE 'D%';

.print
.print What you learned:
.print LIKE searches for matching text patterns.
.print % represents zero or more characters.

.print
.print ==========================================================
.print Exercise 8 : AND
.print ==========================================================

.print Scenario:
.print Show books costing Rs. 500 or more but less than Rs. 800.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE price >= 500
.print AND price < 800;
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE price >= 500
AND price < 800;

.print
.print What you learned:
.print AND requires every condition to be true.

.print
.print ==========================================================
.print Exercise 9 : OR
.print ==========================================================

.print Scenario:
.print Show books costing exactly Rs. 400 OR Rs. 850.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT *
.print FROM books
.print WHERE price = 400
.print OR price = 850;
.print ----------------------------------------------------------

SELECT *
FROM books
WHERE price = 400
OR price = 850;

.print
.print What you learned:
.print OR requires only one condition to be true.

.print
.print ==========================================================
.print Exercise 10 : DISTINCT
.print ==========================================================

.print Scenario:
.print Show all different book prices.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT DISTINCT price
.print FROM books;
.print ----------------------------------------------------------

SELECT DISTINCT price
FROM books;

.print
.print What you learned:
.print DISTINCT removes duplicate values from the result.

.print
.print ==========================================================
.print Mini Challenge
.print ==========================================================

.print 1. Insert two new books with the same price.
.print 2. Run SELECT price FROM books;
.print 3. Run SELECT DISTINCT price FROM books;
.print 4. Find books where the author's name ends with 'n'.
.print 5. Find books where the author's name contains 'own'.
.print 6. Display books costing between Rs. 400 and Rs. 700.
.print 7. Sort the result from highest price to lowest.

.print
.print ===== End of lesson21b_exercise2.sql =====