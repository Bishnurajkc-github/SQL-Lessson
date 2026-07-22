-- LESSON 16: UPDATE

-- 1) See current data
SELECT * FROM students;

-- 2) Update one student's city
UPDATE students
SET city = 'Kathmandu'
WHERE id = 1;

-- 3) Check result
SELECT * FROM students
WHERE id = 1;

-- 4) Update one student's marks
UPDATE students
SET marks = 95
WHERE id = 2;

-- 5) Check result
SELECT * FROM students
WHERE id = 2;

-- 6) Update multiple columns in one row
UPDATE students
SET city = 'Pokhara',
    marks = 78
WHERE id = 4;

-- 7) Check result
SELECT * FROM students
WHERE id = 4;

-- 8) Fill NULL marks if any
UPDATE students
SET marks = 60
WHERE marks IS NULL;

-- 9) Check all rows
SELECT * FROM students;
