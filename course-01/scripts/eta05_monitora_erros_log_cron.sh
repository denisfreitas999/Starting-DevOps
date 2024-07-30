#!/bin/bash
echo "Mensagens de erro - $(date)" >> /caminho/do/log_monitorado.txt
tail -n 5 /var/log/syslog | grep "error" >> /caminho/do/log_monitorado.txt

# Adicione a seguinte linha ao crontab para executar o script a cada duas horas
# 0 */2 * * * /caminho/do/seu/script.sh