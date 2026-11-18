
# AI_CONTEXT.md – SQL Learning (Parent & Daughter)

# Purpose

This project supports practical SQL and database learning for two learners.

- **Parent:** Learning SQL, Python, SQLite and Flask to build a strong foundation for full-stack development.
- **Daughter:** Learning practical SQLite alongside Grade 10 Computer Science studies.

The goal is to understand database concepts through hands-on practice rather than simply memorizing syntax.

---

# Main Learning Goals

- Understand how relational databases work.
- Develop logical thinking and problem-solving skills.
- Learn SQL through practical examples.
- Connect SQL with Python, Flask and SQLAlchemy.
- Build confidence in creating and managing databases.
- Develop practical skills useful for real-world applications.

---

# Practice Environment

## Current Setup

- GitHub repository: SQL-Lessson
- GitHub Codespaces
- VS Code-based Codespaces editor
- Chromebook and browser-based development environment
- SQLite database files stored in `databases/`
- SQL lesson files stored in `sql/`
- Python + SQLite lesson files stored in `py-sql/`
- Learning documentation stored in `docs/`

## Project Structure

```text
SQL-Lessson/
│
├── databases/
│
├── docs/
│   ├── Core/
│   ├── Python-Sqlite/
│   ├── References/
│   └── Sql/
│       └── Progress/
│
├── py-sql/
│   ├── le_01_connect.py
│   ├── le_02_execute.py
│   ├── le_03_fetch.py
│   ├── le_04_insert.py
│   ├── le_05_update.py
│   └── le_06_delete.py
│
├── sql/
└── README.md
```

---

# Teaching Preferences

Teach one concept at a time.

Always prioritize understanding before memorization.

For every lesson:

1. Explain the concept first.
2. Explain why it is useful.
3. Introduce the syntax or code.
4. Show the exact SQL or important Python code before execution.
5. Run the example and observe the actual output.
6. Explain why the output appeared.
7. Connect the concept with real applications.
8. Summarize the learning.
9. Include a small practical challenge when appropriate.

Teaching should be gradual and practical.

Do not introduce too many new concepts at once.

When working in the terminal:

- Give one practical step or command at a time.
- Explain why the command is needed.
- Wait for the learner's output before proceeding.
- Avoid unnecessary code dumps.
- Do not move ahead before the current step is understood.

---

# Unified Terminal-Based Teaching Method

Both SQL and Python + SQLite lessons should function as reusable teaching documents.

The learner should be able to execute a lesson file in the future and revise the concept directly from the terminal without needing a separate explanation.

Each lesson should display explanations, code or SQL, actual execution results, and a summary in a logical sequence.

The exact implementation differs between SQL and Python.

## SQL Teaching Standard

Every SQL lesson should follow:

`docs/Core/SQL_TEACHING_STANDARDS.md`

Important principles:

- Prepare runnable SQL lesson files.
- Use `.print` to display explanations.
- Show the exact SQL before execution.
- Use `.read filename.sql` to execute lesson files.
- Display actual SQLite results.
- Explain why each result appeared.
- Include common beginner mistakes when appropriate.
- Include a mini challenge when useful.
- Connect concepts with Python and Flask applications.

The SQLite terminal should function as an interactive learning guide.

## Python + SQLite Teaching Standard

Python lessons should also be prepared as runnable, self-contained `.py` files whenever practical.

Important principles:

- Use `print()` to display explanations directly in the terminal.
- Explain the concept before executing the relevant code.
- Show important Python code before execution.
- Execute the actual code.
- Display real program output.
- Explain what happened and why.
- Include important rules and common mistakes.
- End with a learning summary.
- Include a practical challenge when appropriate.

The Python terminal should function as an interactive teacher, just like the SQLite terminal.

### Python Lesson Execution

Run Python lessons from the project root.

Example:

```bash
python py-sql/le_01_connect.py
```

Use the following filename convention:

- `le_01_connect.py`
- `le_02_execute.py`
- `le_03_fetch.py`
- `le_04_insert.py`
- `le_05_update.py`
- `le_06_delete.py`

Use meaningful, short topic names.

### Python Database Path

The current database files are stored in `databases/`.

When running lessons from the project root, use paths such as:

```python
sqlite3.connect("databases/students.db")
```

Keep database paths consistent across lessons.

Avoid accidentally creating duplicate databases in different folders.

---

# SQL Learning Progress

## Completed

SQL and SQLite Fundamentals: 30 lessons completed.

