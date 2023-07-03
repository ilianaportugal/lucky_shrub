# lucky_shrub
Application of advanced MySQL topics

Languages:
- MySQL

Tools: 
- MySQL Workbench

## Projects Overview
### Functions and Stored Procedures
Objectives 
- Develop a user defined function
- Develop a stored procedure

### MySQL Triggers
Objectives:
- Develop INSERT, UPDATE and DELETE triggers.

### Optimizing Select Statements
Objectives:
- Apply MySQL SELECT query optimization techniques
- Use indexes on a table column to enhance query performance

### Additional Optimization Techniques
Objectives:
- Use common table expressions
- Create a prepared statement
- Use JSON to extract relevant data

### Data Analysis in MySQL
Objectives:
- Analyze data to gain insight into Lucky Shrub’s business performance
- Query data from multiple tables

### Client Data Analysis
Objectives:
- Apply learnings from other projects

## Concepts and Terms
- Functions: encapsulate common formulas or generic business rules that are reusable among SQL statements and stored procedures. Can be invoked from anywhere, including SELECT statements and stored procedures.
- Stored Procedures: used mainly to process, manipulate and modify data in the database. Invoked using the CALL statement ONLY.
- User-defined Function: created to perform operations that can’t be completed with built-in functions.
- Trigger: set of actions available in the form of a stored procedure and invoked when an event occurs (INSERT, UPDATE or DELETE).
- Scheduled event: a task that takes place at a specific time according to a schedule.
- Database optimization: improving database performance to reduce the execution time of a query, maximizing speed and efficiency of database.
  - Tactics: target columns with SELECT, use of Functions and wildcards, use of INNER JOINS with tables, deploy DISTINCT and UNION clauses, use the ORDER BY clause to sort results.
- Data Retrieval Statement: statements that return data from the database.
- Data Change Statements: statements that alter data within the database.
- Primary Index: index that is stored within the table itself, generated automatically when you create a table that has a primary or unique id, enforced the order of rows in the table.
Secondary Index: created using the mysql create index statement.
- Common Table Expression (CTE): method of optimizing complex database queries by compiling them as simple blocks of code.
- Prepared Statement: reusable MySQL statement that acts as a template and holds unspecified values as parameters.
