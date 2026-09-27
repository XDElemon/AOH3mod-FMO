#!/system/bin/sh
# r5a002 启动自检：进程存活 + VerifyError/崩溃扫描
PKG=age.of.history3.qiamxi.zhiri
ACT=$PKG/aoc.kingdoms.lukasz.jakowski.AndroidLauncher
LOG=/sdcard/GLG/历史23/r5a002_boot.log
: > $LOG
logcat -c 2>/dev/null
am force-stop $PKG
sleep 2
am start -n $ACT >/dev/null 2>&1
for t in 8 16 24; do
  sleep 8
  P=$(pidof $PKG)
  echo "t+${t}s pid=${P:-none}" >> $LOG
done
echo "--- VerifyError / FATAL ---" >> $LOG
logcat -d 2>/dev/null | grep -i -E 'VerifyError|FATAL EXCEPTION|AndroidRuntime.*' | head -20 >> $LOG
echo "--- 计数 ---" >> $LOG
logcat -d 2>/dev/null | grep -ci 'VerifyError' >> $LOG
echo "--- crash buffer ---" >> $LOG
logcat -b crash -d 2>/dev/null | tail -15 >> $LOG
echo "--- END ---" >> $LOG
