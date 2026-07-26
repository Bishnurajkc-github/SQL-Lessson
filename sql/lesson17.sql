-- LESSON 17: DELETE

-- 1) See current data first
SELECT * FROM students;

-- 2) Check one row before deleting
SELECT * FROM students
WHERE id = 10;

-- 3) Delete that row
DELETE FROM students
WHERE id = 10;

-- 4) Check table after delete
SELECT * FROM students;

-- 5) See rows with NULL city (if any)
SELECT * FROM students
WHERE city IS NULL;

-- 6) Delete rows with NULL city
DELETE FROM students
WHERE city IS NULL;

-- 7) Check final result
SELECT * FROM students;