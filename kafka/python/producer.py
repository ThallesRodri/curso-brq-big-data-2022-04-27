import json
import random

from kafka import KafkaProducer
from time import sleep

producer = KafkaProducer(
    bootstrap_servers=['singlenode_kafka_1:29092'],
    value_serializer = lambda x: (str(x).encode('utf-8'))
)

while True:
    rand = random.randint(1,999)
    #num = int(input('Num: '))
    print(rand)
    producer.send('meu-topico-legal', rand)

    sleep(5)
