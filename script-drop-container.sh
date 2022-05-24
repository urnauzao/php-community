#!/usr/bin/env bash
clear
docker ps --format "ContainerId: {{.ID}} | {{.Image}} | Last run:{{.RunningFor}} | {{.State}}"
echo ""
echo ""
echo "Digite o id do Container que deseja derrubar:"
read container_id
docker rm $container_id -f
