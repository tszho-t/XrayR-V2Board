#!/usr/bin/env bash
cd
sed -i "/ConnetionConfig/{s/ConnetionConfig/ConnectionConfig/g}" /etc/XrayR/config.yml
sed -i "/PanelType/{s/\"V2board\"/\"NewV2board\"/g}" /etc/XrayR/config.yml

wget https://raw.githubusercontent.com/XrayR-project/XrayR-release/master/XrayR.sh
chmod +x XrayR.sh
./XrayR.sh update
rm -rf XrayR.sh
