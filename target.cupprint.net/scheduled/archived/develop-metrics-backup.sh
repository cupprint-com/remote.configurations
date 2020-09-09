# delete any backups that are older than 2 days
find /var/scheduled/backups -name "develop-metrics*.sql" -type f -mtime +2  -delete
# create backup of database
/usr/bin/mysqldump -uroot  develop_metrics  > /var/scheduled/backups/develop-metrics-`date +20\%y\%m\%d\%H\%M`.sql

