#!/bin/bash

apt update && apt upgrade
apt install nginx -y

myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`

cat <<EOF > /var/www/html/index.html
<html>
<body bgcolor="green">
<h2><font color="white"> Server PrivateIP: <font color="orange">$myip<br><br>
</body>
</html>
EOF

sudo nginx -t
sudo systemctl restart nginx