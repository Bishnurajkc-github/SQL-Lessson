.print
.print ======================================================
.print Lesson 25 : FOREIGN KEY
.print ======================================================

.print
.print Enable Foreign Key Support

PRAGMA foreign_keys = ON;

.print
.print ======================================================
.print Remove Old Tables
.print ======================================================

DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

.print
.print ======================================================
.print Create Students Table
.print ======================================================

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT
);

INSERT INTO students VALUES
(1,'Bishnu'),
(2,'Aayushi'),
(3,'John');

SELECT * FROM students;

.print
.print ======================================================
.print Create Courses Table
.print ======================================================

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT
);

INSERT INTO courses VALUES
(101,'Python'),
(102,'SQLite'),
(103,'Flask');

SELECT * FROM courses;

.print
.print ======================================================
.print Create Enrollments Table
.print ======================================================

CREATE TABLE enrollments (

    student_id INTEGER,

    course_id INTEGER,

    FOREIGN KEY(student_id)
        REFERENCES students(student_id),

    FOREIGN KEY(course_id)
        REFERENCES courses(course_id)

);

.print
.print ======================================================
.print Insert Valid Records
.print ======================================================

INSERT INTO enrollments VALUES
(1,101),
(1,102),
(2,101),
(3,103);

SELECT * FROM enrollments;

.print
.print ======================================================
.print Try Invalid Student
.print ======================================================

.print SQL Executed:
.print INSERT INTO enrollments VALUES (99,101);

INSERT INTO enrollments
VALUES (99,101);

.print
.print SQLite should reject this.

.print
.print ======================================================
.print Try Invalid Course
.print ======================================================

.print SQL Executed:
.print INSERT INTO enrollments VALUES (1,999);

INSERT INTO enrollments
VALUES (1,999);

.print
.print SQLite should reject this.

.print
.print ======================================================
.print Verify Table
.print ======================================================

SELECT * FROM enrollments;

.print
.print ======================================================
.print Exercise 2 : FOREIGN KEY OFF vs ON
.print ======================================================

.print
.print Step 1 : Turn Foreign Keys OFF

PRAGMA foreign_keys = OFF;

.print
.print SQL Executed:
.print INSERT INTO enrollments VALUES (99,101);

INSERT INTO enrollments
VALUES (99,101);

.print
.print Result

SELECT * FROM enrollments;

.print
.print Notice:
.print SQLite allowed student_id 99 even though it does not exist.
.print This creates inconsistent data.

.print
.print ======================================================
.print Step 2 : Remove Invalid Record
.print ======================================================

DELETE FROM enrollments
WHERE student_id = 99;

SELECT * FROM enrollments;

.print
.print ======================================================
.print Step 3 : Turn Foreign Keys ON
.print ======================================================

PRAGMA foreign_keys = ON;

.print
.print SQL Executed:
.print INSERT INTO enrollments VALUES (99,101);

INSERT INTO enrollments
VALUES (99,101);

.print
.print Expected Result:
.print Runtime error: FOREIGN KEY constraint failed

.print
.print Verify Table

SELECT * FROM enrollments;

.print
.print ======================================================
.print What You Learned
.print ======================================================

.print FOREIGN KEY OFF:
.print SQLite allows invalid relationships.

.print
.print FOREIGN KEY ON:
.print SQLite protects the database and rejects invalid relationships.

.print
.print This is why enabling FOREIGN KEY is important in real applications.

.print
.print ======================================================
.print What You Learned
.print ======================================================

.print PRIMARY KEY uniquely identifies a row.
.print FOREIGN KEY connects two tables.
.print SQLite protects data integrity.
.print Invalid IDs are rejected.

.print
.print ======================================================
.print Mini Challenge
.print ======================================================

.print Add:

.print Student:
.print (4,'David')

.print Course:
.print (104,'HTML')

.print Insert:

.print (4,104)

.print Then display all tables.

.print
.print ======================================================
.print End of Lesson 25
.print ======================================================


====================================================================
.print Mini Challage exercise below
====================================================================

.print studets table
INSERT INTO students
VALUES (4, 'David');
SELECT * FROM students;

.print courses table
INSERT INTO courses
VALUES (104, 'HTML');
SELECT * FROM courses;

.print enrollments table
INSERT INTO enrollments
VALUES (4, 104);
SELECT * FROM enrollments;