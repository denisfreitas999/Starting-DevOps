#!/bin/bash
echo "Últimas 10 linhas de mensagens de erro:"
tail -n 10 /var/log/syslog | grep "error"