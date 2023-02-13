# The <code>cursor.callproc()</code> Statement

While we can write queries in Python and execute them with the <code>cursor.execute()</code> statement, it is better practice to write SQL within stored procedures in the database when we need them frequently in order to avoid writing complex queries in Python that are difficult to debug in that environment.

We will use the <code>cursor.callproc()</code> statement to execute stored procedures.  Our first example will be for a stored procedure without input arguments.

# Using the <code>cursor.callproc()</code> Statement

Using the <code>cursor.callproc()</code> statement requires that we do some coding in both MySQL and Python as decribed next.

First, we need to create a stored procedure in the <code>sales</code> database, which we will name <code>spGetAllItems</code>.  Create that stored procedure, with no arguments, which should contain the same <code>SELECT</code> query we executed on the previous page:

<code>SELECT * FROM item ORDER BY id ASC;</code>

Second, navigate to the Spyder window and open the file <code>callproc.py</code> from the <code>files</code> subfolder and look at the code:
- Note that this code uses <code>cursor.callproc()</code> in place of <code>cursor.execute()</code> 
  - The only argument is the name of the stored procedure
- Note that to get the results we need to iterate through the <code>cursor.stored_results()</code> object.
  - Stored procedures can contain multiple <code>SELECT</code> queries and the <code>cursor.stored_results()</code> object facilitates multiple "tables" of results that might be returned from the database.  
  - We need to get results from <code>cursor.stored_results()</code> even if our stored procedure has only one query
- Note the loop at the end of the program to get a description of all results returned from the database

Finally, execute the <code>callproc.py</code> code in the Spyder window or click on this button: {Run the Code}(/home/codio/miniconda3/bin/ipython /home/codio/workspace/files/callproc.py)
