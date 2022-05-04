#!/bin/bash
###################################
#
# sexto-script.sh
#
# Autor: Thalles
# Data de crição: 04 de maio de 2022
#
# Descricao: mostrar recursos computacionais
##################################



while true
do
    HOSTNAME=$(hostname)
    DATET=$(date "+%Y-%m-%d %H:%M:%S")
    CPUUSAGE=$(top -b -n 2 -d1 | grep -i "Cpu(s)" | tail -n1 | awk '{print $2}' |awk -F. '{print $1}')
    MEMUSAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    DISKUSAGE=$(df -h / | awk '{print $5}' |tail -n 1 |sed 's/%//g')

    echo "DATA: $DATET"
    echo "HOSTNAME: $HOSTNAME"
    echo "CPU: $CPUUSAGE"
    echo "MEMORIA: $MEMUSAGE"
    echo "HD: $DISKUSAGE"
    echo "==================================="

    sleep 5
done