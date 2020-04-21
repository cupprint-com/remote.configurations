server {
  listen   80;

  server_name puzzletogo.com *.puzzletogo.com puzzle2go.de *.puzzle2go.de puzzletogo.de *.puzzletogo.de puzzlecup.de *.puzzlecup.de;

  root   /var/www/puzzletogo.com;

  index index.php index.html index.htm;

  location / {
    index index.php index.html index.htm;
    try_files $uri $uri/ /index.php?$args;
  }
  location ~* \.(js|css|png|jpg|jpeg|gif|ico)$ {
    expires max;
    log_not_found off;
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

}
