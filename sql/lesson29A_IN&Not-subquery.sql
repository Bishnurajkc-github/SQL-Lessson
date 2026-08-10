-- ==========================================================
-- Lesson 29A - Subqueries using IN and NOT IN
-- ==========================================================

.headers on
.mode table

.print ""
.print "=========================================================="
.print "        LESSON 29A - SUBQUERIES USING IN AND NOT IN"
.print "=========================================================="

.print ""
.print "Learning Objectives:"
.print "1. Understand what a subquery is."
.print "2. Understand how IN works."
.print "3. Understand how NOT IN works."
.print "4. See how SQLite executes the inner query first."
.print "5. Understand why duplicate values do not duplicate results."
.print "6. Learn to think like SQLite."

-- ==========================================================
-- PART 1 - CREATE PRACTICE DATA
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 1 - CREATING PRACTICE DATA"
.print "=========================================================="

.print ""
.print "Temporary tables will be created for this lesson."
.print "They will not affect your permanent database."

DROP TABLE IF EXISTS lesson29a_customers;
DROP TABLE IF EXISTS lesson29a_orders;

CREATE TEMP TABLE lesson29a_customers (
customer_id INTEGER PRIMARY KEY,
customer_name TEXT
);

CREATE TEMP TABLE lesson29a_orders (
order_id INTEGER PRIMARY KEY,
customer_id INTEGER,
product TEXT
);

INSERT INTO lesson29a_customers VALUES
(1, 'Bishnu'),
(2, 'Aayushi'),
(3, 'Ram'),
(4, 'Sita');

INSERT INTO lesson29a_orders VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 2, 'Monitor');

.print ""
.print "Practice data created successfully."

-- ==========================================================
-- PART 2 - VIEW CUSTOMERS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 2 - CUSTOMERS TABLE"
.print "=========================================================="

.print ""
.print "Why?"
.print "We first look at the complete Customers table."

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29a_customers;"

.print ""
SELECT * FROM lesson29a_customers;

.print ""
.print "Observe:"
.print "Customer 1 = Bishnu"
.print "Customer 2 = Aayushi"
.print "Customer 3 = Ram"
.print "Customer 4 = Sita"

-- ==========================================================
-- PART 3 - VIEW ORDERS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 3 - ORDERS TABLE"
.print "=========================================================="

.print ""
.print "Why?"
.print "We need to see which customers have placed orders."

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29a_orders;"

.print ""
SELECT * FROM lesson29a_orders;

.print ""
.print "Observe:"
.print "Customer 1 has two orders."
.print "Customer 2 has two orders."
.print "Customer 3 has no orders."
.print "Customer 4 has no orders."

-- ==========================================================
-- PART 4 - THE INNER QUERY
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 4 - THE INNER QUERY"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which customer IDs appear in the Orders table?"

.print ""
.print "SQL Being Executed:"
.print "SELECT customer_id"
.print "FROM lesson29a_orders;"

.print ""
SELECT customer_id
FROM lesson29a_orders;

.print ""
.print "The inner query returned:"
.print "1"
.print "1"
.print "2"
.print "2"

.print ""
.print "Important:"
.print "Customer ID 1 appears twice."
.print "Customer ID 2 appears twice."

.print ""
.print "IN does not count duplicates."
.print "IN only asks whether a value exists in the list."

-- ==========================================================
-- PART 5 - USING IN
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 5 - USING IN"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which customers have placed at least one order?"

.print ""
.print "SQL Being Executed:"
.print "SELECT customer_name"
.print "FROM lesson29a_customers"
.print "WHERE customer_id IN"
.print "("
.print "    SELECT customer_id"
.print "    FROM lesson29a_orders"
.print ");"

.print ""
SELECT customer_name
FROM lesson29a_customers
WHERE customer_id IN
(
SELECT customer_id
FROM lesson29a_orders
);

.print ""
.print "Result:"
.print "Bishnu"
.print "Aayushi"

.print ""
.print "Think Like SQLite:"
.print "1. Run the inner query."
.print "2. Get the customer ID list."
.print "3. Read each customer."
.print "4. Check whether the ID exists in the list."
.print "5. If YES, return the customer."

-- ==========================================================
-- PART 6 - USING NOT IN
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 6 - USING NOT IN"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which customers have NOT placed an order?"

.print ""
.print "SQL Being Executed:"
.print "SELECT customer_name"
.print "FROM lesson29a_customers"
.print "WHERE customer_id NOT IN"
.print "("
.print "    SELECT customer_id"
.print "    FROM lesson29a_orders"
.print ");"

.print ""
SELECT customer_name
FROM lesson29a_customers
WHERE customer_id NOT IN
(
SELECT customer_id
FROM lesson29a_orders
);

.print ""
.print "Result:"
.print "Ram"
.print "Sita"

.print ""
.print "Think Like SQLite:"
.print "1. Run the inner query."
.print "2. Get the customer ID list."
.print "3. Read each customer."
.print "4. Check whether the ID does NOT exist."
.print "5. If YES, return the customer."

-- ==========================================================
-- PART 7 - SECOND EXAMPLE
-- STUDENTS AND ENROLLMENTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 7 - STUDENTS AND ENROLLMENTS"
.print "=========================================================="

.print ""
.print "Now we use the same pattern with different tables."

DROP TABLE IF EXISTS lesson29a_students;
DROP TABLE IF EXISTS lesson29a_enrollments;

