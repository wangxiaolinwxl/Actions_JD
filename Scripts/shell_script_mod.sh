#!/bin/sh


#工业爱消除
wget -O /scripts/jd_gyec.js https://raw.githubusercontent.com/shylocks/Loon/main/jd_gyec.js
echo -e >> /scripts/docker/merged_list_file.sh
echo "30 * * * * node /scripts/jd_gyec.js |ts >> /scripts/logs/jd_gyec.log 2>&1" >> /scripts/docker/merged_list_file.sh
