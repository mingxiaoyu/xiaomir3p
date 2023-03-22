#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

#rm -rf package/feeds/luci/luci-app-passwall

#svn co https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-passwall package/feeds/luci-app-passwall
