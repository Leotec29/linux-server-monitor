#!/bin/bash

echo "================================"
echo "     LINUX SERVER MONITOR"
echo "================================"

echo ""
echo "Data e hora: $(date)"
echo "Servidor: $(hostname)"

echo ""
echo "----- MEMORIA -----"
free -h

MEM_TOTAL=$(free | awk '/Mem:/ {print $2}')
MEM_DISPONIVEL=$(free | awk '/Mem:/ {print $7}')

MEM_USO=$(( (MEM_TOTAL - MEM_DISPONIVEL) * 100 / MEM_TOTAL ))

echo "Memoria em uso: ${MEM_USO}%"

if [ "$MEM_USO" -ge 80 ]; then
    echo "ALERTA: uso de memoria alto!"
else
    echo "OK: uso de memoria normal."
fi

echo ""
echo "----- DISCO -----"
df -h /

DISCO_USO=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disco em uso: ${DISCO_USO}%"

if [ "$DISCO_USO" -ge 80 ]; then
    echo "ALERTA: disco quase cheio!"
else
    echo "OK: uso de disco normal."
fi

echo ""
echo "Monitoramento concluido!"

