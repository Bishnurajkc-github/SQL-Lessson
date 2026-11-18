
# ==================================================
# PYTHON + SQLITE
# LESSON 01: CONNECTING PYTHON TO SQLITE
# ==================================================

print("\n========================================")
print("LESSON 01: CONNECTING PYTHON TO SQLITE")
print("========================================")

print("""
OBJECTIVE:
Learn how Python connects to an SQLite database
and how to create a cursor.

----------------------------------------
CONCEPT 1: IMPORT SQLITE
----------------------------------------

Python has a built-in module called sqlite3.

We import it so that Python can communicate
with SQLite databases.

Code:
    import sqlite3
""")

import sqlite3

print("SQLite module imported successfully!")


print("""
----------------------------------------
CONCEPT 2: DATABASE CONNECTION
----------------------------------------

To work with a database, Python first needs
to establish a connection.

We use:

    sqlite3.connect("databases/students.db")

Here:
- sqlite3.connect() creates a database connection.
- The path identifies our existing database.
- The connection object represents that connection.

Let's create the connection now.
""")

connection = sqlite3.connect("databases/students.db")

print("Database connection established!")


print("""
----------------------------------------
CONCEPT 3: CREATE A CURSOR
----------------------------------------

A cursor is an object used to execute SQL
statements through the database connection.

We create it using:

    connection.cursor()

The cursor will help us execute SQL queries
in our upcoming lessons.
""")

cursor = connection.cursor()

print("Cursor created successfully!")


print("""
----------------------------------------
CONCEPT 4: CLOSE THE CONNECTION
----------------------------------------

When we finish working with a database,
we should close the connection.

We use:

    connection.close()

This releases the database resources.
""")

connection.close()

print("Database connection closed!")


print("""
========================================
LESSON 01: SUMMARY
========================================

1. import sqlite3
   Imports Python's SQLite module.

2. sqlite3.connect()
   Establishes a database connection.

3. connection.cursor()
   Creates a cursor to execute SQL.

4. connection.close()
   Closes the database connection.

IMPORTANT:
Connecting to a database does not automatically
retrieve or display its records.

We will learn how to execute SQL queries
in Lesson 02.

========================================
END OF LESSON 01
========================================
""")
