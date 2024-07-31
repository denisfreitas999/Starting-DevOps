#!/bin/bash
echo "Top 5 processos por uso de CPU:"
ps aux --sort=-%cpu | head -n 6