#########################################################################
# File Name: feeds.sh
# Author: Carbon (ecras_y@163.com)
# Description: feel free to use
# Created Time: 2022-07-23 13:04:43 UTC
# Modified Time: 2022-07-23 14:11:53 UTC
#########################################################################

#!/bin/bash


# passwall
echo "Adding xiaorouji passwall"
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default

# passwall2
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default

# ssrp
echo "Adding ShadowSocksR Plus+"
echo "src-git ssrp https://github.com/fw876/helloworld.git;master" >> feeds.conf.default

echo "Add Feeds Completed!!!"
