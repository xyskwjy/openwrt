#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 更新miniupnp版本
rm -fr feeds/packages/net/miniupnpd
svn co https://github.com/Ljzkirito/openwrt-packages/trunk/miniupnpd feeds/packages/net/miniupnpd
rm -fr feeds/luci/applications/luci-app-upnp
svn co https://github.com/Ljzkirito/openwrt-packages/trunk/luci-app-upnp feeds/luci/applications/luci-app-upnp
