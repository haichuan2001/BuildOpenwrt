#########################################################################
# File Name: feeds.sh
# Author: ecras_y@163.com
# Description: ecras_y@163.com
# Created Time: Fri 15 Jul 2022 02:47:37 AM UTC
# Modified Time: Fri 15 Jul 2022 02:47:37 AM UTC
#########################################################################

#!/bin/bash

# passwall
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default

echo "Add Feeds Completed!!!"
