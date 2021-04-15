# 2020-09-08  production machine
# updated 2021-01-18 to exclude faceshield related databases
# delete any backups that are older than 4 days
find /var/scheduled/backups -name "*.sql" -type f -mtime +4  -delete

/usr/bin/mysqldump -uroot  automation -R -e --triggers --single-transaction > /var/scheduled/backups/automation-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cupprint_api -R -e --triggers --single-transaction > /var/scheduled/backups/cupprint_api-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cupprint_com -R -e --triggers --single-transaction > /var/scheduled/backups/cupprint_com-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cupprint_ie -R -e --triggers --single-transaction > /var/scheduled/backups/cupprint_ie-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cupprint_ru -R -e --triggers --single-transaction > /var/scheduled/backups/cupprint_ru-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cupprint_uk -R -e --triggers --single-transaction > /var/scheduled/backups/cupprint_uk-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  cupprint_us -R -e --triggers --single-transaction > /var/scheduled/backups/cupprint_us-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  digital_metrics -R -e --triggers --single-transaction > /var/scheduled/backups/digital_metrics-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  endofshift -R -e --triggers --single-transaction > /var/scheduled/backups/endofshift-`date +20\%y\%m\%d\%H\%M`.sql
# /usr/bin/mysqldump -uroot  faceshields -R -e --triggers --single-transaction > /var/scheduled/backups/faceshields-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  maintenance -R -e --triggers --single-transaction > /var/scheduled/backups/maintenance-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  mysql -R -e --triggers --single-transaction > /var/scheduled/backups/mysql-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  pricing -R -e --triggers --single-transaction > /var/scheduled/backups/pricing-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  purchasing -R -e --triggers --single-transaction > /var/scheduled/backups/purchasing-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  warehouse -R -e --triggers --single-transaction > /var/scheduled/backups/warehouse-`date +20\%y\%m\%d\%H\%M`.sql
# 2021-04-09
/usr/bin/mysqldump -uroot  absence -R -e --triggers --single-transaction > /var/scheduled/backups/absence-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  condolences -R -e --triggers --single-transaction > /var/scheduled/backups/condolences-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  huhtamakivalues -R -e --triggers --single-transaction > /var/scheduled/backups/huhtamakivalues-`date +20\%y\%m\%d\%H\%M`.sql
/usr/bin/mysqldump -uroot  safetymetrics -R -e --triggers --single-transaction > /var/scheduled/backups/safetymetrics-`date +20\%y\%m\%d\%H\%M`.sql






# /usr/bin/mysqldump -uroot  wpfaceshields -R -e --triggers --single-transaction > /var/scheduled/backups/wpfaceshields-`date +20\%y\%m\%d\%H\%M`.sql

