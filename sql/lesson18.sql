-- ==========================================================
-- Lesson 18: ALTER TABLE (Introduction)
-- ==========================================================
-- Purpose:
-- Learn that ALTER TABLE changes the structure of an
-- existing table, not the data inside the rows.
--
-- Safe Practice:
-- We use a separate table (courses) so the main students
-- table from Lessons 1–17 remains unchanged.
-- ==========================================================

-- Remove the table if it already exists
DROP TABLE IF EXISTS courses;

-- Create a new practice table
CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    course_name TEXT,
    duration_months INTEGER
);

-- Insert sample data
INSERT INTO courses (course_name, duration_months)
VALUES
('Python Basics', 3),
('SQLite Basics', 2),
('Flask Basics', 4);

-- View the original table
SELECT * FROM courses;

-- ==========================================================
-- ALTER TABLE Example
-- Add a new column named fee
-- ==========================================================

ALTER TABLE courses
ADD COLUMN fee INTEGER;

-- View the updated table structure
.schema courses

-- View the data after adding the new column
SELECT * FROM courses;

-- Notice:
-- 1. A new column (fee) has been added.
-- 2. Existing rows are NOT deleted.
-- 3. Existing rows show NULL in the new column.
-- 4. ALTER TABLE changes the table structure,
--    not the existing row data.