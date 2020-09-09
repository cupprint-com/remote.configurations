# delete any backups that are older than 1 days
find /var/scheduled/backups -name "sandbox*.sql" -type f -mtime +1  -delete
# create backup of database
/usr/bin/mysqldump -uroot  cp_api  > /var/scheduled/backups/sandbox-`date +20\%y\%m\%d\%H\%M`.sql

