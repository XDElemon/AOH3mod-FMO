#!/system/bin/sh
# autotap2.sh <apk> —— vivo 安装框自动点按 v2：uiautomator 解析坐标，不用固定像素
APK="$1"
LOG=/data/local/tmp/at2_inst.txt
DUMP=/data/local/tmp/at2_ui.xml
rm -f "$LOG" "$DUMP"
input keyevent 224 >/dev/null 2>&1   # 唤醒
input keyevent 82  >/dev/null 2>&1   # 解锁/菜单
pm install -r -d "$APK" > "$LOG" 2>&1 &
PID=$!
i=0
while [ $i -lt 90 ]; do
  i=$((i+1))
  if grep -q 'Success' "$LOG" 2>/dev/null; then echo "RESULT=SUCCESS"; break; fi
  if grep -q 'Failure' "$LOG" 2>/dev/null; then echo "RESULT=FAIL"; break; fi
  sleep 2
  uiautomator dump "$DUMP" >/dev/null 2>&1
  [ -f "$DUMP" ] || continue
  # 找按钮：优先 resource-id 里带 button 且文本是 安装/继续/确定/更新/允许
  HIT=$(grep -o 'text="[^"]*"[^>]*bounds="\[[0-9]*,[0-9]*\]\[[0-9]*,[0-9]*\]"' "$DUMP" 2>/dev/null \
        | grep -E '安装|继续|确定|更新|允许|立即' | head -1)
  [ -z "$HIT" ] && HIT=$(grep -o 'resource-id="[^"]*button[^"]*"[^>]*bounds="\[[0-9]*,[0-9]*\]\[[0-9]*,[0-9]*\]"' "$DUMP" 2>/dev/null | tail -1)
  if [ -n "$HIT" ]; then
    B=$(echo "$HIT" | grep -o 'bounds="\[[0-9]*,[0-9]*\]\[[0-9]*,[0-9]*\]"' | head -1)
    X1=$(echo "$B" | sed -n 's/.*\[\([0-9]*\),.*/\1/p'); Y1=$(echo "$B" | sed -n 's/.*,\([0-9]*\)\]\[.*/\1/p')
    X2=$(echo "$B" | sed -n 's/.*\]\[\([0-9]*\),.*/\1/p'); Y2=$(echo "$B" | sed -n 's/.*,\([0-9]*\)\].*/\1/p')
    if [ -n "$X1" ] && [ -n "$X2" ]; then
      CX=$(( (X1 + X2) / 2 )); CY=$(( (Y1 + Y2) / 2 ))
      echo "[$i] tap $CX,$CY  <- $HIT" >> /data/local/tmp/at2_trace.txt
      input tap "$CX" "$CY"
      sleep 2
    fi
  fi
done
wait $PID 2>/dev/null
echo "---- LOG ----"; tail -3 "$LOG"
