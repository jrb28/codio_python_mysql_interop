# Getting Started

Please load the sales database by clicking the button below.  If you want to instantiate a clean copy of the database, then you can come back and click this button.

{Reset Database}(sh .guides/files/restart.sh)

- Login into MySQL: Please click on the MySQL Workbench tab in the left pane, click on the dialog box for the MySQL password and type <code>codio</code> (lower case "c")
- Click on the Spyder tab and open this file, <code>basic_select.py</code>, using <code>File>Open</code> from the menu.


# Python Code for a Basic <code>SELECT</code> Query

The basic components of code to access data in a database are the following:
- Import <code>mysql-connector</code>
- Create a <code>connection</code> with the database
- Create a <code>cursor</code>, which is the conduit through which data flows between the database and Python
- Execute a query on the database using <code>mysql.connector</code> which fills the cursor with data
- Retrieve data from the cursor with Python code

Note how each one of the steps above is implemented in code in the file <code>basic_select.py</code>.

Although we will not be demonstrating it in this course, you can also insert data into a database or update data in addition to retrieving data, as described above using a <code>SELECT</code> command.

![Python-MySQL Interoperability](.guides/img/python-mysql.jpg)
  
