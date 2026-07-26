-- LESSON 13: GROUP BY

-- 1. Count students in each class
SELECT class, COUNT(*)
FROM students
GROUP BY class;

-- 2. Count students in each city
SELECT city, COUNT(*)
FROM students
GROUP BY city;

-- 3. Find average marks in each class
SELECT class, AVG(marks)
FROM students
GROUP BY class;

-- 4. Find highest marks in each class
SELECT class, MAX(marks)
FROM students
GROUP BY class;

-- 5. Find lowest marks in each class
SELECT class, MIN(marks)
FROM students
GROUP BY class;

-- 6. Find youngest age in each class
SELECT class, MIN(age)
FROM students
GROUP BY class;

-- 7. Find oldest age in each city
SELECT city, MAX(age)
FROM students
GROUP BY city;

-- 8. Find average marks in each city
SELECT city, AVG(marks)
FROM students
GROUP BY city;

-- 9. Count class 10 students by city
SELECT city, COUNT(*)
FROM students
WHERE class = '10'
GROUP BY city;

-- 10. Count students in each class, ordered by class
SELECT class, COUNT(*)
FROM students
GROUP BY class
ORDER BY class;

-- 11. Show average marks by class, highest average first
SELECT class, AVG(marks)
FROM students
GROUP BY class
ORDER BY AVG(marks) DESC;