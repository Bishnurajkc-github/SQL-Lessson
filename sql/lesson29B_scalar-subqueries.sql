-- ==========================================================
-- Lesson 29B - Scalar Subqueries
-- ==========================================================

.print "=================================================="
.print "Lesson 29B - Scalar Subqueries"
.print "=================================================="

.print ""
.print "Learning Objective:"
.print "- Understand what a Scalar Subquery is."
.print "- Learn how SQLite returns ONE value."
.print "- Use AVG(), MAX() and MIN() inside a subquery."
.print "- Think Like SQLite."

.print ""
.print "=================================================="
.print "Preparing Sample Data"
.print "=================================================="

DROP TABLE IF EXISTS marks;

CREATE TABLE marks(
    student_id INTEGER PRIMARY KEY,
    student_name TEXT,
    mark INTEGER
);

INSERT INTO marks VALUES
(1,'Bishnu',85),
(2,'Aayushi',92),
(3,'Ram',68),
(4,'Sita',75),
(5,'John',58);

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM marks;"

SELECT * FROM marks;

.print ""
.print "=================================================="
.print "Concept Before Syntax"
.print "=================================================="

.print ""
.print "Question:"
.print "Show students who scored ABOVE the class average."
.print ""
.print "Can SQLite answer immediately?"
.print ""
.print "No."
.print "First it must calculate the average."
.print "Then compare every student's mark."

.print ""
.print "=================================================="
.print "Step 1 - Calculate the Average"
.print "=================================================="

.print ""
.print "Why?"
.print "The INNER query returns ONE value."

.print ""
.print "SQL Being Executed:"
.print "SELECT AVG(mark)"
.print "FROM marks;"

SELECT AVG(mark)
FROM marks;

.print ""
.print "Observe:"
.print "Only ONE value is returned."
.print "This single value is called a SCALAR value."

.print ""
.print "=================================================="
.print "Step 2 - Scalar Subquery"
.print "=================================================="

.print ""
.print "Why?"
.print "Display students scoring ABOVE the class average."

.print ""
.print "SQL Being Executed:"

.print "SELECT student_name,"
.print "       mark"
.print "FROM marks"
.print "WHERE mark >"
.print "("
.print "    SELECT AVG(mark)"
.print "    FROM marks"
.print ");"

SELECT
    student_name,
    mark
FROM marks
WHERE mark >
(
    SELECT AVG(mark)
    FROM marks
);

.print ""
.print "=================================================="
.print "Think Like SQLite"
.print "=================================================="

.print ""
.print "Step 1"
.print "Run the INNER query."

.print ""
.print "SELECT AVG(mark)"

.print ""
.print "Result:"
.print "Average Mark"

.print ""
.print "Step 2"

.print ""
.print "Read every student."

.print ""
.print "Compare:"
.print "Is mark greater than Average?"

.print ""
.print "YES -> Return the student."

.print ""
.print "NO -> Skip the student."

.print ""
.print "Important:"
.print "SQLite calculates the average ONLY ONCE."

.print ""
.print "=================================================="
.print "Example 2 - Highest Mark"
.print "=================================================="

.print ""
.print "Question:"
.print "Who scored the highest mark?"

.print ""
.print "SQL Being Executed:"

.print "SELECT student_name,"
.print "       mark"
.print "FROM marks"
.print "WHERE mark ="
.print "("
.print "    SELECT MAX(mark)"
.print "    FROM marks"
.print ");"

SELECT
    student_name,
    mark
FROM marks
WHERE mark =
(
    SELECT MAX(mark)
    FROM marks
);

.print ""
.print "Observe:"
.print "MAX() also returns ONE value."

.print ""
.print "=================================================="
.print "Example 3 - Lowest Mark"
.print "=================================================="

.print ""
.print "SQL Being Executed:"

.print "SELECT student_name,"
.print "       mark"
.print "FROM marks"
.print "WHERE mark ="
.print "("
.print "    SELECT MIN(mark)"
.print "    FROM marks"
.print ");"

SELECT
    student_name,
    mark
FROM marks
WHERE mark =
(
    SELECT MIN(mark)
    FROM marks
);

.print ""
.print "=================================================="
.print "Pattern Recognition"
.print "=================================================="

.print ""
.print "Lesson 29A"
.print "INNER query returned MANY values."

.print ""
.print "Example:"
.print "1"
.print "1"
.print "2"
.print "2"

.print ""
.print "Lesson 29B"
.print "INNER query returns ONE value."

.print ""
.print "Example:"
.print "75.6"

.print ""
.print "Examples of Scalar Functions:"
.print "AVG()"
.print "MAX()"
.print "MIN()"
.print "COUNT()"

.print ""
.print "=================================================="
.print "Python / Flask Connection"
.print "=================================================="

.print ""
.print "Scalar subqueries are useful for:"
.print "- Products above average price."
.print "- Employees earning the highest salary."
.print "- Students above average marks."
.print "- Books cheaper than the average price."

.print ""
.print "=================================================="
.print "Mini Challenge"
.print "=================================================="

.print ""
.print "Write a query to display students"
.print "whose marks are BELOW the average."

.print ""
.print "Hint:"
.print "Replace > with <"

.print ""
.print "=================================================="
.print "Lesson Summary"
.print "=================================================="

.print ""
.print "- A Scalar Subquery returns ONE value."
.print "- SQLite executes the INNER query first."
.print "- AVG(), MAX(), MIN() and COUNT()"
.print "  commonly return one value."
.print "- The OUTER query compares every row"
.print "  with that single value."

.print ""
.print "=================================================="
.print "Lesson 29B Complete!"
.print "=================================================="