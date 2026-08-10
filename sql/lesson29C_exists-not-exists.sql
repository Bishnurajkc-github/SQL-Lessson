-- ==========================================================
-- Lesson 29C - EXISTS and NOT EXISTS
-- ==========================================================
-- SELF-CONTAINED RUNNABLE LESSON
-- ==========================================================

.headers on
.mode table

.print ""
.print "=========================================================="
.print "          LESSON 29C - EXISTS AND NOT EXISTS"
.print "=========================================================="

.print ""
.print "Learning Objectives:"
.print "1. Understand what EXISTS means."
.print "2. Understand what NOT EXISTS means."
.print "3. Understand how EXISTS checks for matching rows."
.print "4. Understand why EXISTS returns YES or NO."
.print "5. Compare EXISTS with IN."
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

DROP TABLE IF EXISTS lesson29c_customers;
DROP TABLE IF EXISTS lesson29c_orders;

CREATE TEMP TABLE lesson29c_customers (
customer_id INTEGER PRIMARY KEY,
customer_name TEXT
);

CREATE TEMP TABLE lesson29c_orders (
order_id INTEGER PRIMARY KEY,
customer_id INTEGER,
product TEXT
);

INSERT INTO lesson29c_customers VALUES
(1, 'Bishnu'),
(2, 'Aayushi'),
(3, 'Ram'),
(4, 'Sita');

INSERT INTO lesson29c_orders VALUES
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
.print "We first look at the Customers table."

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29c_customers;"

.print ""
SELECT * FROM lesson29c_customers;

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
.print "We need to see which customers have orders."

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29c_orders;"

.print ""
SELECT * FROM lesson29c_orders;

.print ""
.print "Observe:"
.print "Customer 1 has two orders."
.print "Customer 2 has two orders."
.print "Customer 3 has no orders."
.print "Customer 4 has no orders."

-- ==========================================================
-- PART 4 - UNDERSTANDING EXISTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 4 - WHAT DOES EXISTS MEAN?"
.print "=========================================================="

.print ""
.print "EXISTS asks a YES or NO question."

.print ""
.print "The question is:"
.print "Does at least one matching row exist?"

.print ""
.print "It does NOT ask:"
.print "How many rows exist?"

.print ""
.print "It does NOT need:"
.print "The actual order information."

.print ""
.print "It only needs to know:"
.print "YES - a matching row exists."
.print "NO  - no matching row exists."

-- ==========================================================
-- PART 5 - FIRST EXISTS QUERY
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 5 - CUSTOMERS WHO HAVE ORDERS"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which customers have at least one order?"

.print ""
.print "SQL Being Executed:"

.print "SELECT customer_name"
.print "FROM lesson29c_customers AS c"
.print "WHERE EXISTS"
.print "("
.print "    SELECT 1"
.print "    FROM lesson29c_orders AS o"
.print "    WHERE o.customer_id = c.customer_id"
.print ");"

.print ""

SELECT customer_name
FROM lesson29c_customers AS c
WHERE EXISTS
(
SELECT 1
FROM lesson29c_orders AS o
WHERE o.customer_id = c.customer_id
);

.print ""
.print "Result:"
.print "Bishnu"
.print "Aayushi"

-- ==========================================================
-- PART 6 - THINK LIKE SQLITE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 6 - THINK LIKE SQLITE"
.print "=========================================================="

.print ""
.print "SQLite looks at each customer."

.print ""
.print "Bishnu:"
.print "customer_id = 1"
.print "Does an order with customer_id 1 exist?"
.print "YES -> Return Bishnu."

.print ""
.print "Aayushi:"
.print "customer_id = 2"
.print "Does an order with customer_id 2 exist?"
.print "YES -> Return Aayushi."

.print ""
.print "Ram:"
.print "customer_id = 3"
.print "Does an order with customer_id 3 exist?"
.print "NO -> Skip Ram."

.print ""
.print "Sita:"
.print "customer_id = 4"
.print "Does an order with customer_id 4 exist?"
.print "NO -> Skip Sita."

.print ""
.print "Final Result:"
.print "Bishnu"
.print "Aayushi"

-- ==========================================================
-- PART 7 - WHY SELECT 1?
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 7 - WHY SELECT 1?"
.print "=========================================================="

.print ""
.print "Inside EXISTS we wrote:"
.print "SELECT 1"

