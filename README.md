# 📘 Database Design Assignment

## Title
**Book Management System (Beginner-Level Assignment)**

---

## 🎯 Objective

Design a simple relational database schema for a **Book Management System**. This assignment will test your understanding of:

- Database tables
- Relationships
- Basic normalization

---

## 📝 Problem Statement

A small library wants to maintain information about:

- Books
- Authors
- Borrowers

The system should be able to:

- Store details of books
- Track which author wrote which book
- Track which borrower borrowed which book

Your job is to design the database schema.

---

# 📂 Requirements

## 1. Books

Each book should have:

- Title
- ISBN
- Publication Year
- Genre
- Authors (A book can have multiple authors)

---

## 2. Authors

Each author should have:

- Full Name
- Country
- Date of Birth

---

## 3. Borrowers

Each borrower should have:

- Full Name
- Email
- Phone Number

---

## 4. Borrow Records

Track which borrower borrowed which book:

- Borrow Date
- Return Date *(nullable)*
- Status *(borrowed or returned)*

---

# 📐 Tasks

## Task 1: Identify Entities

List the entities required for the system.

### Expected Entities

- Books
- Authors
- Borrowers
- Borrow Records
- Book Authors (Join Table)

---

## Task 2: Define Attributes

Define attributes for each entity with appropriate data types.

---

## Task 3: Define Relationships

Specify the relationships:

| Relationship | Type |
|-------------|------|
| Author ↔ Book | Many-to-Many (M:N) via join table |
| Borrower → Borrow Records | One-to-Many (1:N) |
| Book → Borrow Records | One-to-Many (1:N) |

---

## Task 4: Draw ER Diagram

Create a simple ER diagram:

- Hand-drawn **or**
- Digital

---

## Task 5: Write SQL Schema

Write SQL `CREATE TABLE` statements for all required tables.

---

# 📦 Deliverables

Submit the following:

- 📄 Document explaining Entities, Attributes, and Relationships
- 🖼️ ER Diagram (image or PDF)
- 🗄️ SQL Schema file

---

# ⭐ Bonus (Optional)

Add validation constraints:

- Email must be unique for borrowers
- ISBN must be unique for books
- Prevent double-borrowing of the same book unless it has been returned

---

# 📌 Notes for Students

- Keep the design simple.
- Focus on understanding how tables relate to each other.
- Aim for a clean, normalized database structure.

**Good luck! 🚀**

---

# 🛠️ Installation & Setup

This section explains how to set up the database and seed it with sample data using SQLite.

## Prerequisites

### SQLite3 Installed

#### macOS / Linux

Usually pre-installed. Verify with:

```bash
sqlite3 --version
```

#### Windows

Download SQLite from:

https://sqlite.org

---

## Setup Instructions

### 1. Create the Database and Tables

```bash
sqlite3 library.db < tables.sql
```

This command:

- Creates a new SQLite database file named `library.db`
- Creates all required tables:
  - `authors`
  - `books`
  - `book_authors`
  - `borrowers`
  - `borrow_records`

---

### 2. Seed the Database with Sample Data

```bash
sqlite3 library.db < seed.sql
```

This populates the database with sample data including:

- 7 Authors
- 25 Books
- 6 Borrowers
- 10 Borrow Records

---

### 3. Verify the Setup

Open the database:

```bash
sqlite3 library.db
```

Run some sample queries:

```sql
-- Check authors
SELECT * FROM authors;

-- Check books
SELECT * FROM books LIMIT 5;

-- Check borrow records
SELECT * FROM borrow_records;
```

Exit SQLite:

```sql
.quit
```

---

## Alternative: All-in-One Setup

Run both schema creation and data seeding in a single command:

```bash
sqlite3 library.db < tables.sql && sqlite3 library.db < seed.sql
```

---

## Reset the Database

To start fresh:

```bash
rm library.db

sqlite3 library.db < tables.sql

sqlite3 library.db < seed.sql
```

---

## Project Structure

```text
project/
│
├── README.md
├── tables.sql
├── seed.sql
└── library.db
```

---

## Learning Outcomes

After completing this assignment, you should be able to:

- Design normalized database tables
- Identify entities and relationships
- Implement many-to-many relationships using join tables
- Create SQL schemas using `CREATE TABLE`
- Apply constraints and basic data validation
- Build and populate a SQLite database

---
