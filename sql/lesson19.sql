-- Lesson 19: ADD COLUMN Practice

-- View the current table
SELECT * FROM courses;

-- Add another new column
ALTER TABLE courses
ADD COLUMN teacher_name TEXT;
SELECT * FROM courses;

-- Check the updated table structure
.schema courses

-- View the table after adding the new column
SELECT * FROM courses;

--------------------------------------------------
-- Updating the newly added columns
--------------------------------------------------

-- Update fee and teacher name for Course 1
UPDATE courses
SET fee = 20000,
    teacher_name = 'Shyma'
WHERE id = 1;


-- Update fee, teacher name and duration for Course 2
UPDATE courses
SET fee = 25000,
    teacher_name = 'Gopala',
    duration_months = 1
WHERE id = 2;

-- Update fee and teacher name for Course 3
UPDATE courses
SET fee = 30000,
    teacher_name = 'Rama'
WHERE id = 3;

-- View the final result
SELECT * FROM courses;