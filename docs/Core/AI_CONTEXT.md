# AI_CONTEXT.md – SQL Learning (Parent & Daughter)

# Purpose

This project is for learning **SQL using SQLite from the absolute beginning**.

There are two learners:

- **Parent:** Learning SQL first to build a strong foundation for future **Python + SQLite + Flask** projects, and to confidently teach the daughter.
- **Daughter:** Studying SQLite as part of **Grade 10 Computer Science**, where school teaching is more theory-based, so this project adds practical understanding.

---

# Main Learning Goals

- Understand SQL concepts instead of memorizing syntax.
- Build confidence through repeated hands-on practice.
- Progress from beginner to intermediate SQL in a structured order.
- Learn how SQLite connects with Python, Flask, SQLAlchemy, and real web applications.
- Develop practical skills useful for future freelance and full-stack development.

---

# Practice Environment

## Current Setup

- VS Code
- SQLite Terminal / Shell
- Lesson files (`lesson01.sql`, `lesson02.sql`, etc.)
- Persistent database file: `school.db`

## Standard Workflow

1. Open PowerShell in the project folder.
2. Run:

   sqlite3

3. Open the database:

   .open school.db

4. Run lesson files:

   .read lessonXX.sql

5. Verify your work using:

   - .databases
   - .tables
   - .schema table_name
   - SELECT statements

---

# Teaching Preferences

Teach one concept at a time.

Always prioritize **understanding before memorization**.

For every lesson:

1. Explain the concept.
2. Explain why it is useful.
3. Demonstrate with runnable SQL.
4. Observe the output.
5. Explain why the output appeared.
6. Connect the concept with real applications.

Whenever appropriate, connect SQL concepts with:

- Python
- Flask
- SQLAlchemy
- Real-world database design

---

# SQL Practice File Standard

Every SQL practice file should follow this structure:

1. Lesson / Exercise Title
2. Scenario
3. SQL Executed (printed before execution)
4. Query Result (table or error shown immediately after execution)
5. Explanation of the Result
6. What You Learned
7. Mini Challenge (when appropriate)
8. Flask / Real-World Connection (when appropriate)

---

# Terminal Teaching Standard

Use `.print` statements throughout every lesson.

The terminal itself should become a complete learning guide.

A learner should understand:

- What SQL is being executed.
- Why it is being executed.
- What output it produced.
- Why that output appeared.

without constantly switching back to the lesson file.

The terminal should function as an interactive tutorial rather than simply displaying SQL results.

---

# SQL Learning Roadmap

## Phase 1 – Foundations ✅

1. SQL / SQLite / Database / Table / Row / Column
2. CREATE TABLE
3. INSERT INTO
4. SELECT
5. WHERE
6. AND / OR / NOT
7. Comparison Operators
8. LIKE
9. ORDER BY
10. LIMIT
11. DISTINCT

---

## Phase 2 – Summaries ✅

12. Aggregate Functions
13. GROUP BY
14. HAVING
15. NULL / IS NULL / IS NOT NULL

---

## Phase 3 – Changing Data ✅

16. UPDATE
17. DELETE

---

## Phase 4 – Changing Table Structure ✅

18. ALTER TABLE
19. ADD COLUMN
20. RENAME COLUMN
21. RENAME TABLE
22. DROP TABLE

---

## Phase 5 – Database Relationships (Current)

23. Relationships ✅
24. Foreign Keys ✅
25. INNER JOIN
26. LEFT JOIN
27. SELF JOIN
28. Subqueries
29. Views
30. Indexes
31. Transactions

---

# Current Progress

Completed:

- SQLite Lessons 1–25
- Practice Set 1
- CRUD Fundamentals
- ALTER TABLE
- DELETE
- DROP TABLE
- Relationships
- Foreign Keys

Current Focus:

- JOINs
- Relational Database Design

---

# Learning Strategy

Do not rush through SQL syntax.

Understand how relational databases work first.

Once SQL concepts are strong, continue with:

SQLite

↓

Python + SQLite

↓

Flask + SQLite

↓

SQLAlchemy

↓

PostgreSQL

↓

MongoDB

↓

React

↓

Deployment

↓

Django

---

# Documentation Organization

Maintain documentation in topic-based folders.

Recommended structure:

docs/

├── AI_CONTEXT.md
├── LEARNING_PROGRESS.md
├── ROADMAP.md
│
├── sql/
├── python/
├── flask/
├── git/
├── javascript/
├── react/
├── mongodb/
├── deployment/
└── projects/

Each technology should eventually contain:

- Notes
- Progress
- Quick Reference
- Practice Files

---

# Long-Term Objective

Become a practical Full-Stack Web Developer capable of:

- Designing databases.
- Building complete web applications.
- Maintaining existing client websites.
- Adding, removing, and modifying features confidently.
- Understanding both frontend and backend development.
- Completing freelance projects independently.

The goal is not simply to complete tutorials, but to build lasting practical understanding that connects every technology naturally.