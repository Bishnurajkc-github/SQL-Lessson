DROP TABLE IF EXISTS employees;

-- Create a new practice table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    employee_name TEXT,
    department TEXT,
    salary INTEGER
);

-- Insert sample data
INSERT INTO employees (employee_name, department, salary)
VALUES
('Ram', 'Sales', 35000),
('Sita', 'Accounts', 42000),
('Hari', 'IT', 50000);

-- View the current table
SELECT * FROM employees;

-- ==========================================================
-- RENAME TABLE Example
-- Rename employees to staff
-- ==========================================================

ALTER TABLE employees
RENAME TO staff;

-- View all tables
.tables

-- View data from the renamed table
SELECT * FROM staff;

-- ==========================================================
-- DROP TABLE Example
-- Permanently remove the staff table
-- ==========================================================

DROP TABLE staff;

-- View all tables again
.tables

-- ==========================================================
-- Notice:
--
-- 1. RENAME TO changes only the table name.
-- 2. All data remains after renaming.
-- 3. DROP TABLE permanently deletes the table
--    and all of its data.
-- ==========================================================
