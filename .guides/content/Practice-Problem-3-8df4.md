# Your Task

Use the stored procedure and Python code from the previous practice problem as a basis for this derivative problem.

- Create a stored procedure in the <code>sales</code> database
  - Output, in this order, the item <code>id</code> and the total sales revenue (use the name <code>revenue</code> for that field/column) for each item in the <code>item</code> table whose <code>category</code> matches that specified in an input argument and whose total revenue exceeds some threshold, which is also specified in a MySQL input argument.
  - Present the output in <code>ASC</code>ending order of revenue 
  - Name the stored procedure <code>spRevenueLgCat</code>
- Write a Python program to execute <code></code>
  - Open a new file in Spyder
  - Feel free to use past the code from a previous program using Spyder and <code>File>Save As</code> 
  - Save the new file as <code>revenue_lg_cat.py</code>
  - Save the program
  - Run the program in Spyder or click: {Run the Code}(/home/codio/miniconda3/bin/ipython /home/codio/workspace/files/revenue_lg_cat.py)