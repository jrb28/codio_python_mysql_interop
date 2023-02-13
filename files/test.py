# -*- coding: utf-8 -*-
"""
Created on Tue Jan  3 16:08:39 2023

@author: jrbrad
"""

import mysql.connector as mySQL

""" global MySQL settings """
mysql_user_name = 'root'
mysql_password = 'codio'
mysql_ip = '127.0.0.1'
mysql_db = 'w2la'

def db_connect():
    cnx = mySQL.connect(user=mysql_user_name, passwd=mysql_password,
                        host=mysql_ip, db=mysql_db)
    return cnx

def load_data(data):
    cnx = db_connect()
    cursor = cnx.cursor()
    stmt = 'INSERT INTO links(orig, dest, miles) VALUES(%s, %s, %s);'
    cursor.executemany(stmt, data)
    cursor.close()
    cnx.commit()
    cnx.close 

def select_data():
    cnx = db_connect()
    cursor = cnx.cursor()
    stmt = 'SELECT * FROM links;'
    cursor.execute(stmt)
    data = cursor.fetchall()
    cursor.close()
    cnx.close 
    return data
        
def exe_sp(sp_name):
    cnx = db_connect()
    cursor = cnx.cursor()
    cursor.callproc(sp_name)
    for result in cursor.stored_results():
        data = result.fetchall()
        break
    cursor.close()
    cnx.close 
    return data

data = select_data()
print(data)

data = exe_sp('spSelectLinks')
print(data)


