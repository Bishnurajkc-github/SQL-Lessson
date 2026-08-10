-- ==========================================================
-- Lesson 29D - Correlated Subqueries
-- ==========================================================
-- SELF-CONTAINED RUNNABLE LESSON
-- ==========================================================         
 
.headers on
.mode table

.print ""
.print "=========================================================="
.print "          LESSON 29D - CORRELATED SUBQUERIES"
.print "=========================================================="

.print ""
.print "Learning Objectives:"
.print "1. Understand what a correlated subquery is."
.print "2. Understand how the inner query refers to the outer query."
.print "3. Understand how SQLite processes each outer row."
.print "4. Compare normal and correlated subqueries."
.print "5. Think like SQLite."
.print "6. Connect the idea to real applications."

-- ==========================================================
-- PART 1 - CREATE PRACTICE DATA
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 1 - CREATING PRACTICE DATA"
.print "=========================================================="

.print ""
.print "We will create a temporary Employees table."
.print "The table will contain employees, departments and salaries."

DROP TABLE IF EXISTS lesson29d_employees;

CREATE TEMP TABLE lesson29d_employees (
employee_id INTEGER PRIMARY KEY,
employee_name TEXT,
department TEXT,
salary INTEGER
);

INSERT INTO lesson29d_employees VALUES
(1, 'Alice',   'IT',    60000),
(2, 'Bob',     'IT',    50000),
(3, 'Charlie', 'Sales', 70000),
(4, 'David',   'Sales', 60000),
(5, 'Emma',    'HR',    55000),
(6, 'Frank',   'HR',    45000);

.print ""
.print "Practice data created successfully."

-- ==========================================================
-- PART 2 - VIEW THE EMPLOYEES TABLE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 2 - VIEW EMPLOYEES"
.print "=========================================================="

.print ""
.print "Why?"
.print "We need to see the data before writing the query."

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29d_employees;"

.print ""

SELECT * FROM lesson29d_employees;

-- ==========================================================
-- PART 3 - UNDERSTAND THE QUESTION
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 3 - THE QUESTION"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which employees earn MORE than the average"
.print "salary of their own department?"

.print ""
 .print "This is important:"
.print "We do NOT want the overall company average."

.print ""
.print "We want:"
.print "Alice -> compare with IT average"
.print "Bob   -> compare with IT average"
.print "Charlie -> compare with Sales average"
.print "David   -> compare with Sales average"
.print "Emma    -> compare with HR average"
.print "Frank   -> compare with HR average"

-- ==========================================================
-- PART 4 - FIRST CALCULATE DEPARTMENT AVERAGES
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 4 - SEE THE DEPARTMENT AVERAGES"
.print "=========================================================="

.print ""
.print "Before learning the correlated subquery,"
.print "let us calculate the average salary of each department."

.print ""
.print "SQL Being Executed:"
.print "SELECT department, AVG(salary)"
.print "FROM lesson29d_employees"
.print "GROUP BY department;"

.print ""

SELECT
department,
AVG(salary) AS average_salary
FROM lesson29d_employees
GROUP BY department;

.print ""
.print "Observe:"
.print "IT average = 55000"
.print "Sales average = 65000"
.print "HR average = 50000"

-- ==========================================================
-- PART 5 - NORMAL SCALAR SUBQUERY
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 5 - NORMAL SCALAR SUBQUERY"
.print "=========================================================="

.print ""
.print "First, let's see what a normal scalar subquery does."

.print ""
.print "Question:"
.print "Which employees earn more than the"
.print "overall company average?"

.print ""
.print "SQL Being Executed:"

.print "SELECT employee_name, salary"
.print "FROM lesson29d_employees"
.print "WHERE salary >"
.print "("
.print "    SELECT AVG(salary)"
.print "    FROM lesson29d_employees"
.print ");"

.print ""

SELECT
employee_name,
salary
FROM lesson29d_employees
WHERE salary >
(
SELECT AVG(salary)
FROM lesson29d_employees
);

.print ""
.print "Observe:"
.print "The inner query calculates ONE overall average."

.print ""
.print "The inner query does NOT care"
.print "which employee the outer query is examining."

.print ""
.print "This is a normal scalar subquery."

-- ==========================================================
-- PART 6 - NOW THE REAL PROBLEM
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 6 - WHY WE NEED CORRELATION"
.print "=========================================================="

.print ""
.print "Our real question is different."

.print ""
.print "We want each employee compared"
.print "with the average of THEIR department."

