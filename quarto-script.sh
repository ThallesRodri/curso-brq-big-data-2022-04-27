#!/bin/bash
###################################
#
# quarto-script.sh
#
# Autor: Thalles
# Data de crição: 04 de maio de 2022
#
# Descrição: Estrutura de repetição while
###################################

CONTADOR=0

#input
read -p "Informe um número: " NUMERO
echo "Numero: $NUMERO"

while [ $CONTADOR -le $NUMERO ]
do
    echo "$CONTADOR"
    sleep 1
    CONTADOR=$(($CONTADOR+1))
done