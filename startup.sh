#!/bin/bash
cd ~

if [ ! -f ~/softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz ] ; then
    wget  https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.39-9772-beta/softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz
    tar zxvf softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz
    cd vpnserver && make
    chmod 600 * && chmod 700 vpncmd && chmod 700 vpnserver
fi


# cd ../ && mv vpnserver /usr/local
# cd /usr/local/vpnserver/

cd vpnserver
./vpnserver start
bash