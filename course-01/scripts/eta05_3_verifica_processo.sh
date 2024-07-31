#!/bin/bash
processo="nginx"
if pgrep $processo > /dev/null; then
  echo "$processo está em execução."
else
  echo "$processo não está em execução."
fi