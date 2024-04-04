#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

echo "rm"
rm -rf package/feeds/luci/luci-app-passwall  >/dev/null 2>&1
rm -rf feeds/luci/applications/luci-app-passwall  >/dev/null 2>&1

echo "clone"
mkdir package/community

pushd package/community

git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2

git clone --depth=1 https://github.com/mingxiaoyu/luci-app-phtunnel.git

popd
