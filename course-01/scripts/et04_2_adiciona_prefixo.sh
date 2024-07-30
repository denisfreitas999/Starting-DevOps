#! /bin/bash
prefixo="New_"
for arquivo in *;
do
  mv "$arquivo" "$prefixo$arquivo"
done