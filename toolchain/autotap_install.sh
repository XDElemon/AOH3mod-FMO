#!/system/bin/sh
# autotap_install.sh <apk> [log]  — vivo 安装对话框自动点按 (R4c158 固化版)
# 用法: sh autotap_install.sh /data/local/tmp/r4c158.apk [/data/local/tmp/inst_xx.txt]
APK="$1"
LOG="${2:-/data/local/tmp/inst_auto.txt}"
DUMP=/data/local/tmp/ui_dump.xml
rm -f "$LOG" "$DUMP"
input keyevent 224 >/dev/null 2>&1
input keyevent 82 >/dev/null 2>&1
pm install -r -d "$APK" > "$LOG" 2>&1 &
PID=$!
i=0
while [ $i -lt 120 ]; do
  i=$((i+1))
  if grep -q 'Success' "$LOG" 2>/dev/null; then break; fi
  if grep -q 'Failure' "$LOG" 2>/dev/null; then break; fi
  sleep 2
  uiautomator dump "$DUMP" >/dev/null 2>&1
  if [ -f "$DUMP" ]; then
    if grep -q '继续' "$DUMP" 2>/dev/null || grep -q '安装' "$DUMP" 2>/dev/null || grep -q '更新' "$DUMP" 2>/dev/null; then
      input tap 540 2082
      sleep 1
      input tap 540 2228
      sleep 1
    fi
  fi
done
wait $PID
echo "---- INSTALL LOG ----"
cat "$LOG"
echo "---- END ----"
