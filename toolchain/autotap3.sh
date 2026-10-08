#!/system/bin/sh
# autotap3.sh <apk> —— vivo 安装框自动点按 v3
# 关键教训：vivo 的安装框需要【先勾“已了解风险”复选框，再点“继续安装”】；
# 而且 button1 的文字在 content-desc（text 为空），所以不能用 text 匹配。
APK="$1"
LOG=/data/local/tmp/at3_inst.txt
rm -f "$LOG"
input keyevent 224 >/dev/null 2>&1
input keyevent 82  >/dev/null 2>&1
pm install -r -d "$APK" > "$LOG" 2>&1 &
PID=$!
i=0
while [ $i -lt 90 ]; do
  i=$((i+1))
  if grep -q 'Success' "$LOG" 2>/dev/null; then echo "RESULT=SUCCESS i=$i"; break; fi
  if grep -q 'Failure' "$LOG" 2>/dev/null; then echo "RESULT=FAIL i=$i"; break; fi
  sleep 2
  input tap 540 2082 >/dev/null 2>&1   # 已了解应用的风险检测结果（复选框）
  sleep 1
  input tap 540 2247 >/dev/null 2>&1   # 继续安装（button1）
  sleep 1
done
wait $PID 2>/dev/null
echo '---- INSTALL LOG ----'
tail -3 "$LOG"
