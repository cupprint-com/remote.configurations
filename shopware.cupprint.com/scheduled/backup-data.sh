# delete files that are older than 1 day
find /var/scheduled/backups -name "*.sql" -type f -mtime +1 -delete
# backup database
mysqldump -uroot  shopware  -R -e --triggers --single-transaction  > /var/scheduled/backups/`date +20\%y\%m\%d\%H\%M`.sql


