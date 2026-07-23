# First Push to GitHub (From Your Computer)

This guide is for uploading a **brand-new local project** from your computer to a **new GitHub repository**.

---

## Before You Start

### On GitHub

1. Create a **new repository**.
2. **Do NOT** check:

   * ❌ Add a README
   * ❌ Add .gitignore
   * ❌ Choose a License

Create an **empty repository**.

---

## Step 1: Open Your Project Folder

Open the terminal in your project folder.

Example:

```bash
cd D:\SQL-LEARNING
```

---

## Step 2: Initialize Git

```bash
git init
```

This creates a new Git repository in your project.

---

## Step 3: Check the Status

```bash
git status
```

Git will show all files as **Untracked**.

---

## Step 4: Stage All Files

```bash
git add .
```

This tells Git to include all files in the next commit.

---

## Step 5: Create the First Commit

```bash
git commit -m "Initial commit"
```

This saves the first snapshot of your project.

---

## Step 6: Rename the Default Branch

```bash
git branch -M main
```

This renames the current branch to **main**, which is GitHub's default branch.

---

## Step 7: Connect to GitHub

Replace the URL with your own repository URL.

```bash
git remote add origin https://github.com/USERNAME/REPOSITORY.git
```

Example:

```bash
git remote add origin https://github.com/Bishnurajkc-github/SQL-Learning.git
```

---

## Step 8: Verify the Remote

```bash
git remote -v
```

Expected output:

```text
origin  https://github.com/USERNAME/REPOSITORY.git (fetch)
origin  https://github.com/USERNAME/REPOSITORY.git (push)
```

---

## Step 9: Push to GitHub

```bash
git push -u origin main
```

The `-u` option sets the upstream (tracking) branch.

You only need to use this command **once** for a new repository.

---

# Future Workflow

After the first successful push, your normal workflow becomes:

```bash
git status
git add .
git commit -m "Describe your changes"
git push
```

---

# If You Are Collaborating

Before starting work:

```bash
git pull
```

After finishing your work:

```bash
git add .
git commit -m "Describe your changes"
git push
```

---

# Important Notes

### Commit vs Push

* **git commit** → Saves your work **locally**.
* **git push** → Uploads your commits to **GitHub**.

---

### Pull

```bash
git pull
```

Downloads the latest changes from GitHub and updates your local project.

---

# Common Mistake

### Error

```text
error: src refspec main does not match any
```

Possible causes:

* You have not created your first commit yet.
* Your current branch is `master` instead of `main`.

Check your branch:

```bash
git branch
```

Rename it if needed:

```bash
git branch -M main
```

---

# Another Common Mistake

If you created the GitHub repository with a README, your first push may fail because the local and remote repositories have different histories.

To avoid this:

* Create an **empty GitHub repository** when uploading an existing local project.

---

# First-Time Upload Checklist

* ✅ Create an empty GitHub repository.
* ✅ `git init`
* ✅ `git add .`
* ✅ `git commit -m "Initial commit"`
* ✅ `git branch -M main`
* ✅ `git remote add origin <repository-url>`
* ✅ `git push -u origin main`

---

# Golden Rule

**First upload to GitHub**

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/USERNAME/REPOSITORY.git
git push -u origin main
```

**Every upload after that**

```bash
git add .
git commit -m "Describe your changes"
git push
```

  # Additional ==================================================================================

```bash
Create Project on PC
        │
        ▼
Create EMPTY GitHub Repository
        │
        ▼
git init
git add .
git commit
git branch -M main
git remote add origin ...
git push -u origin main
        │
        ▼
Project is now on GitHub
        │
        ▼
Future updates:
git add .
git commit
git push

```

# The only exception
```bash
If you start a project directly in GitHub Codespaces instead of on your PC, you don't need git init or git remote add origin. Codespaces is already connected to the GitHub repository, so your workflow is simply:

