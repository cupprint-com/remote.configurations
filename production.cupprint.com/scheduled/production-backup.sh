# delete any backups that are older than 2 days
find /var/scheduled/backups -name "production*.sql" -type f -mtime +2  -delete
# create backup of database
/usr/bin/mysqldump -uroot  cupprint_api  > /var/scheduled/backups/production-api-`date +20\%y\%m\%d\%H\%M`.sql

