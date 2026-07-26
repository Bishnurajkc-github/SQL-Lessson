
-- Lesson 5: AND and OR examples

SELECT * FROM students
WHERE age = 16 AND class = '10';

SELECT * FROM students
WHERE age = 14 OR age = 15;

SELECT name, class FROM students
WHERE class = '9' OR class = '10';