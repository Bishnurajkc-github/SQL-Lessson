-- LESSON 12: Aggregate Functions

-- 1. Count total students
SELECT COUNT(*) FROM students;

-- 2. Count students in class 10
SELECT COUNT(*) FROM students
WHERE class = '10';

-- 3. Count students from Kathmandu
SELECT COUNT(*) FROM students
WHERE city = 'Kathmandu';

-- 4. Count students whose marks are available
SELECT COUNT(*) FROM students
WHERE marks IS NOT NULL;

-- 5. Find the youngest age
SELECT MIN(age) FROM students;

-- 6. Find the oldest age
SELECT MAX(age) FROM students;

-- 7. Find the average age
SELECT AVG(age) FROM students;

-- 8. Find the lowest marks
SELECT MIN(marks) FROM students;

-- 9. Find the highest marks
SELECT MAX(marks) FROM students;

-- 10. Find the average marks
SELECT AVG(marks) FROM students;

-- 11. Find average marks of class 10 students
SELECT AVG(marks) FROM students
WHERE class = '10';

-- 12. Find highest marks in Kathmandu
SELECT MAX(marks) FROM students
WHERE city = 'Kathmandu';

-- 13. Find youngest age in class 9
SELECT MIN(age) FROM students
WHERE class = '9';