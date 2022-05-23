#!/usr/bin/env bash
clear
echo ""
echo ""
echo "Digite o nome da nova aplicação(sem espaços em branco) Laravel:"
read app_name
composer create-project laravel/laravel ./applications/$app_name
