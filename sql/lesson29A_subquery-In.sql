.print ""
.print "-------------------------------------------"
.print "Step 2 - Subquery using IN"
.print ""
.print "Why?"
.print "Find the names of customers who have"
.print "placed at least one order."
.print ""
.print "SQLite will:"
.print "1. Execute the INNER query first."
.print "2. Get a list of customer IDs."
.print "3. Check whether each customer's ID"
.print "   exists in that list."
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
.print "-------------------------------------------"
.print "Observe the Output"
.print ""
.print "- Bishnu appears because customer_id = 1"
.print "  exists in the list."
.print "- Aayushi appears because customer_id = 2"
.print "  exists in the list."
.print "- Ram does NOT appear because customer_id = 3"
.print "  is not in the list."
.print "- Sita does NOT appear because customer_id = 4"
.print "  is not in the list."
.print ""
.print "Important:"
.print "IN checks whether a value EXISTS in the list."
.print "It does NOT count how many times it appears."