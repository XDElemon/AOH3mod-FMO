#!/system/bin/sh
PKG=age.of.history3.qiamxi.zhiri
ACT=$PKG/aoc.kingdoms.lukasz.jakowski.AndroidLauncher
OUT=/sdcard/GLG/历史23/r4c197_full.log
logcat -c 2>/dev/null
logcat -b all -v time > $OUT 2>/dev/null &
LP=$!
sleep 1
am start -n $ACT >/dev/null 2>&1
sleep 18
kill $LP 2>/dev/null
echo "captured bytes: $(stat -c%s $OUT 2>/dev/null)" >> $OUT