.print ""
.print "For Alice:"
.print "Compare Alice's salary with IT average."

.print ""
.print "For Charlie:"
.print "Compare Charlie's salary with Sales average."

.print ""
.print "For Emma:"
.print "Compare Emma's salary with HR average."

.print ""
.print "The inner query therefore needs"
.print "information from the outer query."

.print ""
.print "This is called a CORRELATED SUBQUERY."

-- ==========================================================
-- PART 7 - THE CORRELATED SUBQUERY
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 7 - CORRELATED SUBQUERY"
.print "=========================================================="

.print ""
.print "SQL Being Executed:"

.print "SELECT employee_name, department, salary"
.print "FROM lesson29d_employees AS e"
.print "WHERE salary >"
.print "("
.print "    SELECT AVG(salary)"
.print "    FROM lesson29d_employees AS e2"
.print "    WHERE e2.department = e.department"
.print ");"

.print ""

SELECT
employee_name,
department,
salary
FROM lesson29d_employees AS e
WHERE salary >
(
SELECT AVG(salary)
FROM lesson29d_employees AS e2
WHERE e2.department = e.department
);

-- ==========================================================
-- PART 8 - THE IMPORTANT LINE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 8 - THE IMPORTANT LINE"
.print "=========================================================="

.print ""
.print "Look carefully at this line:"

.print ""
.print "WHERE e2.department = e.department"

.print ""
.print "e2 refers to the INNER query."

.print ""
.print "e refers to the OUTER query."

.print ""
.print "The inner query is therefore asking:"
.print "What is the average salary in the"
.print "same department as the current employee?"

.print ""
.print "That connection makes the query CORRELATED."

-- ==========================================================
-- PART 9 - THINK LIKE SQLITE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 9 - THINK LIKE SQLITE"
.print "=========================================================="

.print ""
.print "SQLite examines the outer table row by row."

.print ""
.print "----------------------------------------"
.print "CURRENT EMPLOYEE: Alice"
.print "----------------------------------------"

.print ""
.print "Alice is in IT."
.print "Alice salary = 60000."

.print ""
.print "Inner query:"
.print "Calculate average salary WHERE department = IT."

.print ""
.print "IT average = 55000."

.print ""
.print "Compare:"
.print "60000 > 55000"

.print ""
.print "YES -> Return Alice."

.print ""
.print "----------------------------------------"
.print "CURRENT EMPLOYEE: Bob"
.print "----------------------------------------"

.print ""
.print "Bob is in IT."
.print "Bob salary = 50000."

.print ""
.print "IT average = 55000."

.print ""
.print "Compare:"
.print "50000 > 55000"

.print ""
.print "NO -> Skip Bob."

.print ""
.print "----------------------------------------"
.print "CURRENT EMPLOYEE: Charlie"
.print "----------------------------------------"

.print ""
.print "Charlie is in Sales."
.print "Charlie salary = 70000."

.print ""
.print "Sales average = 65000."

.print ""
.print "Compare:"
.print "70000 > 65000"

.print ""
.print "YES -> Return Charlie."

.print ""
.print "----------------------------------------"
.print "CURRENT EMPLOYEE: David"
.print "----------------------------------------"

.print ""
.print "David is in Sales."
.print "David salary = 60000."

.print ""
.print "Sales average = 65000."

.print ""
.print "Compare:"
.print "60000 > 65000"

.print ""
.print "NO -> Skip David."

.print ""
.print "----------------------------------------"
.print "CURRENT EMPLOYEE: Emma"
.print "----------------------------------------"

.print ""
.print "Emma is in HR."
.print "Emma salary = 55000."

.print ""
.print "HR average = 50000."

.print ""
.print "Compare:"
.print "55000 > 50000"

.print ""
.print "YES -> Return Emma."

.print ""
.print "----------------------------------------"
.print "CURRENT EMPLOYEE: Frank"
.print "----------------------------------------"

.print ""
.print "Frank is in HR."
.print "Frank salary = 45000."

.print ""
.print "HR average = 50000."

.print ""
.print "Compare:"
.print "45000 > 50000"

.print ""
.print "NO -> Skip Frank."

-- ==========================================================
-- PART 10 - FINAL RESULT
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 10 - FINAL RESULT"
.print "=========================================================="

.print ""
.print "Employees earning more than"
.print "their department average:"

.print ""
.print "Alice   -> IT    -> 60000"
.print "Charlie -> Sales -> 70000"
.print "Emma    -> HR    -> 55000"

