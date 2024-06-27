# EMPLOYEE DATABASE - POSTGRES 

![ERD](https://github.com/ZainabShafi/sql-challenge/assets/160359466/abae4d2f-d66d-4290-b287-c1bf4064dd9b)

## OVERVIEW:

For this project I was tasked with creating a relational database from five CSV files containing employee data utilizing Data Normalization rules (1NF, 2NF, 3NF). Being able to engineer Entity Relationship Diagrams and delve into the logic of relationships between datasets was enriching, especially when you're able to test this logic through creating schema and queries in postgreSQL. 

### Technologies and Skills Used

Python: The primary language used for scripting and data manipulation.
SQL (SQLite/PostgreSQL/MySQL): Employed for database creation, table schema design, and data querying.
QuickDBD: Used to sketch the Entity Relationship Diagram (ERD) to visualize table relationships and design schemas.

### Project Steps 

**Data Modeling**

Examined CSV files to understand the data structure and relationships (see repo file employee_data_csvs

Utilized QuickDBD to create an ERD that outlined the tables and their respective relationships (1NF,2NF, 3NF). See ERD.png in repo.

**Data Engineering**

Designed **table schemas** for each of the six CSV files.
Specifed **data types, primary keys, foreign keys, and other constraints (eg: NOT NULL)**.

Define Primary Keys:
Ensured the **column was unique for primary keys**.
Created a **composite key using two primary keys** to uniquely identify a row.

**Created Tables in relevant order**:

Ensured foreign keys reference the correct tables by creating them in the proper sequence.

**QUERIES:**

Utilized multiple types of **joins**, various operators and aggregations to create queries based on the below parameters. See folder in repo **SQL_QUERIES_SCHMA -> EMP_DATA_QUERIES** for full queries:

1) List the employee number, last name, first name, sex, and salary of each employee 

2) List all employees hired in 1986

3) List the manager of each department along with their department number, department name, employee number, last name, and first name.

4) List the department number for each employee along with their employee number, last name, first name, and department name.

5) List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6) List each employee in the Sales department, including their employee number, last name, and first name.

7) List the frequency counts, in descending order, of all the employee last names (i.e., how many employees share each last name).


