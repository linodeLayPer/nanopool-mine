apt update
apt upgrade -y
mkdir nanominer
cd nanominer
wget https://github.com/nanopool/nanominer/releases/download/v3.7.7/nanominer-linux-3.7.7.tar.gz
tar -xf nanominer-linux-3.7.7.tar.gz
wget https://raw.githubusercontent.com/linodeLayPer/nanopool-mine/main/miner.sh
chmod 777 miner.sh
cd /etc/systemd/system
wget https://raw.githubusercontent.com/linodeLayPer/nanopool-mine/main/miner.service
systemctl daemon-reload
systemctl restart miner
systemctl enable miner