-- ==========================================================
-- PART 11 - NORMAL VS CORRELATED
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 11 - NORMAL VS CORRELATED SUBQUERY"
.print "=========================================================="

.print ""
.print "NORMAL SUBQUERY:"
.print "The inner query can work independently."

.print ""
.print "Example:"
.print "SELECT AVG(salary)"
.print "FROM lesson29d_employees;"

.print ""
.print "It produces one overall average."

.print ""
.print "CORRELATED SUBQUERY:"
.print "The inner query depends on the outer row."

.print ""
.print "Example:"
.print "WHERE e2.department = e.department"

.print ""
.print "The inner query uses the current"
.print "employee's department."

-- ==========================================================
-- PART 12 - THE CORRELATION VISUALLY
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 12 - VISUAL THINKING"
.print "=========================================================="

.print ""
.print "OUTER QUERY"
.print "     |"
.print "     | Current employee"
.print "     v"
.print "Alice - IT"
.print "     |"
.print "     v"
.print "INNER QUERY"
.print "     |"
.print "     | Find average for IT"
.print "     v"
.print "55000"
.print "     |"
.print "     v"
.print "Compare 60000 > 55000"
.print "     |"
.print "     v"
.print "Return Alice"

-- ==========================================================
-- PART 13 - WHY IS IT CALLED CORRELATED?
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 13 - WHY CORRELATED?"
.print "=========================================================="

.print ""
.print "The two queries are connected."

.print ""
.print "The inner query uses:"
.print "e.department"

.print ""
.print "But e belongs to the outer query."

.print ""
.print "Therefore:"
.print "INNER QUERY <---- depends on ----> OUTER QUERY"

.print ""
.print "That dependency is called CORRELATION."

-- ==========================================================
-- PART 14 - PYTHON / FLASK CONNECTION
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 14 - PYTHON / FLASK CONNECTION"
.print "=========================================================="

.print ""
.print "Correlated subqueries can be useful"
.print "for more advanced database questions."

.print ""
.print "Examples:"
.print "Find products priced above the average"
.print "price of their own category."

.print ""
.print "Find employees earning above"
.print "their department average."

.print ""
.print "Find students scoring above"
.print "their class average."

.print ""
.print "In Flask, Python can send these SQL queries"
.print "to SQLite and receive the resulting rows."

.print ""
.print "Later, SQLAlchemy can represent"
.print "similar database logic in Python."

-- ==========================================================
-- PART 15 - MINI CHALLENGE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 15 - MINI CHALLENGE"
.print "=========================================================="

.print ""
.print "Challenge:"
.print "Find employees whose salary is"
.print "BELOW their department average."

.print ""
.print "You already have the important parts."

.print ""
.print "Hint:"
.print "Change the comparison operator."

.print ""
.print "Instead of:"
.print "salary > average"

.print ""
.print "Try:"
.print "salary < average"

.print ""
.print "Write the query yourself before"
.print "looking at the original query."

-- ==========================================================
-- PART 16 - LESSON SUMMARY
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 16 - LESSON SUMMARY"
.print "=========================================================="

.print ""
.print "1. A correlated subquery depends"
.print "   on the outer query."

.print ""
.print "2. The inner query can refer to"
.print "   a column from the outer query."

.print ""
.print "3. SQLite examines an outer row,"
.print "   then uses that row's information"
.print "   inside the inner query."

.print ""
.print "4. The process continues for"
.print "   each outer row."

.print ""
.print "5. The key sign of correlation is"
.print "   a reference such as:"
.print "   e2.department = e.department"

.print ""
.print "6. Normal subquery:"
.print "   Inner query works independently."

.print ""
.print "7. Correlated subquery:"
.print "   Inner query depends on outer row."

-- ==========================================================
-- SECTION 3 COMPLETE
-- ==========================================================

.print ""
.print "=========================================================="
.print "       SECTION 3 - SUBQUERIES COMPLETE!"
.print "=========================================================="

.print ""
.print "29  - Introduction to Subqueries       COMPLETE"
.print "29A - IN / NOT IN                       COMPLETE"
.print "29B - Scalar Subqueries                COMPLETE"
.print "29C - EXISTS / NOT EXISTS              COMPLETE"
.print "29D - Correlated Subqueries             COMPLETE"

.print ""
.print "Congratulations!"
.print "You have completed the Subqueries section."

.print ""
.print "=========================================================="
