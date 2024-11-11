#!/bin/bash

# Início da resposta HTTP
echo "Content-type: text/html"
echo ""

# Extrai o nome do parâmetro da URL
QUERY_STRING=$QUERY_STRING
nome=$(echo "$QUERY_STRING" | sed -n 's/^.*nome=\([^&]*\).*$/\1/p' | sed 's/%20/ /g')

# Exibe a página HTML com a saudação
echo "<!DOCTYPE html>"
echo "<html lang='pt-BR'>"
echo "<head><meta charset='UTF-8'><title>Saudação</title></head>"
echo "<body>"
if [ -n "$nome" ]; then
    echo "<h1>Olá, $(echo "$nome" | sed 's/+/ /g')! Seja bem-vindo(a)!</h1>"
else
    echo "<h1>Nome não informado.</h1>"
fi
echo "</body>"
echo "</html>"
