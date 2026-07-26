.print
.print ==========================================================
.print SQLite Practice Set 1 (Lessons 1–21)
.print File : lesson21c_exercise3.sql
.print Exercises : 11–15
.print ==========================================================

.print
.print ==========================================================
.print Exercise 11 : COUNT()
.print ==========================================================

.print Scenario:
.print Count how many books are stored in the table.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT COUNT(*) AS Total_Books
.print FROM books;
.print ----------------------------------------------------------

SELECT COUNT(*) AS Total_Books
FROM books;

.print
.print What you learned:
.print COUNT(*) counts the total number of rows.

.print
.print ==========================================================
.print Exercise 12 : SUM()
.print ==========================================================

.print Scenario:
.print Find the total price of all books.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT SUM(price) AS Total_Price
.print FROM books;
.print ----------------------------------------------------------

SELECT SUM(price) AS Total_Price
FROM books;

.print
.print What you learned:
.print SUM() adds all values in a numeric column.

.print
.print ==========================================================
.print Exercise 13 : AVG()
.print ==========================================================

.print Scenario:
.print Find the average price of all books.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT AVG(price) AS Average_Price
.print FROM books;
.print ----------------------------------------------------------

SELECT AVG(price) AS Average_Price
FROM books;

.print
.print What you learned:
.print AVG() calculates the average value.

.print
.print ==========================================================
.print Exercise 14 : MIN()
.print ==========================================================

.print Scenario:
.print Find the cheapest book price.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT MIN(price) AS Lowest_Price
.print FROM books;
.print ----------------------------------------------------------

SELECT MIN(price) AS Lowest_Price
FROM books;

.print
.print What you learned:
.print MIN() returns the smallest value.

.print
.print ==========================================================
.print Exercise 15 : MAX()
.print ==========================================================

.print Scenario:
.print Find the most expensive book price.

.print
.print SQL Executed:
.print ----------------------------------------------------------
.print SELECT MAX(price) AS Highest_Price
.print FROM books;
.print ----------------------------------------------------------

SELECT MAX(price) AS Highest_Price
FROM books;

.print
.print What you learned:
.print MAX() returns the largest value.

.print
.print ==========================================================
.print Mini Challenge
.print ==========================================================

.print 1. Insert one more book costing Rs. 900.
.print 2. Run COUNT(*).
.print 3. Run SUM(price).
.print 4. Run AVG(price).
.print 5. Run MIN(price).
.print 6. Run MAX(price).

.print
.print ===== End of lesson21c_exercise3.sql =====