#!/usr/bin/env bash
echo "Este script foi feito para construir uma imagem de container Docker, sem necessitar do docker-compose"

## Trocar nome_usuario pelo seu nome de usuário no Docker Hub
nome_usuario='urnau'

## Trocar nome_imagem pelo nome de seu repositório no Docker Hub
nome_imagem='teste-youtube-30mai2022'

## Trocar somente se for versionar a imagem do repositório Docker Hub. Default: "latest"
versao="latest"

## Na linha abaixo executa a ação de construção da imagem, o "."(ponto) remete que o Dockerfile está neste mesmo nível no diretório
docker build -t ${nome_usuario}/${nome_imagem}:${versao} .

echo "Processo concluído!"