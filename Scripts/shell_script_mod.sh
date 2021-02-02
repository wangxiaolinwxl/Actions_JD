#!/bin/sh
#@shylocks仓库脚本
function initShylocks() {
    git clone https://github.com/lion-goose/BackUp.git /lion-goose
}

 if [ ! -d "/lion-goose/" ]; then
    echo "未检查到lion-goose仓库脚本，初始化下载相关脚本"
    initShylocks
else
    echo "更新lion-goose脚本相关文件"
    git -C /lion-goose reset --hard
    git -C /lion-goose pull --rebase
    #npm install --loglevel error
fi

##复制两个文件
cp -f /lion-goose/jd*.js /scripts/


# #使用自定义shell下载并配置超级直播间红包雨
# wget -O /scripts/jd_live_redrain.js https://raw.githubusercontent.com/Tartarus2014/Script/master/jd_live_redrain.js
# echo -e >> /scripts/docker/merged_list_file.sh
# echo "29,30,31,32,33 20-23/1 28 1 * node /scripts/jd_live_redrain.js |ts >> /scripts/logs/jd_live_redrain.log 2>&1" >> /scripts/docker/merged_list_file.sh

# #使用自定义shell下载并配置执行直播间红包雨
# wget -O /scripts/jd_live_redrain2.js https://raw.githubusercontent.com/Tartarus2014/Script/master/jd_live_redrain2.js
# echo -e >> /scripts/docker/merged_list_file.sh
# echo "59,0,1,2,3,4,5 19-21/1 * * * node /scripts/jd_live_redrain2.js |ts >> /scripts/logs/jjd_live_redrain2.log 2>&1" >> /scripts/docker/merged_list_file.sh

# #使用自定义shell下载并配置半点红包雨
# wget -O /scripts/jd_live_redrain_half.js https://raw.githubusercontent.com/Tartarus2014/Script/master/jd_live_redrain_half.js
# echo -e >> /scripts/docker/merged_list_file.sh
# echo "29,30,31,32,33 12-23/1 * * * node /scripts/jd_live_redrain_half.js |ts >> /scripts/logs/jd_live_redrain_half.log 2>&1" >> /scripts/docker/merged_list_file.sh

# #使用自定义shell下载并配置执行年货直播红包雨
# wget -O /scripts/jd_live_redrain_nian.js https://raw.githubusercontent.com/Tartarus2014/Script/master/jd_live_redrain_nian.js
# echo -e >> /scripts/docker/merged_list_file.sh
# echo "59,0,1,2,3,4,5 0,9,11,13,15,17,19,20,21,23 3,5,20-30/1 1,2 * node /scripts/jd_live_redrain_nian.js |ts >> /scripts/logs/jd_live_redrain_nian.log 2>&1" >> /scripts/docker/merged_list_file.sh

# #使用自定义shell下载并配置执行官方号直播红包雨
# wget -O /scripts/jd_live_redrain_offical.js https://raw.githubusercontent.com/Tartarus2014/Script/master/jd_live_redrain_offical.js
# echo -e >> /scripts/docker/merged_list_file.sh
# echo "59,0,1,2,3,4,5 0,9,11,13,15,17,19,20,21,22,23 * * * node /scripts/jd_live_redrain_offical.js |ts >> /scripts/logs/jd_live_redrain_offical.log 2>&1" >> /scripts/docker/merged_list_file.sh
