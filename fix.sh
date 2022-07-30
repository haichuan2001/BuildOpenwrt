#########################################################################
# File Name: fix.sh
# Author: Carbon (ecras_y@163.com)
# Description: feel free to use
# Created Time: 2022-07-30 04:57:44 UTC
# Modified Time: 2022-07-30 04:59:42 UTC
#########################################################################


#!/bin/bash

# ÐÞÕýcjdns±àÒë´íÎó
sed -i 's/-Wno-error=stringop-overflow//g' package/feeds/routing/cjdns/Makefile
sed -i 's/-Wno-error=stringop-overread//g' package/feeds/routing/cjdns/Makefile

echo "Fixing cjdns makefile error!!!"
