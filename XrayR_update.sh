#!/usr/bin/env bash

sed -i "/ConnetionConfig/{s/ConnetionConfig/ConnectionConfig/g}" /etc/XrayR/config.yml
cd
wget https://raw.githubusercontent.com/XrayR-project/XrayR-release/master/XrayR.sh
chmod +x XrayR.sh
./XrayR.sh update
rm -rf XrayR.sh
