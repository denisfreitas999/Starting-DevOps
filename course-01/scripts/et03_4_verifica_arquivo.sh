#! /bin/bash

echo "Bem-vindo ao verificador de arquivos"
echo "Por favor, digite o nome do arquivo"
read nome_arquivo

if [ -e $nome_arquivo ]; then
        echo "O arquivo existe."
else
        echo "O arquivo não existe."
fi