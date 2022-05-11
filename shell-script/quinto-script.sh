#!/bin/bash
###################################
#
# quinto-script.sh
#
# Autor: Thalles
# Data de crição: 04 de maio de 2022
#
# Descrição: Estrutura de repetição for aplicado a pastas
###################################

#Lista todos os arquivos na pasta
for i in /home/virtual/Desktop/brq/*
do
    #echo $i
    if [ -f $i ]
    then
        echo "O arquivo $i possui $(cat $i | wc -l) linhas"
    fi
done