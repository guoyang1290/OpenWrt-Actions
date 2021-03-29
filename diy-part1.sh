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
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git hwfuture https://github.com/hongweifuture/openwrt-packages' feeds.conf.default
sed -i '$a src-git pwdep https://github.com/hongweifuture/pwdep.git' feeds.conf.default

#移除不用软件包    
rm -rf package/lean/luci-app-dockerman
rm -rf package/lean/luci-theme-argon
rm -rf feeds/packages/net/https-dns-proxy

#添加额外软件包
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy package/https-dns-proxy
svn co https://github.com/siropboy/mypackages/trunk/smartdns package/smartdns
svn co https://github.com/siropboy/mypackages/trunk/luci-app-smartdns package/luci-app-smartdns
svn co https://github.com/siropboy/mypackages/trunk/luci-app-koolproxyR package/luci-app-koolproxyR
svn co https://github.com/openwrt/luci/trunk/applications/luci-app-sqm package/luci-app-sqm
#svn co https://github.com/siropboy/mypackages/trunk/luci-app-autopoweroff package/luci-app-autopoweroff
svn co https://github.com/siropboy/mypackages/trunk/luci-app-advanced package/luci-app-advanced
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-timewol package/luci-app-control-timewol
svn co https://github.com/siropboy/mypackages/trunk/adguardhome package/adguardhome
git clone https://github.com/sirpdboy/luci-app-autopoweroff package/luci-app-autopoweroff
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/garypang13/luci-app-eqos package/luci-app-eqos
git clone https://github.com/garypang13/luci-app-baidupcs-web package/luci-app-baidupcs-web
git clone https://github.com/brvphoenix/luci-app-wrtbwmon package/luci-app-wrtbwmon
git clone https://github.com/brvphoenix/wrtbwmon package/wrtbwmon
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/fw876/helloworld.git package/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall package/passwall
# Add Rclone-OpenWrt
git clone https://github.com/ElonH/Rclone-OpenWrt package/Rclone-OpenWrt
# Add luci-theme-atmaterial-ci
git clone https://github.com/esirplayground/luci-theme-atmaterial-ColorIcon package/luci-theme-atmaterial-ColorIcon
# Add luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
