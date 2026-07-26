-- lesson11a.sql
-- Upgrade students table for upcoming lessons

-- Add new columns
ALTER TABLE students ADD COLUMN city TEXT;
ALTER TABLE students ADD COLUMN marks INTEGER;

-- Update existing 5 students
UPDATE students
SET city = 'Kathmandu', marks = 78
WHERE id = 1;

UPDATE students
SET city = 'Pokhara', marks = 85
WHERE id = 2;

UPDATE students
SET city = 'Bhaktapur', marks = 67
WHERE id = 3;

UPDATE students
SET city = 'Lalitpur', marks = 91
WHERE id = 4;

UPDATE students
SET city = 'Kathmandu', marks = 74
WHERE id = 5;

-- Add more students
INSERT INTO students (name, age, class, city, marks)
VALUES ('Aarav', 15, '''10''', 'Kathmandu', 88);

INSERT INTO students (name, age, class, city, marks)
VALUES ('Nisha', 14, '''9''', 'Pokhara', 72);

INSERT INTO students (name, age, class, city, marks)
VALUES ('Rohan', 16, '''10''', 'Lalitpur', 95);

INSERT INTO students (name, age, class, city, marks)
VALUES ('Mina', 15, '''9''', 'Bhaktapur', 81);

INSERT INTO students (name, age, class, city, marks)
VALUES ('Suman', 14, '''8''', 'Kathmandu', 69);

-- Add one row with NULL values for future NULL practice
INSERT INTO students (name, age, class, city, marks)
VALUES ('Kiran', 15, '''10''', NULL, NULL);