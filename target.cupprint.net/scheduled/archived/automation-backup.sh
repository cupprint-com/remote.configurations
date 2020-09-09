# delete any backups that are older than 2 days
find /var/scheduled/backups -name "automation*.sql" -type f -mtime +2  -delete
# create backup of database
/usr/bin/mysqldump -uroot  automation  > /var/scheduled/backups/automation-`date +20\%y\%m\%d\%H\%M`.sql

