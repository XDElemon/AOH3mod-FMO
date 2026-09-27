#!/system/bin/sh
PKG=age.of.history3.qiamxi.zhiri
ACT=$PKG/aoc.kingdoms.lukasz.jakowski.AndroidLauncher
LOG=/sdcard/GLG/历史23/r4c197_boot.log
: > $LOG
am force-stop $PKG
sleep 1
logcat -c 2>/dev/null
am start -n $ACT >/dev/null 2>&1
for t in 5 10 15 20 30; do
  sleep 5
  p=$(pidof $PKG)
  echo "t+${t}s pid=${p:-none}" >> $LOG
done
echo "--- logcat(main) 里与本包相关 ---" >> $LOG
logcat -d 2>/dev/null | grep -i "qiamxi\|history3\|airdbg\|AirForce\|AndroidRuntime" | tail -40 >> $LOG
echo "--- crash buffer ---" >> $LOG
logcat -b crash -d 2>/dev/null | tail -20 >> $LOG
echo "--- END ---" >> $LOG
