# Your Task

- Create a stored procedure in the <code>sales</code> database
  - Output the order <code>id</code>s, the order date, and the total quantity of items in the order (use <code>num_items</code> for the name of this field), in that order, if
  - The order has at least a threshold number of items, <code>num_items</code>, that is a MySQL input argument and
  - The order was placed on or after a particular date that is sent to MySQL as an input parameter     
  - Use MySQL input arguments for the threshold values on <code>num_items</code> and the date using whatever names you might like for those arguments.
  - Also, present the output in <code>ASC</code>ending order of order <code>id</code>
  - Name the stored procedure <code>spOrderNumItemsDate</code>
- Date fields in databases can be tricky to work with
  - In this case, a date can be defined as a string in Python code. For example, February 2, 2023, would be coded as <code>'2023-02-02'</code> and MySQL will successfully convert it to a date data field
- Write a Python program to execute <code></code>
  - Open a new file in Spyder
  - Feel free to use past the code from a previous program using Spyder and <code>File>Save As</code>
  - Save the new file as <code>num_item_date.py</code>
  - Save the program
  - Run the program in Spyder or click: {Run the Code}(/home/codio/miniconda3/bin/ipython /home/codio/workspace/files/num_item_date.py)