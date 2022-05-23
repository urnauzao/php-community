#!/usr/bin/env bash
clear
docker ps --format "ContainerId: {{.ID}} | {{.Image}} | Last run:{{.RunningFor}} | {{.State}}"
echo ""
echo ""
echo "Digite o id do Container que deseja acessar:"
read container_id
echo ""
echo "Acessar via bash ou sh:"
read bash
docker exec -it $container_id $bash
