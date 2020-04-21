server {
  listen 80.237.214.81:80;

  server_name pl.cupprint.com;

  location /.well-known/acme-challenge {
    root /var/www/cupprint.com;
  }

  location / {
    return 301 https://$server_name$request_uri ;
  }

  # Logging
  access_log /var/log/nginx/pl.cupprint.access.log;
  error_log /var/log/nginx/pl.cupprint.error.log notice;
}

server {
  set $name "pl.cupprint.com";
  set $fastcgi_sock "cupprint_develop";

#  listen [2a01:488:67:1000:5bfa:5488:0:1]:443 ssl;
  listen 80.237.214.81:443 ssl;

  # SSL- Quelle
  ssl_certificate /etc/letsencrypt/live/cupprint.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/cupprint.com/privkey.pem;
  
  server_name us.cupprint.com;
  root /var/www/pl.cupprint.com;

  location / {
   index index.php index.html index.htm;
   try_files $uri $uri/ /index.php?$args;
   # Eingabeaufforderung für Benutzerdaten
   auth_basic "CupPrint Polen";
   # nginx sagen wo die validen Benutzerdaten hinterlegt sind
   auth_basic_user_file /var/www/htpasswd;
  }

  include /etc/nginx/global/contao.conf;  
}
