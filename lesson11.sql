-- LESSON 11: DISTINCT

-- 1. Show all class values
SELECT class FROM students;

-- 2. Show unique class values
SELECT DISTINCT class FROM students;

-- 3. Show all ages
SELECT age FROM students;

-- 4. Show unique ages
SELECT DISTINCT age FROM students;

-- 5. Show unique classes in sorted order
SELECT DISTINCT class
FROM students
ORDER BY class;

-- 6. Show unique ages in ascending order
SELECT DISTINCT age
FROM students
ORDER BY age ASC;

-- 7. Show unique age + class combinations
SELECT DISTINCT age, class
FROM students
ORDER BY class, age;