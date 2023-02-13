We, again, need to do some coding in both MySQL and Python.  We'll start with creating a stored procedure in MySQL.

# Create a Stored Procedure with Arguments

Create a stored procedure in the <code>sales</code> database, called <code>spGetItemsCat</code>, which takes returns all the items from the <code>item</code> table whose categories match an input argument (either <code>movie</code> or <code>book</code>).  The stored procedure will, therefore, require one argument to specify which category is to be retrieved.    Let's name that argument <code>cat_target</code>, in which case the SQL text within that stored procedure could be implemented as follows:

<code>SELECT * FROM item WHERE category=cat_target ORDER BY id ASC;</code>

Remember that the remainder of the stored procedure definition must provide for the input argument and that its type must be compatible with the database field (<code>category</code>) to which it is being compared.

# Adding arguments to the <code>cursor.callproc()</code> Statement

We will still use the <code>cursor.callproc()</code> statement, but we will show how to add arguments in Python that will be transmitted to MySQL with the code in <code>callproc_args.py</code>:
- Open <code>callproc_args.py</code> in Spyder in the left pane
- Note that the only revision to the previous code file is to add a second argument to the <code>cursor.callproc()</code> statement, which is the argument(s) that MySQL needs for the <code>spGetItemsCat</code> stored procedure.
  - Further, note that the (single) MySQL argument is within a tuple: <code>('book',)</code>
  - We need to do this, or put arguments in a list, because <code>cursor.callproc()</code> expects MySQL arguments in an iterable object.

Execute the <code>callproc_args.py</code> code in the Spyder window or click on this button: {Run the Code}(/home/codio/miniconda3/bin/ipython /home/codio/workspace/files/callproc_args.py)

