#########################################################################
# File Name: diy.sh
# Author: ecras_y@163.com
# Description: ecras_y@163.com
# Created Time: Fri 15 Jul 2022 02:22:58 AM UTC
# Modified Time: Fri 15 Jul 2022 02:22:58 AM UTC
#########################################################################


#!/bin/bash

# 修改默认IP为192.168.2.1
echo "Changing default LAN IP to 192.168.2.1"
[ -e package/base-files/files/bin/config_generate ] && sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate 

# 替换默认ash为bash
echo "Changing default shell from ash to bash"
[-e package/base-files/files/etc/passwd ] && sed -i 's/\/bin\/ash/\/bin\/bash/g' package/base-files/files/etc/passwd

# 替换默认banner
echo "Replacing default ssh banner with $GITHUB_WORKSPACE/data/banner"
rm -rf package/base-files/files/etc/banner
cp $GITHUB_WORKSPACE/data/banner package/base-files/files/etc/banner

# 替换默认theme
echo "Adding theme argon"
rm -rf package/lean/luci-theme-argon
mkdir -p package/lean
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon
[ -e feeds/luci/collections/luci/Makefile ] && sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

echo "DIY Completed!!!"
