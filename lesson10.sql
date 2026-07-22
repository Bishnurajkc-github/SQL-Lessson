-- LESSON 10: LIMIT

-- 1. Show all students
SELECT * FROM students;

-- 2. Show only first 2 rows
SELECT * FROM students
LIMIT 2;

-- 3. Show only first 3 names
SELECT name FROM students
LIMIT 3;

-- 4. Show first 2 students with name and age
SELECT name, age FROM students
LIMIT 2;

-- 5. Show students ordered by age (youngest first), limit 3
SELECT * FROM students
ORDER BY age ASC
LIMIT 3;

-- 6. Show oldest 2 students
SELECT name, age FROM students
ORDER BY age DESC
LIMIT 2;

-- 7. Show first 2 students from class 10
SELECT * FROM students
WHERE class = '10'
LIMIT 2;

-- 8. Show youngest 2 students
SELECT name, age FROM students
ORDER BY age ASC
LIMIT 2;