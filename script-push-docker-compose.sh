#!/usr/bin/env bash
if [ ! -f docker-compose.yml ]; then
    cd ..
fi
echo "Certifique-se de ter uma conta no Docker Hub e ter o repositório correto para subir a imagem WEB."
echo "."
sleep 2
echo "..."
sleep 2
echo "......"
sleep 2
echo "........"
sleep 2
echo "..........."
docker-compose push web
echo "..................."
