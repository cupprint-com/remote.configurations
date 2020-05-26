server {
       listen   91.250.84.136:80;
#       listen   [2a01:488:67:1000:5bfa:5488:0:1]:80;

       server_name      pmc.if-bi.com;

       root   /var/www/pmc.if-bi.com;

       index index.php index.html index.htm;
       client_max_body_size    50M;
       sendfile on;
       error_page 404 /404.html;

       location /product {
                rewrite ^(.*)$ https://$host/de/produktseite$1 permanent;
       }

       location / {
                index index.php index.html index.htm;
                try_files $uri $uri/ /index.php?$args;
       }
       location = /favicon.ico {
                log_not_found off;
                access_log off;
       }
       location = /robots.txt {
                allow all;
                log_not_found off;
                access_log off;
       }
       # Make sure files with the following extensions do not get loaded by nginx because nginx would display the source code, and these files can contain PASSWORDS!
       location ~* \.(tpl|html5|xhtml)$ {
                deny all;
       }
       location ~* (/system/logs|/system/bin|/system/config) {
          deny all;
       }  
       # Deny all attempts to access hidden files such as .htaccess, .htpasswd, .DS_Store (Mac).
       location ~ /\. {
                deny all;
                access_log off;
                log_not_found off;
       }
       location ~*  \.(jpg|jpeg|png|gif|css|js|ico)$ {
                expires max;
                log_not_found off;
       }
       location ~ \.php$ {
                try_files $uri =404;
                include /etc/nginx/fastcgi_params;

                fastcgi_split_path_info ^(.+\.php)(/.+)$;
                # NOTE: You should have "cgi.fix_pathinfo = 0;" in php.ini

                # With php5-cgi alone:
                #fastcgi_pass 127.0.0.1:9000;
                # With php5-fpm:
                fastcgi_pass unix:/var/run/php5-fpm.sock;
                fastcgi_index index.php;
                include fastcgi_params;

                fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
       }
	location ^~ /contao/update.phar.php {
  		fastcgi_split_path_info ^((?U).+\.php)(/.+)?$;

  		include /etc/nginx/fastcgi_params;

  		fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
  		#fastcgi_param PATH_INFO $fastcgi_path_info;

  		if (!-e $document_root$fastcgi_script_name) {
       			return 404;
  		}

  		fastcgi_pass unix:/var/run/php5-fpm.sock;
	}
}