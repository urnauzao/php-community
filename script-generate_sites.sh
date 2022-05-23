#!/usr/bin/env bash
str=`cat docker/nginx/sites/sites.conf`
find_directory="html"
find_port="80"

clear
echo ""
echo ""
echo "Digite o nome da nova aplicação(sem espaços em branco)"
echo "este nome deve ser o mesmo da aplicação em './applications':"
read replace_directory

clear
echo ""
echo ""
echo "Digite agora em qual porta deseja que ela seja executada:"
echo "Sugestão: 8080, 8081, 8082, ..., 8089"
read replace_port

result=${str//$find_port/$replace_port}
result=${result//$find_directory/$replace_directory}
echo $result > docker/nginx/sites/$replace_directory.conf
echo "Sucesso!"