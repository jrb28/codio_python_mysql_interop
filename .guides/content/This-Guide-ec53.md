# Introduction
In this guide, we will use a Spyder development environment to program Python and MySQL Workbench to work with a database

This guide uses the same <code>sales</code> database that was used in the MySQL Codio guide previously, so you should already be familiar with the database, which will help get you started faster.  To refresh your memory, the description of the <code>sales</code> database is repeated below.

You will be writing more stored procedures for more practice, and then we will be connecting to them using Python and the <code>mysql.connector</code> package.

When you open the next page of this guide, you will have both MySQL Workbench and a Spyder window available in the left pane so that you can create stored procedures in MySQL and write Python code in Spyder to access those stored procedures.

# sales Database

The <code>sales</code> database is simplified kernel of a database that any company might have that fulfills orders, whether that be online or in bricks-and-mortar stores.  The database has three tables:

- <code>item</code>
- <code>order</code>
- <code>order_item</code>

The <code>item</code> table documents data relating to each of the best-selling books and movies that the company sells.  The <code>order</code> table contains ID codes for each order and the date on which the order was placed.  Each row/record in the <code>order_item</code> table documents item IDs associated with an order and the quantity of each item that was ordered.  The database is shown visually below in an Entity-Relationship (ER) Diagram.  Note the foreign key relationships between the <code>order_item</code> table and the other two tables.


![alt text](.guides/img/er.jpg)