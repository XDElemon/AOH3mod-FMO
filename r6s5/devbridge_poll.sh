#!/system/bin/sh
# ============================================================
# 设备面轮询器 v2（Operit / Shizuku shell 启动，以 shell(uid 2000) 运行）
# 启动：nohup sh /sdcard/GLG/历史23/r6s5/devbridge_poll.sh >/dev/null 2>&1 &
# 作用：① 启动自检写 boot.txt（证明身份/pm 可用/探针可读）
#       ② 常驻轮询 cmd.sh → 执行 → 结果写 out.ready
# ============================================================
D=/sdcard/GLG/历史23/r6s5/devbridge
PKG=age.of.history3.qiamxi.zhiri
PROBE=/sdcard/Android/data/$PKG/files/airdbg_key.txt
mkdir -p "$D"

# ---------- 启动自检（一次性）----------
{
  echo "BOOT=$(date '+%Y-%m-%d %H:%M:%S')"
  echo "PID=$$"
  echo "ID=$(id 2>/dev/null)"
  echo "UID=$(id -u 2>/dev/null)"
  echo "PM=$(command -v pm 2>/dev/null || echo NONE)"
  echo "PMPATH=$(pm path $PKG 2>/dev/null | head -1)"
  echo "PROBE_SIZE=$(stat -c %s "$PROBE" 2>/dev/null || echo ERR)"
  if echo t > /data/local/tmp/.dbg_write 2>/dev/null; then
    echo "TMP_WRITE=ok"; rm -f /data/local/tmp/.dbg_write
  else
    echo "TMP_WRITE=fail"
  fi
  echo "SELF_TEST_DONE=1"
} > "$D/boot.txt" 2>&1

# ---------- 常驻轮询 ----------
while true; do
  if [ -f "$D/cmd.sh" ]; then
    if mv "$D/cmd.sh" "$D/cmd.run" 2>/dev/null; then
      sh "$D/cmd.run" > "$D/out.txt" 2>&1
      echo "EXIT=$?" >> "$D/out.txt"
      mv "$D/out.txt" "$D/out.ready" 2>/dev/null
      rm -f "$D/cmd.run"
    fi
  fi
  echo $$ > "$D/pid.txt" 2>/dev/null
  date +%s > "$D/heartbeat.txt" 2>/dev/null
  sleep 2
done
