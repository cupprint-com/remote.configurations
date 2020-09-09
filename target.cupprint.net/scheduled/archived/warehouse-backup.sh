# delete any backups that are older than 2 days
find /var/scheduled/backups -name "warehouse*.sql" -type f -mtime +2  -delete
# create backup of database
/usr/bin/mysqldump -uroot  warehouse  > /var/scheduled/backups/warehouse-`date +20\%y\%m\%d\%H\%M`.sql

