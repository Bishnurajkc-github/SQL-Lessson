-- ==========================================================
-- Lesson 20: RENAME COLUMN
-- ==========================================================
-- Purpose:
-- Learn how to rename an existing column without changing
-- the data stored inside it.
--
-- We continue using the 'courses' table created in
-- Lessons 18 and 19.
-- ==========================================================

-- View the current table
SELECT * FROM courses;

-- View the current table structure
.schema courses

-- ==========================================================
-- Rename a column
-- ==========================================================

ALTER TABLE courses
RENAME COLUMN course_name TO course_title;

-- View the updated table structure
.schema courses

-- View the table after renaming the column
SELECT * FROM courses;

-- ==========================================================
-- Verify the new column name
-- ==========================================================

SELECT course_title
FROM courses;

-- ==========================================================
-- Notice:
--
-- 1. Only the column name changed.
-- 2. All existing data is still there.
-- 3. The old column name no longer exists.
-- ==========================================================