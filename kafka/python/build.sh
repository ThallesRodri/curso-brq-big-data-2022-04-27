#!/bin/bash
#Arquivo de suporte para buildar os dockers de forma mais automática

docker build -t consumer -f Dockerfile-consumer .

docker build -t producer -f Dockerfile-producer .