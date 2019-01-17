server {
  listen 80.237.214.81:80;

  server_name ch.cupprint.com;

  location /.well-known/acme-challenge {
    root /var/www/cupprint.com;
  }

  location / {
    return 301 https://$server_name$request_uri ;
  }

  # Logging
  access_log /var/log/nginx/ch.cupprint.access.log;
  error_log /var/log/nginx/ch.cupprint.error.log notice;
}

server {
  set $name "ch.cupprint.com";
  set $fastcgi_sock "cupprint_develop";

  listen 80.237.214.81:443 ssl;
  server_name ch.cupprint.com;
  root /var/www/ch.cupprint.com;

  # SSL- Quelle
  ssl_certificate /etc/letsencrypt/live/cupprint.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/cupprint.com/privkey.pem;

  location / {
   index index.php index.html index.htm;
   try_files $uri $uri/ /index.php?$args;
   # Eingabeaufforderung für Benutzerdaten
   auth_basic "CupPrint Schweiz";
   # nginx sagen wo die validen Benutzerdaten hinterlegt sind
   auth_basic_user_file /var/www/htpasswd;
  }

  include /etc/nginx/global/contao.conf;  
}
