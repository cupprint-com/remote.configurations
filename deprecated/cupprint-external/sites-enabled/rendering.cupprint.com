server {
  listen 80.237.214.81:80;

  server_name rendering.cupprint.com;

  location /.well-known/acme-challenge {
    root /var/www/cupprint.com;
  }

  location / {
    return 301 https://$server_name$request_uri ;
  }

  # Logging
  access_log /var/log/nginx/rendering.cupprint.access.log;
  error_log /var/log/nginx/rendering.cupprint.error.log notice;
}

server {
  set $name "rendering.cupprint.com";
  set $fastcgi_sock "webmin";

  listen 80.237.214.81:443 ssl;
  server_name rendering.cupprint.com;
  root /home/rendering/html;

  ssl_certificate /etc/nginx/ssl/cupprint_chain.pem;

  location / {
   index index.php index.html index.htm;
   try_files $uri $uri/ /index.php?$args;
  }

  include /etc/nginx/global/contao.conf;  
}
