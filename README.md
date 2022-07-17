# BuildOpenwrt
Build Openwrt with actions

## 项目介绍
使用GitHub Actions自动化编译L大的OpenWrt固件  
支持IPV6路由

## 支持X86-64和树莓派4B
由于actions的虚拟机很容易空间爆炸，
所以ext4和squash使用分开的workflow。

### 预配置本地kmod软件源workflows,带有with local kmod
1. X86-64_ext4：x86_64的ext4文件系统格式workflow
2. x86-64_squash：x86_64的squash文件系统格式workflow
3. raspberry_squash：树莓派4B的squash文件系统格式workflow
4. raspberry_ext4：树莓派4B的ext4文件系统格式workflow
5. 该系列workflow会自动保存toolchain至release
6. 重复编译时会自动拉取已经编译保存的toolchain

### 不使用本地kmod软件源workflows,带有default
1. x86-64_ext4：x86_64的ext4文件系统格式workflow
2. x86-64_squash：x86_64的squash文件系统格式workflow
3. raspberry_squash：树莓派4B的squash文件系统格式workflow
4. raspberry_ext4：树莓派4B的ext4文件系统格式workflow
5. 该系列workflow会自动保存toolchain至release
6. 重复编译时会自动拉取已经编译保存的toolchain

### 定制脚本
1. feeds.sh：修改该文件添加额外的package，不建议一次性添加kenzo的包进行编译，很多编译冲突。
2. diy.sh：修改该文件自定义系统选项

### Release固件发布
1. openwrt-x86-64-Local-Kmod：预配置本地kmod软件源的x86-64固件
2. openwrt-x86-64：不使用本地kmod软件源的x86-64固件
3. openwrt-bcm27xx-bcm2711-Local-Kmod：预配置本地kmod软件源的树莓派4B固件
4. openwrt-bcm27xx-bcm2711：不使用本地kmod软件源的树莓派4B固件
5. toolchain-image：编译工具链，方便workflow一次编译多次使用

### 文件系统固件说明
1. squash文件系统固件支持系统重置，
  机器重置至初始状态，所有已保存状态会被清除。
2. ext4文件系统不支持系统重置功能，
  但是支持使用GParted工具对已经烧写完固件的设备，
  进行分区大小进行调整。
