
-- Lesson 6: NOT

SELECT * FROM students
WHERE NOT class = '10';

SELECT * FROM students
WHERE NOT age = 15;

SELECT * FROM students WHERE NOT class = '9';
SELECT name, age FROM students WHERE NOT age = 16;