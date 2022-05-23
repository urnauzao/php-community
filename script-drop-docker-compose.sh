#!/usr/bin/env bash
if [ ! -f docker-compose.yml ]; then
    cd ..
fi
docker-compose down
echo "Aplicação está sendo derrubada."