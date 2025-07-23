# task-5
This is my 5th task of sql developer internship.

SQL Joins Demonstration
This repository contains a SQL script (joins_demo.sql) designed to illustrate various SQL join types: INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.

Overview
The script performs the following actions:

Creates a database named task_5.

Defines two tables: customer and orders.

customer: customer_id (PK), customer_name, email

orders: order_id (PK), cus_id (FK to customer), order_date, total_amount

Inserts sample data into both tables, including some non-matching IDs in orders to demonstrate join behavior.

Executes queries for each join type:

INNER JOIN: Returns matching rows from both tables.

LEFT JOIN: Returns all rows from customer and matching orders (NULLs for non-matches).

RIGHT JOIN: Returns all rows from orders and matching customer (NULLs for non-matches). (Note: SQLite simulation provided for FULL OUTER JOIN).

FULL OUTER JOIN: Returns all rows from both tables, with NULLs where no match exists. (Note: SQLite simulation provided).

How to Run
Save the entire SQL content into a .sql file (e.g., joins_demo.sql).

Open your preferred SQL client (e.g., MySQL Workbench, DB Browser for SQLite).

Execute the script.

Observe the results of each SELECT statement to understand how each join type combines data.

This script is a quick reference for understanding and practicing SQL joins.
