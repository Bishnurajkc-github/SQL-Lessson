-- ==========================================================
-- Lesson 28 - SELF JOIN
-- ==========================================================

.print "=================================================="
.print "Lesson 28 - SELF JOIN"
.print "=================================================="

.print ""
.print "Step 1 - View the Employees Table"
.print "Why?"
.print "A SELF JOIN uses the same table twice."
.print ""
.print "SQL Being Executed:"
.print "SELECT * FROM employees;"

SELECT * FROM employees;

.print ""
.print "Observe:"
.print "- Alice has no manager."
.print "- Bob and Charlie report to Alice."
.print "- David and Emma report to Bob."

.print ""
.print "--------------------------------------------------"
.print "Step 2 - SELF JOIN"
.print ""
.print "Why?"
.print "Display every employee together with"
.print "their manager's name."
.print ""
.print "SQLite will temporarily use two copies"
.print "of the same table."
.print ""
.print "SQL Being Executed:"

.print "SELECT"
.print "    e.employee_name AS Employee,"
.print "    m.employee_name AS Manager"
.print "FROM employees AS e"
.print "LEFT JOIN employees AS m"
.print "ON e.manager_id = m.employee_id;"

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;

.print ""
.print "--------------------------------------------------"
.print "Observe the Output"
.print ""
.print "- Alice has no manager."
.print "- Bob's manager is Alice."
.print "- Charlie's manager is Alice."
.print "- David's manager is Bob."
.print "- Emma's manager is Bob."

.print ""
.print "--------------------------------------------------"
.print "Think Like SQLite"

.print ""
.print "SQLite reads one employee at a time."

.print ""
.print "For each employee:"
.print "1. Read manager_id."
.print "2. Search another copy of employees."
.print "3. Match manager_id with employee_id."
.print "4. If found, display manager name."
.print "5. If not found, display NULL."

.print ""
.print "--------------------------------------------------"
.print "Important Rule"

.print ""
.print "A SELF JOIN joins a table"
.print "with another copy of itself."

.print ""
.print "Aliases make the two copies different."

.print ""
.print "employees AS e  -> Employee"

.print "employees AS m  -> Manager"

.print ""
.print "--------------------------------------------------"
.print "Comparison"
.print ""
.print "LEFT SELF JOIN keeps employees"
.print "who do not have managers."

.print ""
.print "SQL Being Executed:"

.print "SELECT"
.print "    e.employee_name AS Employee,"
.print "    m.employee_name AS Manager"
.print "FROM employees AS e"
.print "INNER JOIN employees AS m"
.print "ON e.manager_id = m.employee_id;"

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
INNER JOIN employees AS m
ON e.manager_id = m.employee_id;

.print ""
.print "Observe:"
.print "Alice disappears because"
.print "there is no matching manager."

.print ""
.print "--------------------------------------------------"
.print "Mini Challenge"

.print ""
.print "Display:"
.print "- Employee ID"
.print "- Employee Name"
.print "- Manager Name"

.print ""
.print "Try it yourself before checking below."

.print ""
.print "Answer:"

SELECT
    e.employee_id,
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;

.print ""
.print "=================================================="
.print "Lesson 28 Complete!"
.print "You now understand how SELF JOIN"
.print "uses one table twice with aliases."
.print "=================================================="
