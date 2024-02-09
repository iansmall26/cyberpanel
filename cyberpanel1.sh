#!/bin/sh

OUTPUT=$(cat /etc/*release)
if echo $OUTPUT | grep -q "Ubuntu 20.04" ; then
apt install -y -qq wget curl
                SERVER_OS="Ubuntu"
else

                echo -e "\nUnable to detect your OS...\n"
                echo -e "\nCyberPanel is supported on Ubuntu 18.04, Ubuntu 20.04 Ubuntu 22.04, AlmaLinux 8 and CloudLinux 7.x...\n"
                exit 1
fi

rm -f cyberpanel.sh
rm -f install.tar.gz
curl --silent -o cyberpanel.sh "https://cyberpanel.sh/?dl&$SERVER_OS" 2>/dev/null
nano cyberpanel.sh
