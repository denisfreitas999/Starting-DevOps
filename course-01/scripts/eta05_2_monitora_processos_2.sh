#!/bin/bash
echo "Top 5 processos por uso de memória:"
ps aux --sort=-%mem | head -n 6