CREATE TEMP TABLE lesson29a_students (
student_id INTEGER PRIMARY KEY,
student_name TEXT
);

CREATE TEMP TABLE lesson29a_enrollments (
enrollment_id INTEGER PRIMARY KEY,
student_id INTEGER,
course TEXT
);

INSERT INTO lesson29a_students VALUES
(1, 'Bishnu'),
(2, 'Aayushi'),
(3, 'John'),
(4, 'Maria');

INSERT INTO lesson29a_enrollments VALUES
(201, 1, 'SQL'),
(202, 1, 'Python'),
(203, 2, 'Flask');

.print ""
.print "STUDENTS TABLE"

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29a_students;"

.print ""
SELECT * FROM lesson29a_students;

.print ""
.print "ENROLLMENTS TABLE"

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29a_enrollments;"

.print ""
SELECT * FROM lesson29a_enrollments;

-- ==========================================================
-- PART 8 - STUDENTS USING IN
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 8 - STUDENTS USING IN"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which students are enrolled in at least one course?"

.print ""
.print "First, run the inner query."

.print ""
.print "SQL Being Executed:"
.print "SELECT student_id"
.print "FROM lesson29a_enrollments;"

.print ""
SELECT student_id
FROM lesson29a_enrollments;

.print ""
.print "Inner query result:"
.print "1"
.print "1"
.print "2"

.print ""
.print "Now run the complete query."

.print ""
.print "SQL Being Executed:"
.print "SELECT student_name"
.print "FROM lesson29a_students"
.print "WHERE student_id IN"
.print "("
.print "    SELECT student_id"
.print "    FROM lesson29a_enrollments"
.print ");"

.print ""
SELECT student_name
FROM lesson29a_students
WHERE student_id IN
(
SELECT student_id
FROM lesson29a_enrollments
);

.print ""
.print "Result:"
.print "Bishnu"
.print "Aayushi"

-- ==========================================================
-- PART 9 - STUDENTS USING NOT IN
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 9 - STUDENTS USING NOT IN"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which students are NOT enrolled in any course?"

.print ""
.print "SQL Being Executed:"
.print "SELECT student_name"
.print "FROM lesson29a_students"
.print "WHERE student_id NOT IN"
.print "("
.print "    SELECT student_id"
.print "    FROM lesson29a_enrollments"
.print ");"

.print ""
SELECT student_name
FROM lesson29a_students
WHERE student_id NOT IN
(
SELECT student_id
FROM lesson29a_enrollments
);

.print ""
.print "Result:"
.print "John"
.print "Maria"

-- ==========================================================
-- PART 10 - PATTERN RECOGNITION
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 10 - PATTERN RECOGNITION"
.print "=========================================================="

.print ""
.print "The same pattern appears in many applications."

.print ""
.print "Customers -> Orders"
.print "Students -> Enrollments"
.print "Users -> Posts"
.print "Authors -> Books"
.print "Doctors -> Appointments"

.print ""
.print "GENERAL IN PATTERN:"

.print ""
.print "SELECT something"
.print "FROM parent_table"
.print "WHERE primary_key IN"
.print "("
.print "    SELECT foreign_key"
.print "    FROM child_table"
.print ");"

.print ""
.print "GENERAL NOT IN PATTERN:"

.print ""
.print "SELECT something"
.print "FROM parent_table"
.print "WHERE primary_key NOT IN"
.print "("
.print "    SELECT foreign_key"
.print "    FROM child_table"
.print ");"

-- ==========================================================
-- PART 11 - PYTHON / FLASK CONNECTION
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 11 - PYTHON / FLASK CONNECTION"
.print "=========================================================="

.print ""
.print "In Flask applications, this pattern can answer:"
.print "Which customers have orders?"
.print "Which students are enrolled?"
.print "Which users have posts?"

.print ""
.print "The tables and names change,"
.print "but the SQL pattern remains similar."

-- ==========================================================
-- PART 12 - MINI CHALLENGE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 12 - MINI CHALLENGE"
.print "=========================================================="

.print ""
.print "Challenge:"
.print "Find students who ARE enrolled in at least one course."

.print ""
.print "Use these tables:"
.print "lesson29a_students"
.print "lesson29a_enrollments"

.print ""
.print "Hint:"
.print "Use IN."

.print ""
.print "Try writing the query yourself first."

-- ==========================================================
-- LESSON SUMMARY
-- ==========================================================

.print ""
.print "=========================================================="
.print "LESSON 29A - SUMMARY"
.print "=========================================================="

.print ""
.print "1. A subquery is a query inside another query."

.print ""
.print "2. SQLite executes the inner query first."

.print ""
.print "3. IN checks whether a value exists"
.print "   in the inner query result."

.print ""
.print "4. NOT IN checks whether a value does not"
.print "   exist in the inner query result."

.print ""
.print "5. IN does not count duplicate values."

.print ""
.print "6. The outer query uses the result"
.print "   produced by the inner query."

.print ""
.print "=========================================================="
.print "          LESSON 29A COMPLETE!"
.print "=========================================================="

````

**One last important point:** your terminal command is fine:

```text
.read sql\lesson29A_IN&Not-subquery.sql
````

The error was caused by the ` ```sql` text being physically inside the file, not by your `.read` command or the SQL itself. Your uploaded terminal output confirms that SQLite was literally trying to parse ` ```sql` as the first SQL statement.

After replacing the file, run the same `.read` command. You should now get the table-formatted data throughout the lesson.
