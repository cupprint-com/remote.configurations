server {
  set $name "us.cupprint.com";
  set $fastcgi_sock "cupprint_develop";

#  listen [2a01:488:67:1000:5bfa:5488:0:1]:443 ssl;
  listen 80.237.214.81:443 ssl;

  ssl_certificate /etc/nginx/ssl/cupprint_chain.pem;
  
  server_name us.cupprint.com;
  root /var/www/us.cupprint.com;

  location / {
   index index.php index.html index.htm;
   try_files $uri $uri/ /index.php?$args;
   # Eingabeaufforderung für Benutzerdaten
   auth_basic "CupPrint USA";
   # nginx sagen wo die validen Benutzerdaten hinterlegt sind
   auth_basic_user_file /var/www/htpasswd;
  }

  include /etc/nginx/global/contao.conf;  
}
