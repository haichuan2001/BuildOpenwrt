# BuildOpenwrt
Build Openwrt with actions

## 项目介绍
使用GitHub Actions自动化编译L大的OpenWrt固件  
支持IPv6路由功能

## 支持X86-64和树莓派4B
由于actions的虚拟机很容易空间爆炸，  
可以考虑将ext4和squash的workflow分开进行。

### 预配置本地kmod软件源workflows文件名带有kmod结尾
1. X86-64：x86_64系统格式workflows
4. raspberry：树莓派4B系统格式workflows
5. 该系列workflows会自动保存toolchain至release
6. 重复编译时会自动拉取已经编译保存的toolchain

### 不使用本地kmod软件源workflows文件名带有default结尾
1. x86-64：x86_64系统格式workflows
3. raspberry：树莓派4B系统格式workflow
5. 该系列workflows会自动保存toolchain至release
6. 重复编译时会自动拉取已经编译保存的toolchain

### 定制脚本
1. feeds.sh：修改该文件添加额外的package，  
不建议一次性添加kenzo的包进行编译，很多编译冲突。
2. diy.sh：修改该文件自定义固件系统选项

### Release固件发布
1. openwrt-x86-64-Local-Kmod：预配置本地kmod软件源的x86-64固件
2. openwrt-x86-64：不使用本地kmod软件源的x86-64固件
3. openwrt-bcm27xx-bcm2711-Local-Kmod：预配置本地kmod软件源的树莓派4B固件
4. openwrt-bcm27xx-bcm2711：不使用本地kmod软件源的树莓派4B固件
5. toolchain-image：编译工具链，方便workflow一次编译多次使用

### 文件系统固件说明
1. squash文件系统固件支持系统重置，  
  机器重置至初始状态，  
  所有已保存状态会被清除。
2. ext4文件系统不支持系统重置功能，  
  支持使用工具GParted对已经烧写完固件的设备，  
  进行分区大小调整。

### passwall 设置说明
1. 这个版本的passwall的适应性没以前的强了，作者看起来没修复的意思
2. 网络->Lan->基本设置->静态地址->使用自定义的 DNS 服务器：  
请填写路由器地址或者最好是当地ISP服务商提供的IPv4 DNS地址  
3. IPv6设置->通告的 DNS 服务器:  
请填写当地ISP服务商提供的IPv6 DNS地址 
4. 当地ISP服务商提供的DNS地址查看方法：  
PPoE拨号方式：主菜单进入状态->概览，可以查看  
DHCP方式：请查看上级路由的信息
