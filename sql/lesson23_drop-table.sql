.print
.print ======================================================
.print Lesson 23 : DROP TABLE
.print ======================================================

.print
.print Scenario:
.print We have a temporary table that is no longer needed.
.print We will completely remove it from the database.

.print
.print ======================================================
.print Step 1 : Create a practice table
.print ======================================================

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    employee_name TEXT,
    department TEXT
);

INSERT INTO employees (employee_name, department)
VALUES
('Bishnu', 'IT'),
('Aayushi', 'Design'),
('John', 'HR');

.print
.print SQL Executed:
.print SELECT * FROM employees;

SELECT *
FROM employees;

.print
.print ======================================================
.print Step 2 : Drop the table
.print ======================================================

.print SQL Executed:
.print DROP TABLE employees;

DROP TABLE employees;

.print
.print The table has now been removed.

.print
.print ======================================================
.print Step 3 : Verify the table list
.print ======================================================

.print SQL Executed:
.print .tables

.tables

.print
.print If "employees" is missing, DROP TABLE worked successfully.

.print
.print ======================================================
.print Step 4 : Try selecting from the dropped table
.print ======================================================

.print SQL Executed:
.print SELECT * FROM employees;

SELECT *
FROM employees;

.print
.print ======================================================
.print What You Learned
.print ======================================================

.print ✓ DROP TABLE removes the entire table.
.print ✓ All rows are deleted.
.print ✓ The table structure is deleted.
.print ✓ The table name disappears from .tables.
.print ✓ The table cannot be queried anymore.

.print
.print ======================================================
.print DELETE vs DROP TABLE
.print ======================================================

.print DELETE
.print - Removes rows only.
.print - Table still exists.
.print - Structure remains.

.print
.print DROP TABLE
.print - Removes the whole table.
.print - Removes all rows.
.print - Removes the table structure.
.print - Cannot SELECT from it afterwards.

.print
.print ======================================================
.print Mini Challenge
.print ======================================================

.print 1. Create a table named students.
.print 2. Add three students.
.print 3. View the data.
.print 4. Drop the table.
.print 5. Run .tables.
.print 6. Try SELECT * FROM students;

.print
.print ======================================================
.print End of Lesson 23
.print ======================================================