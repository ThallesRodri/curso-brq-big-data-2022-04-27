# Acessar o banco de dados via python

import mysql.connector
# Pode acessar o host através do nome do container em vez do IP
db = mysql.connector.connect(host='mydb', user='root', password='root', port=3306) #conexão com o BD

my_cursor=db.cursor()
my_cursor.execute('DROP database IF EXISTS brq')
my_cursor.execute('CREATE DATABASE IF NOT EXISTS brq_python')
my_cursor.execute('use brq_python')
my_cursor.execute('CREATE TABLE IF NOT EXISTS feras_brq( nome varchar(255), email varchar(255) )')
my_cursor.execute('INSERT INTO feras_brq (nome,email) VALUES ("Joao", "j@j.com" )')

db.commit()

my_cursor.close()