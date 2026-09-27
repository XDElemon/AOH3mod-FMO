#!/bin/sh
# devverify.sh <期望dex_md5> <期望apk_md5> —— 设备侧核验（install.sh 的 4/5 步调用）
# 说明：本脚本需放在设备可读路径下（/sdcard/GLG/历史23/r6s5/），用 sh 运行。
PKG=age.of.history3.qiamxi.zhiri
P=$(pm path $PKG | head -1 | sed 's/package://')
echo "device apk path: $P"
echo "device dex md5: $(unzip -p "$P" classes.dex | md5sum | cut -d' ' -f1)"
echo "device apk md5: $(md5sum "$P" | cut -d' ' -f1)"
echo "expect dex md5: $1"
echo "expect apk md5: $2"