Topics covered include:

- SQL and SQLite fundamentals.
- Creating tables and inserting data.
- SELECT, WHERE and filtering.
- Sorting and limiting results.
- Aggregate functions and grouping.
- NULL values.
- UPDATE and DELETE.
- ALTER TABLE and DROP TABLE.
- Database relationships and foreign keys.
- INNER JOIN, LEFT JOIN and SELF JOIN.
- Subqueries:
  - IN and NOT IN.
  - Scalar subqueries.
  - EXISTS and NOT EXISTS.
  - Correlated subqueries.
- Views.

## Current Learning Decision

SQL learning is temporarily paused after Lesson 30.

This is a planned transition, not abandonment of SQL.

The next priority is learning how Python communicates with SQLite and uses SQL in practical programs.

## Remaining SQL Topics

Return to these topics later:

- Indexes.
- Transactions.
- Advanced GROUP BY and HAVING.
- CASE.
- UNION and UNION ALL.
- Common Table Expressions (CTEs).
- Window Functions.
- Triggers.
- Practical SQL projects.

---

# Python Learning Progress

## Python Fundamentals

Basic Python knowledge has already been acquired.

Revision and further practice are planned when useful.

## Python + SQLite

The current learning stage uses Python's built-in `sqlite3` module.

### Planned Topics

1. Connecting Python to SQLite.
2. Understanding connections and cursors.
3. Executing SQL using `execute()`.
4. Retrieving results using `fetchone()` and `fetchall()`.
5. Inserting records.
6. Updating records.
7. Deleting records.
8. Using SQL parameters safely.
9. Understanding SQL injection.
10. Managing transactions using `commit()` and `rollback()`.
11. Closing database connections.
12. Building a Python + SQLite CRUD application.
13. Understanding basic project organization.

### Current Progress

**Lesson 01 – Connecting Python to SQLite: Completed.**

File:

`py-sql/le_01_connect.py`

Concepts covered:

- Importing `sqlite3`.
- Connecting using `sqlite3.connect()`.
- Understanding the connection object.
- Creating a cursor using `connection.cursor()`.
- Closing the connection.

The lesson was converted into a terminal-based teaching file using `print()` statements for explanations and actual Python execution.

### Next Lesson

**Lesson 02 – Executing SQL using `execute()`**

File:

`py-sql/le_02_execute.py`

The next lesson should explain how Python sends SQL statements to SQLite using a cursor.

Fetching query results will be covered separately in Lesson 03.

### Existing Lesson Files

- `py-sql/le_01_connect.py`
- `py-sql/le_02_execute.py`
- `py-sql/le_03_fetch.py`
- `py-sql/le_04_insert.py`
- `py-sql/le_05_update.py`
- `py-sql/le_06_delete.py`

These files already exist. Develop them gradually rather than creating duplicate lesson files.

## Python + SQLite Reference

`docs/Python-Sqlite/PYTHON_SQLITE_REFERENCE.md`

Use the existing reference document and update it when necessary.

Avoid creating duplicate reference documents.

---

# Long-Term Technology Roadmap

The intended learning progression is:

SQL fundamentals
↓
Python fundamentals (revision and continued practice)
↓
Python + SQLite
↓
Flask + SQLite
↓
SQLAlchemy
↓
HTML / CSS / JavaScript / Bootstrap
↓
REST APIs
↓
PostgreSQL
↓
React
↓
Deployment and Linux
↓
Django

The roadmap can evolve as practical experience grows.

---

# Documentation Organization

Maintain documentation in topic-based folders.

Important files:

- `docs/Core/AI_CONTEXT.md`
- `docs/Core/ROADMAP.md`
- `docs/Core/SQL_TEACHING_STANDARDS.md`
- `docs/Python-Sqlite/PYTHON_SQLITE_REFERENCE.md`
- `docs/Sql/Progress/LEARNING_PROGRESS.md`
- `docs/Sql/Progress/LESSON_INDEX.md`

Keep learning progress and documentation synchronized.

Update existing documents rather than creating duplicates.

---

# Long-Term Objective

Become a practical full-stack developer capable of:

- Designing and managing relational databases.
- Building Python applications.
- Developing complete Flask web applications.
- Understanding backend logic and frontend integration.
- Maintaining and improving existing websites.
- Debugging real-world programming problems.
- Building and deploying useful applications independently.

The goal is not simply to complete tutorials.

The goal is to develop lasting practical understanding and the confidence to build real projects.
