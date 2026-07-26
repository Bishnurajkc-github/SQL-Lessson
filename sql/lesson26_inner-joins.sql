.print "======================================================"
.print "              LESSON 26 - INNER JOIN"
.print "======================================================"

.print ""
.print "SCENARIO"
.print "--------"
.print "Imagine you own an online shopping website."
.print "Customer information is stored in one table."
.print "Order information is stored in another table."
.print ""
.print "Question:"
.print "Who ordered which product?"
.print ""
.print "Today we will learn how SQL combines two related tables."

.print ""
.print "======================================================"
.print "STEP 1 - Clean Previous Lesson"
.print "======================================================"

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

.print ""
.print "Old tables removed."

.print ""
.print "======================================================"
.print "STEP 2 - Create Customers Table"
.print "======================================================"

.print ""
.print "SQL Being Executed:"
.print "CREATE TABLE customers"

CREATE TABLE customers(
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT
);

.print ""
.print "Customers table created successfully."

.print ""
.print "======================================================"
.print "STEP 3 - Create Orders Table"
.print "======================================================"

.print ""
.print "SQL Being Executed:"
.print "CREATE TABLE orders"

CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product TEXT,

    FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id)
);

.print ""
.print "Orders table created successfully."

.print ""
.print "======================================================"
.print "STEP 4 - Insert Customers"
.print "======================================================"

.print ""
.print "SQL Being Executed:"
.print "INSERT INTO customers"

INSERT INTO customers VALUES
(1,'Bishnu'),
(2,'Aayushi'),
(3,'Ram'),
(4,'Sita');

.print ""
.print "4 customers inserted."

.print ""
.print "======================================================"
.print "STEP 5 - Insert Orders"
.print "======================================================"

.print ""
.print "SQL Being Executed:"
.print "INSERT INTO orders"

INSERT INTO orders VALUES
(101,1,'Laptop'),
(102,1,'Mouse'),
(103,2,'Keyboard');

.print ""
.print "3 orders inserted."

.print ""
.print "Notice something?"
.print "There are 4 customers."
.print "But only 3 orders."

.print ""
.print "Let's investigate."

.print ""
.print "======================================================"
.print "STEP 6 - View Customers"
.print "======================================================"

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM customers;"

SELECT * FROM customers;

.print ""
.print "OUTPUT OBSERVATION"
.print "------------------"
.print "There are four customers."

.print ""
.print "======================================================"
.print "STEP 7 - View Orders"
.print "======================================================"

.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM orders;"

SELECT * FROM orders;

.print ""
.print "OUTPUT OBSERVATION"
.print "------------------"
.print "Only three orders exist."

.print ""
.print "Question:"
.print "Which customer owns each order?"
.print ""
.print "We cannot answer that by looking at"
.print "the two tables separately."

.print ""
.print "This is where INNER JOIN becomes useful."

.print ""
.print "======================================================"
.print "STEP 8 - INNER JOIN"
.print "======================================================"

.print ""
.print "SQL Being Executed:"

.print ""
.print "SELECT customer_name, product"
.print "FROM customers"
.print "INNER JOIN orders"
.print "ON customers.customer_id = orders.customer_id;"

SELECT
customer_name,
product
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

.print ""
.print "======================================================"
.print "OBSERVE THE RESULT"
.print "======================================================"

.print ""
.print "Questions"

.print "1. Why does Bishnu appear twice?"

.print "Answer:"
.print "Because Bishnu has two orders."

.print ""

.print "2. Why does Aayushi appear once?"

.print "Answer:"
.print "Because she has one order."

.print ""

.print "3. Where is Ram?"

.print "Answer:"
.print "Ram has no order."
.print "Therefore there is no matching row."

.print ""

.print "4. Where is Sita?"

.print "Answer:"
.print "Sita also has no order."
.print "She is skipped."

.print ""

.print "IMPORTANT RULE"

.print ""
.print "INNER JOIN only returns rows"
.print "that exist in BOTH tables."

.print ""

.print "Customer must exist."

.print "AND"

.print "Order must exist."

.print "Otherwise SQL ignores that row."

.print ""
.print "======================================================"
.print "STEP 9 - Understanding the ON Clause"
.print "======================================================"

.print ""
.print "SQL compares"

.print "customers.customer_id"

.print "with"

.print "orders.customer_id"

.print ""

.print "If both values match"

.print "Join them."

.print ""

.print "If they don't match"

.print "Skip them."

.print ""
.print "======================================================"
.print "STEP 10 - Real Flask Example"
.print "======================================================"

.print ""

.print "Imagine your future Flask Notes App."

.print ""

.print "users"

.print "id username"

.print ""

.print "notes"

.print "id user_id title"

.print ""

.print "To display"

.print ""

.print "Bishnu -> Python Notes"

.print ""

.print "SQLite combines"

.print "users"

.print "and"

.print "notes"

.print ""

.print "using INNER JOIN."

.print ""
.print "======================================================"
.print "WHAT YOU LEARNED"
.print "======================================================"

.print ""

.print "1. INNER JOIN combines two tables."

.print "2. It needs a matching column."

.print "3. Matching columns are usually"

.print "Primary Key <-> Foreign Key."

.print "4. Customers without orders"

.print "are NOT shown."

.print "5. One customer can appear"

.print "many times."

.print ""
.print "======================================================"
.print "MINI CHALLENGE"
.print "======================================================"

.print ""

.print "1. Add another order for Aayushi."

.print ""

.print "2. Run INNER JOIN again."

.print ""

.print "3. How many rows are returned?"

.print ""

.print "4. Add customer Hari."

.print ""

.print "5. Why doesn't Hari appear?"


.print ""

.print ""
.print "Mini Challenge 1"
.print "Adding another order for Aayushi"

INSERT INTO orders VALUES
(104,2,'Monitor');

.print ""
.print "Viewing the Orders table"

SELECT * FROM orders;

SELECT
    customer_name,
    product
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;



.print "Lesson Complete."