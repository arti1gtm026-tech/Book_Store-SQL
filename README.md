## Bookstore Database & Sales Analysis Using SQL

## Project Overview

This project explores how a bookshop operates through its books, customers, and sales transactions. Using Microsoft SQL Server, I developed SQL queries to investigate the dataset and discover useful patterns related to customer purchases, book popularity, revenue, and stock availability.

The project focuses on using SQL to answer practical business questions and transform raw records into information that can support better business decisions.

## Tools and Technologies Used

- **Microsoft SQL Server Management Studio (SSMS)** — To write and execute SQL queries.
- **Microsoft SQL Server** — To create and manage the bookshop database.
- **SQL (T-SQL)** — To retrieve, filter, join, and analyze data.
- **CSV Files** — To import book, customer, and order datasets into the database.
- **GitHub** — To host the project and showcase the SQL analysis.

## Understanding the Data

The database contains three interconnected tables.

**Books**
Contains book-related information, including titles, authors, genres, publication years, prices, and available stock.

**Customers**
Contains customer records and location information, which can be used to explore customer distribution and purchasing activity.

**Orders**
Contains transaction details, connecting customers with the books they purchase and recording order-related information.

### How the Tables Connect

The database relationships allow information from different tables to be analyzed together:

- Customer purchases can be examined through the relationship between `Customers` and `Orders`.
- Ordered books can be identified through the relationship between `Books` and `Orders`.

These connections make it possible to investigate purchasing patterns and sales performance using SQL joins.

## Analysis Performed

## 1. Basic SQL Queries
1. Count the books belonging to the Fiction genre.

2. Find books published after 1950.

3. List all customers from Canada.

4. Retrieve orders placed in November 2023.

5. Calculate the total stock of books available.

6. Find the details of the most expensive book.

7. Retrieve orders where the quantity is greater than one.

8. Find orders where the total amount exceeds $20.

9. List all distinct genres available in the Books table.

10. Find the book with the lowest stock.

11. Calculate the total revenue generated from all orders.

## 2. Advanced SQL Queries
1. Calculate the total quantity of books sold for each genre.

2. Find the average price of books in the Fantasy genre.

3. List customers who have placed at least two orders.

4. Identify the most frequently ordered book.

5. Find the top three most expensive books in the Fantasy genre.

6. Calculate the total quantity of books ordered for each author.

7. List cities associated with customers whose orders exceed $30.

8. Identify the customer who spent the most on orders.

9. Calculate the remaining stock after accounting for ordered quantities.

## SQL Skills Practised

Through this project, I practised applying SQL to real-world-style business questions.

The main concepts include:

- Data retrieval using `SELECT`
- Conditional filtering with `WHERE`
- Sorting with `ORDER BY`
- Removing duplicate values with `DISTINCT`
- Aggregations using `COUNT()`, `SUM()`, and `AVG()`
- Grouping records with `GROUP BY`
- Filtering grouped results using `HAVING`
- Combining related tables using `JOIN`
- Using subqueries for advanced analysis
- Filtering records by date
- Calculating sales totals and inventory balances

## Running the Project

You can explore this project using Microsoft SQL Server Management Studio (SSMS).

**Step 1 — Create a database**

```sql
CREATE DATABASE DB_Books;
GO

USE DB_Books;
GO
```

**Step 2 — Load the datasets**

Import the relevant CSV files into SQL Server and create or configure the required tables.

**Step 3 — Verify the database structure**

Check that the tables and columns match the names used in your SQL queries. Confirm that the customer and book identifiers connect correctly to the Orders table.

**Step 4 — Execute the queries**

Run the SQL statements to explore the data, calculate sales metrics, investigate customer behaviour, and evaluate inventory.

*Important: The database creation statement only creates the database. The tables and their data must be imported or created separately.*

## Key Learnings

Through this project, I strengthened my practical SQL and database analysis skills by working with bookshop data. Key learnings include:

- **Database Management:** Understanding relational database structures and relationships between tables.
- **SQL Querying:** Writing efficient queries to retrieve, filter, sort, and analyze data.
- **Data Aggregation:** Applying aggregate functions such as `COUNT()`, `SUM()`, and `AVG()` to generate meaningful insights.
- **Data Relationships:** Using SQL `JOIN` operations to combine data from multiple tables.
- **Sales Analysis:** Calculating revenue, identifying popular books, and evaluating customer purchasing patterns.
- **Inventory Analysis:** Examining stock availability and estimating remaining inventory based on ordered quantities.
- **Analytical Thinking:** Translating business questions into SQL queries to support data-driven decision-making.

##  Conclusion

The Bookshop SQL Data Analysis Project demonstrates how SQL can be used to analyze bookshop data, customer information, orders, revenue, and inventory.

By working with basic and advanced SQL queries, this project provides practical experience in data filtering, aggregate functions, grouping, joins, subqueries, date-based analysis, and inventory calculations.

It is a useful project for developing SQL querying, problem-solving, database management, and data analysis skills.

**Created by Arti Gautam**  
*Aspiring Data Analyst | SQL | Microsoft SQL Server*
