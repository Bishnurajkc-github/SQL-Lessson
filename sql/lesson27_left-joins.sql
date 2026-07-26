-- ==========================================================
-- Lesson 27 - LEFT JOIN
-- ==========================================================

.print "=================================================="
.print "Lesson 27 - LEFT JOIN"
.print "=================================================="

.print ""
.print "Scenario:"
.print "We have two related tables:"
.print "1. customers"
.print "2. orders"
.print ""
.print "Some customers have placed orders."
.print "Some customers have not."
.print ""
.print "Goal:"
.print "Display ALL customers, even if they have not placed an order."

.print ""
.print "--------------------------------------------------"
.print "Step 1 - View the Customers Table"
.print "Why?"
.print "This is our LEFT table."
.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM customers;"

SELECT * FROM customers;

.print ""
.print "Observe:"
.print "- There are 4 customers."
.print "- SQLite will begin with these rows."

.print ""
.print "--------------------------------------------------"
.print "Step 2 - View the Orders Table"
.print "Why?"
.print "SQLite will search this table for matching orders."
.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM orders;"

SELECT * FROM orders;

.print ""
.print "Observe:"
.print "- Bishnu has two orders."
.print "- Aayushi has two orders."
.print "- Ram has no orders."
.print "- Sita has no orders."

.print ""
.print "--------------------------------------------------"
.print "Step 3 - Predict Before Running"
.print ""
.print "Question:"
.print "Will Ram appear?"
.print "Will Sita appear?"
.print "If they appear, what will SQLite display"
.print "for the product column?"

.print ""
.print "--------------------------------------------------"
.print "Step 4 - LEFT JOIN"
.print ""
.print "Why?"
.print "Keep every customer."
.print "If a matching order exists, display it."
.print "Otherwise display NULL."
.print ""
.print "SQL Being Executed:"

.print "SELECT"
.print "    customers.customer_name,"
.print "    orders.product"
.print "FROM customers"
.print "LEFT JOIN orders"
.print "ON customers.customer_id = orders.customer_id;"

SELECT
    customers.customer_name,
    orders.product
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

.print ""
.print "--------------------------------------------------"
.print "Observe the Output"
.print ""
.print "Questions:"
.print "- Why does Bishnu appear twice?"
.print "- Why does Aayushi appear twice?"
.print "- Why do Ram and Sita appear?"
.print "- Why is NULL displayed?"

.print ""
.print "--------------------------------------------------"
.print "Explanation"

.print ""
.print "SQLite starts with every row in the LEFT table."
.print "For each customer, it searches the Orders table."

.print ""
.print "If matching orders exist,"
.print "SQLite combines the rows."

.print ""
.print "If no matching order exists,"
.print "SQLite still keeps the customer"
.print "and fills the Orders columns with NULL."

.print ""
.print "Important Rule"

.print ""
.print "LEFT JOIN ALWAYS keeps every row"
.print "from the LEFT table."

.print ""
.print "Missing matches become NULL."

.print ""
.print "--------------------------------------------------"
.print "Real World Connection"

.print ""
.print "LEFT JOIN is commonly used for:"
.print "- Customers without orders"
.print "- Students without marks"
.print "- Users without notes"
.print "- Blog posts without comments"
.print "- Employees without departments"

.print ""
.print "--------------------------------------------------"
.print "Mini Challenge"

.print ""
.print "Display:"
.print "- customer_name"
.print "- product"
.print ""
.print "Sort the results alphabetically"
.print "by customer_name."

.print ""
.print "Try it yourself before checking the answer."

.print ""
.print "Answer:"

SELECT
    customers.customer_name,
    orders.product
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_name;

.print ""
.print "=================================================="
.print "Lesson 27 Complete!"
.print "You now understand how LEFT JOIN"
.print "keeps every row from the LEFT table."
.print "=================================================="


SELECT
    customers.customer_name
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;