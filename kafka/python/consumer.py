import mysql.connector

from kafka import KafkaConsumer
from json import loads

total= 0
i = 0

consumer = KafkaConsumer(
    'meu-topico-legal',
    bootstrap_servers = ['singlenode_kafka_1:29092'],
    value_deserializer= lambda x: loads( x.decode('utf-8'))
)

####BD
con = mysql.connector.connect(host='172.17.0.3', user='root', password='root', port=3306, database='brq_python') 

my_cursor=con.cursor()
#my_cursor.execute('DROP database IF EXISTS brq')
#my_cursor.execute('CREATE DATABASE IF NOT EXISTS brq_python')
#my_cursor.execute('use brq_python')
my_cursor.execute('CREATE TABLE IF NOT EXISTS minha_media(media DOUBLE(6,2))')

try:
    for msg in consumer:
        print(msg.value)

        total += msg.value 
        i += 1
        media = total/i

        print('Media: {:.2f}'.format(media))

        #my_cursor=con.cursor()
        #insert = 'INSERT INTO minha_media(media) VALUES({0})'.format(media)
        #my_cursor.execute(insert)
        my_cursor.execute(f'INSERT INTO minha_media(media) VALUES({media})')

        con.commit()

except KeyboardInterrupt:
    print('Fechando...')
    my_cursor.close()