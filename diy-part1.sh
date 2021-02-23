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

# KoolProxyR去广告插件
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
# 微信推送插件
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
# 京东签到插件
#pushd package/lean
#rm -rf luci-app-jd-dailybonus
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus
#popd
# adguardhome插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
# Clash插件
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
#PassWall插件
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# SmartDNS插件
git clone https://github.com/pymumu/openwrt-smartdns package/openwrt-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
#强制关机插件
git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#自动关机插件
git clone https://github.com/sirpdboy/luci-app-autopoweroff package/luci-app-autopoweroff

#关闭
CONFIG_PACKAGE_luci-app-dnscrypt-proxy=n
CONFIG_PACKAGE_noddos=no
CONFIG_PACKAGE_luci-app-openvpn=n
CONFIG_PACKAGE_luci-i18n-openvpn-zh-cn=no
CONFIG_PACKAGE_luci-app-udpxy=n
CONFIG_PACKAGE_udpxy=no
CONFIG_PACKAGE_luci-app-e2guardian=n
CONFIG_PACKAGE_e2guardian=no
CONFIG_PACKAGE_luci-app-pppoe-relay=no
CONFIG_PACKAGE_luci-i18n-pppoe-relay-zh-cn=no
CONFIG_PACKAGE_rp-pppoe-relay=no
CONFIG_PACKAGE_luci-app-uugamebooster=n
CONFIG_PACKAGE_luci-i18n-uugamebooster-zh-cn=no
CONFIG_PACKAGE_uugamebooster=no
CONFIG_PACKAGE_luci-app-familycloud=n
CONFIG_PACKAGE_luci-i18n-advanced-reboot-zh-cn=n
CONFIG_PACKAGE_luci-app-advanced-reboot=no
CONFIG_PACKAGE_noddos=n
CONFIG_PACKAGE_luci-app-noddos=no
CONFIG_PACKAGE_luci-app-kodexplorer=n
CONFIG_PACKAGE_luci-i18n-kodexplorer-zh-cn=no
CONFIG_PACKAGE_luci-app-usb-printer=n
CONFIG_PACKAGE_kmod-usb-printer=no
CONFIG_PACKAGE_luci-i18n-hd-idle-zh-cn=n
CONFIG_PACKAGE_luci-app-hd-idle=no
CONFIG_PACKAGE_hd-idle=no
CONFIG_PACKAGE_luci-i18n-qbittorrent-zh-cn=n
CONFIG_PACKAGE_luci-app-qbittorrent=no
CONFIG_PACKAGE_qBittorrent=no
CONFIG_PACKAGE_amule=n
CONFIG_PACKAGE_luci-i18n-amule-zh-cn=no
CONFIG_PACKAGE_luci-app-amule=no
CONFIG_PACKAGE_samba36-server=n
CONFIG_PACKAGE_rclone=n
CONFIG_PACKAGE_transmission-web-control=n
CONFIG_PACKAGE_mjpg-streamer=n
CONFIG_PACKAGE_luci-i18n-mjpg-streamer-zh-cn=n
CONFIG_PACKAGE_minidlna=n
CONFIG_PACKAGE_luci-i18n-minidlna-zh-cn=n
CONFIG_PACKAGE_luci-app-minidlna=n
CONFIG_PACKAGE_luci-app-cifsd=n
CONFIG_PACKAGE_luci-i18n-cifsd-zh-cn=n
CONFIG_PACKAGE_ahcpd=n
CONFIG_PACKAGE_uhttpd-mod-ubus=no
CONFIG_PACKAGE_uhttpd=no
CONFIG_PACKAGE_luci-i18n-uhttpd-zh-cn=no
CONFIG_PACKAGE_luci-app-uhttpd=no
CONFIG_PACKAGE_luci-app-cjdns=no
CONFIG_PACKAGE_cjdns=no
CONFIG_PACKAGE_luci-app-https-dns-proxy=no
CONFIG_PACKAGE_https-dns-proxy=no
CONFIG_PACKAGE_rp-pppoe-server=no
CONFIG_PACKAGE_luci-app-rp-pppoe-server=no
CONFIG_PACKAGE_luci-app-squid=no
CONFIG_PACKAGE_squid=no
CONFIG_SQUID_enable-ipv6=no
CONFIG_SQUID_enable-dlmalloc=no
CONFIG_PACKAGE_luci-i18n-nps-zh-cn=no
CONFIG_PACKAGE_luci-app-nps=no
CONFIG_PACKAGE_e2guardian=n

# argon主题
pushd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
popd
# Edge主题
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge
