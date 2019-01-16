server {
  listen   91.250.84.136:80;
#  listen   [2a01:488:67:1000:5bfa:5488:0:1]:80;

  server_name      clubwurst.com *.clubwurst.com club-wurst.com *.club-wurst.com club-wurst.de *.club-wurst.de;

  location / {
    root   /var/www/clubwurst.com;
  }
}
