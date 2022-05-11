#!/bin/bash
###################################
#
# segundo-script.sh
#
# Autor: Thalles
# Data de crição: 04 de maio de 2022
#
# Descrição: Segundo Script de Criação da Aula de Big Data. Busca texto em um arquivo
# Primeiro argumento e o nome do arquivo e o segundo, o texto a ser localizado 
###################################

#Se não tiver mais de dois argumentos
if [ $# -le 1 ] #se tiver menos que um argumento
then    
    echo "Nome do arquivo e texto obrigatorio"
    exit 1
fi

#grep -i $2 $1 #$2 = frase $1 = arquivo, ao contrário dá errado, pq é "grep frase arquivo"
CONTADOR=$(grep -ic -n $2.* $1)
#echo "CONTADOR $CONTADOR" 

if [ $CONTADOR -eq 0 ]
then
    echo "Nenhuma ocorrencia da palavra"
elif [ $CONTADOR -eq 1 ]
then
    echo "Encontrou-se 1 ocorrencia"
else 
    echo "Encontrou-se $CONTADOR ocorrencia(s)"
fi