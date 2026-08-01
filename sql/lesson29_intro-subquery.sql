-- ==========================================================
-- Lesson 29 - Subqueries
-- ==========================================================

.print "=================================================="
.print "Lesson 29 - Subqueries"
.print "=================================================="

.print ""
.print "Scenario:"
.print "Find the names of customers who have placed"
.print "at least one order."

.print ""
.print "--------------------------------------------------"
.print "Step 1 - View the Customers Table"
.print ""
.print "Why?"
.print "This table contains all customers."
.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM customers;"

SELECT * FROM customers;

.print ""
.print "--------------------------------------------------"
.print "Step 2 - View the Orders Table"
.print ""
.print "Why?"
.print "This table contains customer IDs that"
.print "have placed orders."
.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM orders;"

SELECT * FROM orders;

.print ""
.print "--------------------------------------------------"
.print "Step 3 - Predict Before Running"
.print ""
.print "Question:"
.print "Which customer IDs appear in the Orders table?"
.print ""
.print "Think before executing the next query."

.print ""
.print "--------------------------------------------------"
.print "Step 4 - Run the Inner Query"
.print ""
.print "Why?"
.print "A subquery executes the INNER query first."
.print ""
.print "SQL Being Executed:"
.print "SELECT customer_id"
.print "FROM orders;"

SELECT customer_id
FROM orders;

.print ""
.print "Observe:"
.print "Customer IDs may appear multiple times"
.print "because one customer can place many orders."

.print ""
.print "--------------------------------------------------"
.print "Step 5 - Create the Subquery"
.print ""
.print "Why?"
.print "Use the result of the INNER query"
.print "inside another query."
.print ""
.print "SQL Being Executed:"

.print "SELECT customer_name"
.print "FROM customers"
.print "WHERE customer_id IN"
.print "("
.print "    SELECT customer_id"
.print "    FROM orders"
.print ");"

SELECT customer_name
FROM customers
WHERE customer_id IN
(
    SELECT customer_id
    FROM orders
);

.print ""
.print "--------------------------------------------------"
.print "Observe the Output"
.print ""
.print "Questions:"
.print "- Which customers appeared?"
.print "- Why did Ram not appear?"
.print "- Why did Sita not appear?"

.print ""
.print "--------------------------------------------------"
.print "Think Like SQLite"

.print ""
.print "SQLite first runs the INNER query."

.print ""
.print "Result:"
.print "1"
.print "1"
.print "2"
.print "2"

.print ""
.print "SQLite now runs the OUTER query."

.print ""
.print "It searches the Customers table."

.print ""
.print "Keep customers whose customer_id"
.print "is found in the list."

.print ""
.print "Final Result:"
.print "Bishnu"
.print "Aayushi"

.print ""
.print "--------------------------------------------------"
.print "Important Rule"

.print ""
.print "A subquery is simply"
.print "a query inside another query."

.print ""
.print "SQLite ALWAYS executes"
.print "the INNER query first."

.print ""
.print "--------------------------------------------------"
.print "Common Beginner Mistakes"

.print ""
.print "- Thinking the outer query runs first."
.print "- Forgetting parentheses."
.print "- Not testing the inner query separately."

.print ""
.print "--------------------------------------------------"
.print "Python / Flask Connection"

.print ""
.print "Subqueries are commonly used to find:"
.print "- Customers with orders"
.print "- Students with enrollments"
.print "- Users with posts"
.print "- Products that have sales"

.print ""
.print "--------------------------------------------------"
.print "Bonus Practice"

.print ""
.print "Display customers who have NOT placed orders."

.print ""
.print "SQL Being Executed:"

.print "SELECT customer_name"
.print "FROM customers"
.print "WHERE customer_id NOT IN"
.print "("
.print "    SELECT customer_id"
.print "    FROM orders"
.print ");"

SELECT customer_name
FROM customers
WHERE customer_id NOT IN
(
    SELECT customer_id
    FROM orders
);

.print ""
.print "Observe:"
.print "Ram and Sita should appear."

.print ""
.print "--------------------------------------------------"
.print "Lesson Summary"

.print ""
.print "- A subquery is a query inside another query."
.print "- SQLite executes the inner query first."
.print "- The outer query uses the inner query's result."
.print "- IN checks whether a value exists in a list."
.print "- NOT IN checks whether a value does not exist."

.print ""
.print "=================================================="
.print "Lesson 29 Complete!"
.print "You now understand the basics of Subqueries."
.print "=================================================="