# AI_CONTEXT.md – SQL Learning (Parent & Daughter)

# Purpose

This project supports practical SQL and database learning for two learners.

- **Parent:** Learning SQL and Python to build a strong foundation for Python + SQLite + Flask projects and future full-stack development.
- **Daughter:** Learning practical SQLite alongside Grade 10 Computer Science studies.

The goal is to understand database concepts through hands-on practice rather than simply memorizing syntax.

---

# Main Learning Goals

- Understand how relational databases work.
- Develop logical thinking and problem-solving skills.
- Learn SQL through practical examples.
- Connect SQL with Python, Flask and SQLAlchemy.
- Build confidence in creating and managing databases.
- Develop practical skills useful for real-world web applications.

---

# Practice Environment

## Current Setup

- VS Code
- GitHub repository: SQL-Lessson
- GitHub Codespaces
- SQLite database files stored in `databases/`
- SQL lesson files stored in `sql/`
- Python + SQLite lesson files stored in `py-sql/`
- Learning documentation stored in `docs/`

## Project Structure

```text
SQL-Lessson/
│
├── databases/
├── docs/
│   ├── Core/
│   ├── Python-Sqlite/
│   ├── References/
│   └── Sql/
│       └── Progress/
│
├── py-sql/
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
4. Demonstrate with a practical example.
5. Run the example and observe the output.
6. Explain why the output appeared.
7. Connect the concept with real applications.

Teaching should be gradual and practical.

Do not introduce too many new concepts at once.

---

# SQL Teaching Standard

Every SQL lesson should follow the teaching principles documented in:

`docs/Core/SQL_TEACHING_STANDARDS.md`

Important principles:

- Use simple, realistic scenarios.
- Show the exact SQL before execution.
- Use SQLite `.print` statements throughout lessons.
- Display actual results immediately after execution.
- Explain why each result appeared.
- Include common beginner mistakes when appropriate.
- Include a mini challenge when useful.
- Connect concepts with Python and Flask applications.

The SQLite terminal should function as a learning guide.

---

# SQL Learning Progress

## Completed

SQL learning has progressed through Lesson 30 – Views.

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
  - Introduction to subqueries.
  - IN and NOT IN.
  - Scalar subqueries.
  - EXISTS and NOT EXISTS.
  - Correlated subqueries.
- Views.

## Current Learning Decision

SQL learning is temporarily paused after Lesson 30.

This is a planned transition, not abandonment of SQL.

The next priority is to learn how Python communicates with SQLite and uses SQL in practical programs.

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

# Next Learning Stage: Python + SQLite

The next learning stage will use Python's built-in `sqlite3` module.

Planned topics:

1. Connecting Python to SQLite using `sqlite3.connect()`.
2. Understanding connections and cursors.
3. Creating tables from Python.
4. Executing SELECT queries.
5. Retrieving data using `fetchone()` and `fetchall()`.
6. Inserting records.
7. Updating records.
8. Deleting records.
9. Using SQL parameters safely.
10. Understanding transactions, `commit()` and `rollback()`.
11. Closing database connections.
12. Building a small Python + SQLite CRUD application.
13. Understanding basic project organization.

## Current Python Lesson File

`py-sql/lesson01.py`

## Python + SQLite Reference

`docs/Python-Sqlite/PYTHON_SQLITE_REFERENCE.md`

Develop these existing files gradually. Avoid creating duplicate reference documents or unnecessary lesson files.

---

# Long-Term Technology Roadmap

The intended learning progression is:

SQL fundamentals
↓
Python fundamentals
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
