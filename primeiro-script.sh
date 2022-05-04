#!/bin/bash
###################################
#
# primeiro-script.sh
#
# Autor: Fabrizio
# Data de crição: 02 de maio de 2022
#
# Descrição: Primeiro Script de Criação da Aula de Big Data
###################################

echo 'Texto no console'

echo 'Criando pasta...'
mkdir -p diretorio-brq
# mkdir serve para criar uma pasta. 
# Se usarmos o parâmetro -p, permite criar
#   pastas não existentes ou não apresentar erros
#   quando a pasta já existe
# ex: mkdir -p diretorio-brq

ls -ls
# ls lista todas as pastas do diretório de interesse junto
#   com detalhes de horário de criação/modificação e suas permissões (parâmetro -l)

rm -r diretorio-brq
# rm deleta arquivos ou pastas de interesse.
# para deletar uma pasta, devemos passar o parâmetro -r (recursivo) 

#tail -f arquivo.txt
# serve para mostrar as últimas linhas de um aquivo
#   e deixar o mesmo aberto para vermos as novas linhas
#   inseridas no final do arquivo

#sleep 3
# serve para "dormir" (parar console) por x segundos

touch arquivo.txt
# touch serve para criar um arquivo vazio ou para atualizar
#   a data de modificação do arquivo

# defini uma variável com o nome CONTADOR e iniciei o valor com 0
CONTADOR_UM=0
PASTA="/home/virtual/Desktop/brq"
#PASTA="~/Desktop/brq"

# imprimi o conteúdo da variável contador (não esquecer do $)
echo "O valor do CONTADOR é $CONTADOR_UM"

echo "usando LS"
ls $PASTA

DATAHORA=$(date +%Y-%m-%d---%H:%M)

echo "$DATAHORA usando PWD"
pwd


# man -> é o manual dos comandos linux
# Ex: man tail

# wc -> contador de palavras (word count)
# -l -> contar numero de linhas
# -c --> contar caracteres
# -w -> contar palavras

# pipe (|) serve para pegar o resultado de um comando e inserir como entrada
# em um proximo  comando

# comando  > arquivo --- coloca o resultado de um 


# grep serve para buscar uma  palavra dentro de um arquivo
#ex: grep frase arquivo.txt 
#ao passa o comando -R (recursivo), iiremos buscar uma palavra dentro
# dos arquivos de um diretorio

# wget faz download de  um arquivo

#Pegar parametro 'nome do script'
echo "Nome do scrip: $0"
#echo "Primeiro argumento: $1 $2"
#echo "Quantidade de argumentos: $#"

#condicional if
## '-eq' serai o '==', equal
if [ $# -eq 0 ]
then
    echo "Nenhum parametro foi passado"
    exit 1
fi