# 2020-09-08 script to back up all development databases
# delete any backups that are older than 2 days
find /var/scheduled/backups -name "*.sql" -type f -mtime +2  -delete

# create backup of databases
/usr/bin/mysqldump -uroot  automation_development -R -e --triggers --single-transaction > /var/scheduled/backups/automation_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cleaner -R -e --triggers --single-transaction > /var/scheduled/backups/cleaner-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cmis -R -e --triggers --single-transaction > /var/scheduled/backups/cmis-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  csrhost -R -e --triggers --single-transaction > /var/scheduled/backups/csrhost-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  endofshift_development -R -e --triggers --single-transaction > /var/scheduled/backups/endofshift_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  maintenance_development -R -e --triggers --single-transaction > /var/scheduled/backups/maintenance_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  metrics_development -R -e --triggers --single-transaction > /var/scheduled/backups/metrics_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  mysql -R -e --triggers --single-transaction > /var/scheduled/backups/mysql-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  previewcupdesigner -R -e --triggers --single-transaction > /var/scheduled/backups/previewcupdesigner-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  pricing_development -R -e --triggers --single-transaction > /var/scheduled/backups/pricing_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  purchasing_development -R -e --triggers --single-transaction > /var/scheduled/backups/purchasing_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  sandbox -R -e --triggers --single-transaction > /var/scheduled/backups/sandbox-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  showcase -R -e --triggers --single-transaction > /var/scheduled/backups/showcase-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  simplified -R -e --triggers --single-transaction > /var/scheduled/backups/simplified-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  staging -R -e --triggers --single-transaction > /var/scheduled/backups/staging-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  visors_development -R -e --triggers --single-transaction > /var/scheduled/backups/visors_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  warehouse_development -R -e --triggers --single-transaction > /var/scheduled/backups/warehouse_development-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  wpfaceshields_development -R -e --triggers --single-transaction > /var/scheduled/backups/wpfaceshields_development-`date +20\%y\%m\%d\%H\%M`.sql








