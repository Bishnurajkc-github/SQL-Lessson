cat > docs/Core/SQL_TEACHING_STANDARDS.md <<'EOF'
# Database Learning Teaching Standards

## Purpose

This document defines how SQL and Python + SQLite lessons should be taught.

Its purpose is to ensure consistent teaching that emphasizes understanding, logical thinking, practical application, and long-term retention rather than memorization.

These standards apply to both Bishnu and Aayushi throughout their database learning journey.

---

## Core Teaching Philosophy

Always prioritize understanding over memorizing syntax.

Teach SQL and Python as ways of thinking rather than collections of commands.

Every lesson should help the learner understand:

- What the code is doing.
- Why it is doing it.
- What result was produced.
- Why that result appeared.
- How the concept connects to real applications.

---

## Teaching Principles

For every lesson:

- Teach one concept at a time.
- Never assume prior knowledge beyond completed lessons.
- Build naturally from previous lessons.
- Explain concepts before introducing syntax.
- Encourage curiosity and logical thinking.
- Reinforce learning through repetition and practical examples.
- Avoid unnecessary complexity and overly long lessons.

---

## Common Lesson Structure

Use this structure flexibly. Include sections when they genuinely help understanding.

### 1. Lesson Title

Clearly identify the lesson number and topic.

Example:
- SQL Lesson 26 – INNER JOIN
- Python + SQLite Lesson 02 – execute()

### 2. Scenario

Introduce a simple real-world situation.

Examples:
- School database
- Library
- Online shopping
- Student management
- Employee records

### 3. Learning Objective

Explain what the learner should understand by the end.

### 4. Concept Explanation

Explain the idea before introducing syntax.

Focus on what happens and why.

### 5. Why It Is Useful

Connect the concept to SQLite, Python, Flask, SQLAlchemy, PostgreSQL, or real applications whenever appropriate.

### 6. Predict Before Running

Whenever appropriate, encourage the learner to predict the outcome before execution.

### 7. Code or SQL Being Executed

Always show the exact SQL or important Python code before execution.

Never surprise the learner with unexplained output.

### 8. Execute

Run the actual SQL or Python code.

Use real execution results rather than manually invented output.

### 9. Observe the Output

Encourage the learner to examine what happened before explaining it.

### 10. Explain the Output

Explain why the displayed result occurred.

Connect the explanation directly to the executed code.

### 11. Important Rule

Highlight the key principle learned.

### 12. Common Beginner Mistakes

Explain likely mistakes and how to troubleshoot them whenever appropriate.

### 13. Practical Application

Connect the concept to Python, Flask, SQLAlchemy, or real projects.

### 14. What You Learned

Summarize the important points.

### 15. Mini Challenge

Provide a small exercise to encourage independent thinking.

### 16. Lesson Summary

Briefly recap the concept, syntax, important rule, and practical use.

---

## SQL Teaching Standard

SQL lessons should be prepared as runnable, self-contained `.sql` files whenever practical.

The SQLite terminal should function as an interactive teacher.

Use:

- `.print` to display explanations.
- `.read filename.sql` to execute a lesson file.
- Actual SQL statements to demonstrate concepts.
- SQLite output to observe results.

Every important SQL statement should follow this order:

1. Explain why the SQL is needed.
2. Display the exact SQL using `.print`.
3. Execute the SQL.
4. Observe the output.
5. Explain why the output appeared.

Never execute important SQL without showing it first.

### Think Like the Database

Teach SQL from SQLite's perspective.

Encourage learners to understand how SQLite processes conditions, relationships, rows, and results.

### Incremental Query Building

Avoid presenting large SQL statements immediately.

Build complex queries step by step whenever practical.

### Verification Habit

Encourage learners to verify INSERT, UPDATE, DELETE, JOIN, GROUP BY, and schema changes using appropriate queries.

---

## Python + SQLite Teaching Standard

Python lessons should also be prepared as runnable, self-contained `.py` files whenever practical.

The Python terminal should function as an interactive teacher, just like the SQLite terminal.

Use:

- `print()` to display lesson explanations.
- Actual Python code to demonstrate concepts.
- `python filename.py` to execute a lesson.
- Real program output to observe results.

### Terminal-Based Lesson Format

A Python lesson should display the following directly in the terminal whenever appropriate:

1. Lesson title and objective.
2. Concept explanation.
3. Important syntax or code being introduced.
4. Actual execution of the code.
5. Observable output.
6. Explanation of the output.
7. Important rules and common mistakes.
8. Lesson summary.
9. Mini challenge when appropriate.

The learner should be able to run the file again in the future and revise the lesson without needing to open a separate explanation document.

### Code Visibility

Show important code before executing it.

Use clear comments and meaningful variable names.

Do not hide important operations inside unexplained functions or large blocks of code.

### Progressive Learning

Build each Python lesson on previously learned concepts.

For example:

- Connecting to SQLite.
- Executing SQL.
- Fetching results.
- Inserting records.
- Updating records.
- Deleting records.
- Using parameters safely.
- Managing transactions.

Do not introduce advanced concepts before their foundations are understood.

---

## Lesson File and Terminal Standards

Every lesson should be easy to identify and execute.

Use meaningful, consistent filenames.

Examples:

SQL:
- lesson26_inner_join.sql
- lesson30_views.sql

Python + SQLite:
- le_01_connect.py
- le_02_execute.py
- le_03_fetch.py
- le_04_insert.py

Show the exact terminal command required to execute each lesson.

Prefer running lessons from the project root so database paths remain consistent.

Each lesson should be self-contained enough to run independently when practical, while reusing the same project databases where appropriate.

Avoid unnecessary database duplication or accidental changes to existing data.

---

## Learning Depth and Expectations

The objective is practical understanding, not academic examination preparation.

Learners should understand:

- The main concept and its purpose.
- How SQL and Python behave.
- Why particular results appear.
- Common practical uses.
- Common mistakes and troubleshooting.
- Connections to real-world applications.

Do not require learners to master every technical detail immediately.

Introduce deeper explanations when they become useful.

---

## Learning Philosophy

The learner should finish every lesson understanding:

- What happened.
- Why it happened.
- How to reproduce it.
- How to troubleshoot it.
- Where it will be used in future projects.

The goal is to develop the mindset of a programmer capable of working confidently with databases.

---

## AI Behaviour

The AI should behave like an experienced mentor rather than a lecturer.

The AI should:

- Encourage questions.
- Explain patiently.
- Build confidence gradually.
- Avoid unnecessary jargon.
- Use consistent terminology.
- Prefer understanding over speed.
- Relate new concepts to previously completed lessons.
- Maintain continuity between lessons.
- Adapt explanations to the learner's progress.
- Give one practical step or command at a time when working in the terminal.
- Wait for the learner's result before moving to the next step.
- Avoid unnecessary code dumps or premature changes.

The AI should never assume the learner understands a concept simply because it has been introduced before.

---

## Final Teaching Principle

Teach the concept first.

Show the code.

Execute it.

Observe the result.

Explain why it happened.

Practise it.

Repeat when needed.

The objective is not merely to finish lessons, but to develop independent problem-solving skills.
EOF
