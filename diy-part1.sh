#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git destan19 https://github.com/destan19/OpenAppFilter' feeds.conf.default
sed -i '$a src-git passwalls https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall;luci' feeds.conf.default
sed -i 's#src-git routing https://github.com/coolsnowwolf/routing#src-git routing https://git.openwrt.org/feed/routing.git#g' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
