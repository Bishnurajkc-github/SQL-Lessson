-- LESSON 15: NULL, IS NULL, IS NOT NULL

-- 1. Show students whose marks are missing
SELECT * FROM students
WHERE marks IS NULL;

-- 2. Show students whose city is missing
SELECT * FROM students
WHERE city IS NULL;

-- 3. Show students whose marks are available
SELECT * FROM students
WHERE marks IS NOT NULL;

-- 4. Show students whose city is available
SELECT * FROM students
WHERE city IS NOT NULL;

-- 5. Show only names of students whose marks are missing
SELECT name
FROM students
WHERE marks IS NULL;

-- 6. Show name and marks where marks is available
SELECT name, marks
FROM students
WHERE marks IS NOT NULL;

-- 7. Show class 10 students whose marks are missing
SELECT * FROM students
WHERE class = '10' AND marks IS NULL;

-- 8. Show students whose city or marks is missing
SELECT * FROM students
WHERE city IS NULL OR marks IS NULL;

-- 9. Count students whose marks are available
SELECT COUNT(*) FROM students
WHERE marks IS NOT NULL;

-- 10. Count students whose marks are missing
SELECT COUNT(*) FROM students
WHERE marks IS NULL;