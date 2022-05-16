import mysql.connector

from kafka import KafkaConsumer
from json import loads

total= 0
i = 0

####BD
db = mysql.connector.connect(host='mysql', user='root', password='root', port=3306, database='brq_python') 

consumer = KafkaConsumer(
    'meu-topico-legal',
    bootstrap_servers = ['singlenode_kafka_1:29092'],
    value_deserializer= lambda x: loads( x.decode('utf-8'))
)
my_cursor=db.cursor()
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

        db.commit()

except KeyboardInterrupt:
    print('Fechando...')
    my_cursor.close()