git add .
git commit -m "Describe changes"
git push
```


# GitHub Synchronization Guide

A practical reference for keeping **GitHub**, **your local PC**, and **GitHub Codespaces** synchronized.

---

# The Big Picture ===================
===============================================

Think of **GitHub** as the central meeting point.

```text
              GitHub
             /      \
            /        \
      Local PC    Codespace
```

* Your PC and Codespace **do not communicate directly**.
* They both synchronize through **GitHub**.

---

# Rule #1

**Whichever device did NOT make the latest changes must use `git pull`.**

---

# Scenario 1 - Changes Made on Your PC

You edit files in VS Code.

Example:

```bash
git add .
git commit -m "Added Lesson 27"
git push
```

Result:

```text
Local PC    ✅ Latest
GitHub      ✅ Latest
Codespace   ❌ Old Version
```

When you later open Codespaces:

```bash
git pull
```

Now:

```text
Local PC    ✅ Latest
GitHub      ✅ Latest
Codespace   ✅ Latest
```

---

# Scenario 2 - Changes Made in Codespaces

You edit files in Codespaces.

```bash
git add .
git commit -m "Updated README"
git push
```

Result:

```text
Codespace   ✅ Latest
GitHub      ✅ Latest
Local PC    ❌ Old Version
```

When you return to your PC:

```bash
git pull
```

Now everything is synchronized.

---

# Scenario 3 - Changes Made on GitHub (Browser Edit)

You edit a file using GitHub's **Edit** button and commit the changes.

Result:

```text
GitHub      ✅ Latest
Local PC    ❌ Old Version
Codespace   ❌ Old Version
```

To update your PC:

```bash
git pull
```

To update your Codespace:

```bash
git pull
```

---

# Collaboration Example

Suppose your daughter pushes new SQL lessons.

```text
Daughter's Codespace
        │
        │ git push
        ▼
      GitHub
        │
        ├──────────────┐
        ▼              ▼
    Your PC      Your Codespace
    git pull      git pull
```

Both your PC and Codespace need to download her changes.

---

# Daily Workflow

## When Working on Your PC

Before starting:

```bash
git pull
```

Do your work.

Then:

```bash
git add .
git commit -m "Describe your changes"
git push
```

---

## When Working in Codespaces

Before starting:

```bash
git pull
```

Do your work.

Then:

```bash
git add .
git commit -m "Describe your changes"
git push
```

---

# Why Use `git pull` Before You Start?

Suppose yesterday you worked on your PC.

Today you open Codespaces.

Without running `git pull`, Codespaces may still have yesterday's files.

Running:

```bash
git pull
```

downloads the latest changes from GitHub before you begin working.

This reduces the chance of merge conflicts.

---

# Push vs Pull

## git push

Uploads your local commits to GitHub.

```text
Your Device
     │
git push
     ▼
   GitHub
```

---

## git pull

Downloads the latest commits from GitHub.

```text
GitHub
   │
git pull
   ▼
Your Device
```

---

# Important Reminder

Neither your PC nor Codespaces updates automatically.

Even if GitHub has the newest files, each copy remains unchanged until you run:

```bash
git pull
```

---

# Typical Workflow

```text
Open Project
      │
      ▼
git pull
      │
      ▼
Edit Files
      │
      ▼
git add .
      │
      ▼
git commit -m "Describe changes"
      │
      ▼
git push
```

Repeat this every time you work.

---

# Golden Rules

### Rule 1

GitHub is the **central repository**.

---

### Rule 2

The device that **made the changes** uses:

```bash
git push
```

---

### Rule 3

Any device or Codespace that **did NOT make the changes** must use:

```bash
git pull
```

---

### Rule 4

Before starting work on a shared project, it's a good habit to run:

```bash
git pull
```

This ensures you begin with the latest version of the project.

---

# One-Sentence Summary

> **Push sends your changes to GitHub. Pull brings GitHub's changes to your current computer or Codespace. GitHub is the central hub that keeps every copy in sync.**
