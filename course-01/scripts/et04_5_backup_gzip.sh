#!/bin/bash
origem="/home/denisfreitas999/diretorio"
destino="/home/denisfreitas999/backup"
data=$(date +"%Y%m%d")
tar -czf $destino/backup_$data.tar.gz $origem