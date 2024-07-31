#!/bin/bash
echo "Digite o nome do novo usuário:"
read nome_usuario
sudo useradd -m $nome_usuario
sudo passwd $nome_usuario