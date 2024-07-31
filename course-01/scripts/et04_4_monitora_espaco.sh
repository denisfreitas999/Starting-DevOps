#!/bin/bash
limite=90
espaco=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $espaco -gt $limite ]; then
  echo "Alerta: Espaço em disco excedeu $limite%."
else
  echo "Espaço em disco está abaixo do limite."
fi