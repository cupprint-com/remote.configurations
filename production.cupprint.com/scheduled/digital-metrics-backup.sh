# delete any backups that are older than 2 days
find /var/scheduled/backups -name "digital-metrics*.sql" -type f -mtime +2  -delete
# create backup of database
sudo /usr/bin/mysqldump -uroot  digital_metrics  > /var/scheduled/backups/digital-metrics-`date +20\%y\%m\%d\%H\%M`.sql

