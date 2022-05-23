### Para usar o CRON, descomente tudo e altere o comando da linha 3.
# echo "#iniciando cron" > /meus.log
# echo "* * * * * cd /var/www/html/ && php artisan schedule:run >> /meus.log  2>&1" > /etc/cron.d/schedule
# chmod 0644 /etc/cron.d/schedule
# crontab /etc/cron.d/schedule
# cron