.print ""
.print "The number 1 is NOT important."

.print ""
.print "EXISTS does not care about the value returned."

.print ""
.print "EXISTS only cares whether"
.print "the subquery finds at least one row."

.print ""
.print "For example, these are logically used"
.print "for the same existence test:"

.print "SELECT 1"
.print "SELECT customer_id"
.print "SELECT product"

.print ""
.print "The important question remains:"
.print "Did the subquery find a matching row?"

-- ==========================================================
-- PART 8 - EXISTS DOES NOT COUNT
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 8 - EXISTS DOES NOT COUNT MATCHES"
.print "=========================================================="

.print ""
.print "Bishnu has TWO orders."

.print ""
.print "But EXISTS still returns Bishnu only once."

.print ""
.print "Why?"
.print "EXISTS stops caring once it knows"
.print "that at least one matching row exists."

.print ""
.print "The question is:"
.print "Does one exist?"

.print ""
.print "Not:"
.print "How many exist?"

-- ==========================================================
-- PART 9 - NOT EXISTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 9 - USING NOT EXISTS"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which customers have NO orders?"

.print ""
.print "NOT EXISTS means:"
.print "A matching row does NOT exist."

.print ""
.print "SQL Being Executed:"

.print "SELECT customer_name"
.print "FROM lesson29c_customers AS c"
.print "WHERE NOT EXISTS"
.print "("
.print "    SELECT 1"
.print "    FROM lesson29c_orders AS o"
.print "    WHERE o.customer_id = c.customer_id"
.print ");"

.print ""

SELECT customer_name
FROM lesson29c_customers AS c
WHERE NOT EXISTS
(
SELECT 1
FROM lesson29c_orders AS o
WHERE o.customer_id = c.customer_id
);

.print ""
.print "Result:"
.print "Ram"
.print "Sita"

-- ==========================================================
-- PART 10 - THINK LIKE SQLITE WITH NOT EXISTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 10 - THINK LIKE SQLITE"
.print "=========================================================="

.print ""
.print "Bishnu:"
.print "Matching order exists."
.print "NOT EXISTS = FALSE."
.print "Skip Bishnu."

.print ""
.print "Aayushi:"
.print "Matching order exists."
.print "NOT EXISTS = FALSE."
.print "Skip Aayushi."

.print ""
.print "Ram:"
.print "No matching order exists."
.print "NOT EXISTS = TRUE."
.print "Return Ram."

.print ""
.print "Sita:"
.print "No matching order exists."
.print "NOT EXISTS = TRUE."
.print "Return Sita."

-- ==========================================================
-- PART 11 - EXISTS VS IN
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 11 - EXISTS VS IN"
.print "=========================================================="

.print ""
.print "We already learned IN in Lesson 29A."

.print ""
.print "IN asks:"
.print "Is this value inside the result list?"

.print ""
.print "EXISTS asks:"
.print "Does at least one matching row exist?"

.print ""
.print "IN example:"
.print "SELECT customer_name"
.print "FROM lesson29c_customers"
.print "WHERE customer_id IN"
.print "("
.print "    SELECT customer_id"
.print "    FROM lesson29c_orders"
.print ");"

.print ""
.print "EXISTS example:"
.print "SELECT customer_name"
.print "FROM lesson29c_customers AS c"
.print "WHERE EXISTS"
.print "("
.print "    SELECT 1"
.print "    FROM lesson29c_orders AS o"
.print "    WHERE o.customer_id = c.customer_id"
.print ");"

.print ""
.print "Both can answer:"
.print "Which customers have placed orders?"

.print ""
.print "But they think about the problem differently."

-- ==========================================================
-- PART 12 - SECOND EXAMPLE
-- STUDENTS AND ENROLLMENTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 12 - STUDENTS AND ENROLLMENTS"
.print "=========================================================="

.print ""
.print "Now we use EXISTS with another real-world example."

DROP TABLE IF EXISTS lesson29c_students;
DROP TABLE IF EXISTS lesson29c_enrollments;

CREATE TEMP TABLE lesson29c_students (
student_id INTEGER PRIMARY KEY,
student_name TEXT
);

CREATE TEMP TABLE lesson29c_enrollments (
enrollment_id INTEGER PRIMARY KEY,
student_id INTEGER,
course TEXT
);

