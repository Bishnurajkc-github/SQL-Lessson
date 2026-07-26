.print
.print ======================================================
.print Lesson 24 : RELATIONSHIPS (Introduction)
.print ======================================================

.print
.print Scenario:
.print A school has students and courses.
.print A student can study many courses.
.print A course can have many students.
.print We use a third table to connect them.

.print
.print ======================================================
.print Step 1 : Create Students Table
.print ======================================================

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT
);

INSERT INTO students
VALUES
(1,'Bishnu'),
(2,'Aayushi'),
(3,'John');

.print
.print SQL Executed:
.print SELECT * FROM students;

SELECT * FROM students;

.print
.print ======================================================
.print Step 2 : Create Courses Table
.print ======================================================

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT
);

INSERT INTO courses
VALUES
(101,'Python'),
(102,'SQLite'),
(103,'Flask');

.print
.print SQL Executed:
.print SELECT * FROM courses;

SELECT * FROM courses;

.print
.print ======================================================
.print Step 3 : Create Enrollments Table
.print ======================================================

CREATE TABLE enrollments (
    student_id INTEGER,
    course_id INTEGER
);

INSERT INTO enrollments
VALUES
(1,101),
(1,102),
(2,101),
(3,102),
(3,103);

.print
.print SQL Executed:
.print SELECT * FROM enrollments;

SELECT * FROM enrollments;

.print
.print ======================================================
.print Understanding the Relationship
.print ======================================================

.print Student 1 -> Bishnu
.print Student 2 -> Aayushi
.print Student 3 -> John

.print
.print Course 101 -> Python
.print Course 102 -> SQLite
.print Course 103 -> Flask

.print
.print Read Enrollments Table

.print
.print (1,101) = Bishnu studies Python
.print (1,102) = Bishnu studies SQLite
.print (2,101) = Aayushi studies Python
.print (3,102) = John studies SQLite
.print (3,103) = John studies Flask

.print
.print ======================================================
.print Why Do We Need Relationships?
.print ======================================================

.print Without relationships:
.print Student names would be repeated.
.print Course names would be repeated.
.print Lots of duplicate data.

.print
.print With relationships:
.print Store students once.
.print Store courses once.
.print Connect them using IDs.

.print
.print ======================================================
.print Think Like a Database Designer
.print ======================================================

.print Students know nothing about Courses.
.print Courses know nothing about Students.
.print Enrollments connects both tables.

.print
.print Enrollments is called a Bridge Table.

.print
.print ======================================================
.print What You Learned
.print ======================================================

.print Relationships connect tables.
.print IDs are used instead of repeating names.
.print Less duplicate data.
.print Easier updates.
.print Better database design.

.print
.print ======================================================
.print Mini Challenge
.print ======================================================

.print 1. Add a new student:
.print    (4,'David')

.print
.print 2. Add a new course:
.print    (104,'HTML')

.print
.print 3. Enroll David in HTML.

.print
.print 4. Display all three tables.

.print
.print ======================================================
.print Flask Connection
.print ======================================================

.print Future Flask Example:

.print Users -------- Posts

.print Instead of storing:

.print Bishnu
.print Bishnu
.print Bishnu

.print Flask stores:

.print user_id = 1

.print Relationships make modern applications possible.

.print
.print ======================================================
.print End of Lesson 24
.print ======================================================