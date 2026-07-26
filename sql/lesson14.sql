-- LESSON 14: HAVING

-- 1. Show classes with at least 2 students
SELECT class, COUNT(*)
FROM students
GROUP BY class
HAVING COUNT(*) >= 2;

-- 2. Show cities with at least 2 students
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) >= 2;

-- 3. Show classes whose average marks is 80 or more
SELECT class, AVG(marks)
FROM students
GROUP BY class
HAVING AVG(marks) >= 80;

-- 4. Show classes whose highest marks is 90 or more
SELECT class, MAX(marks)
FROM students
GROUP BY class
HAVING MAX(marks) >= 90;

-- 5. Show classes whose lowest marks is 70 or more
SELECT class, MIN(marks)
FROM students
GROUP BY class
HAVING MIN(marks) >= 70;

-- 6. Show cities where the highest marks is 90 or more
SELECT city, MAX(marks)
FROM students
GROUP BY city
HAVING MAX(marks) >= 90;

-- 7. Show cities that have at least 2 class 10 students
SELECT city, COUNT(*)
FROM students
WHERE class = '10'
GROUP BY city
HAVING COUNT(*) >= 2;