INSERT INTO lesson29c_students VALUES
(1, 'Bishnu'),
(2, 'Aayushi'),
(3, 'John'),
(4, 'Maria');

INSERT INTO lesson29c_enrollments VALUES
(201, 1, 'SQL'),
(202, 1, 'Python'),
(203, 2, 'Flask');

.print ""
.print "STUDENTS TABLE"

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29c_students;"

.print ""
SELECT * FROM lesson29c_students;

.print ""
.print "ENROLLMENTS TABLE"

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM lesson29c_enrollments;"

.print ""
SELECT * FROM lesson29c_enrollments;

-- ==========================================================
-- PART 13 - STUDENTS WITH ENROLLMENTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 13 - STUDENTS WITH ENROLLMENTS"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which students are enrolled in at least one course?"

.print ""
.print "SQL Being Executed:"

.print "SELECT student_name"
.print "FROM lesson29c_students AS s"
.print "WHERE EXISTS"
.print "("
.print "    SELECT 1"
.print "    FROM lesson29c_enrollments AS e"
.print "    WHERE e.student_id = s.student_id"
.print ");"

.print ""

SELECT student_name
FROM lesson29c_students AS s
WHERE EXISTS
(
SELECT 1
FROM lesson29c_enrollments AS e
WHERE e.student_id = s.student_id
);

.print ""
.print "Result:"
.print "Bishnu"
.print "Aayushi"

-- ==========================================================
-- PART 14 - STUDENTS WITHOUT ENROLLMENTS
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 14 - STUDENTS WITHOUT ENROLLMENTS"
.print "=========================================================="

.print ""
.print "Question:"
.print "Which students are NOT enrolled in any course?"

.print ""
.print "SQL Being Executed:"

.print "SELECT student_name"
.print "FROM lesson29c_students AS s"
.print "WHERE NOT EXISTS"
.print "("
.print "    SELECT 1"
.print "    FROM lesson29c_enrollments AS e"
.print "    WHERE e.student_id = s.student_id"
.print ");"

.print ""

SELECT student_name
FROM lesson29c_students AS s
WHERE NOT EXISTS
(
SELECT 1
FROM lesson29c_enrollments AS e
WHERE e.student_id = s.student_id
);

.print ""
.print "Result:"
.print "John"
.print "Maria"

-- ==========================================================
-- PART 15 - PYTHON / FLASK CONNECTION
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 15 - PYTHON / FLASK CONNECTION"
.print "=========================================================="

.print ""
.print "In a Flask application, EXISTS can answer questions such as:"

.print ""
.print "Does this customer have any orders?"
.print "Does this user have any posts?"
.print "Does this student have any enrollments?"
.print "Does this product have any reviews?"

.print ""
.print "NOT EXISTS can answer:"
.print "Which customers have no orders?"
.print "Which users have no posts?"
.print "Which students have no enrollments?"

-- ==========================================================
-- PART 16 - MINI CHALLENGE
-- ==========================================================

.print ""
.print "=========================================================="
.print "PART 16 - MINI CHALLENGE"
.print "=========================================================="

.print ""
.print "Challenge:"
.print "Using the students and enrollments tables,"
.print "find students who have at least one enrollment."

.print ""
.print "Hint:"
.print "Use EXISTS."

.print ""
.print "Remember:"
.print "EXISTS asks whether a matching row exists."

.print ""
.print "Try writing the query yourself first."

-- ==========================================================
-- LESSON SUMMARY
-- ==========================================================

.print ""
.print "=========================================================="
.print "LESSON 29C - SUMMARY"
.print "=========================================================="

.print ""
.print "1. EXISTS checks whether at least one matching row exists."

.print ""
.print "2. EXISTS produces a YES/NO condition."

.print ""
.print "3. EXISTS does not care what value"
.print "   the inner query returns."

.print ""
.print "4. SELECT 1 is commonly used because"
.print "   the actual value is not important."

.print ""
.print "5. EXISTS does not count how many matching"
.print "   rows exist."

.print ""
.print "6. NOT EXISTS checks that no matching row exists."

.print ""
.print "7. EXISTS and IN can sometimes solve"
.print "   similar problems, but they think differently."

.print ""
.print "=========================================================="
.print "          LESSON 29C COMPLETE!"
.print "=========================================================="
