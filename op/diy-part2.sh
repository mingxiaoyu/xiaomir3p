#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

rm -rf package/feeds/luci/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall

git clone --depth=1 -b luci https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
