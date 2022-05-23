#!/usr/bin/env bash
if [ ! -f docker-compose.yml ]; then
    cd ..
fi
echo "Você só deve utilizar esse comando quando for gerar uma nova imagem através de seu Dockerfile e Docker Compose"
echo "."
sleep 2
echo "..."
sleep 2
echo "......"
sleep 2
echo "........"
sleep 2
echo "..........."
docker-compose build web
echo "..................."
