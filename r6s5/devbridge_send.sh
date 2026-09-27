#!/bin/bash
# ============================================================
# proot 侧驱动脚本：把命令丢给设备面轮询器并等结果
# 用法: bash devbridge_send.sh '设备侧命令' [超时秒,默认90]
# ============================================================
D=/sdcard/GLG/历史23/r6s5/devbridge
T=${2:-90}
if [ ! -f "$D/heartbeat.txt" ]; then
  echo "❌ 轮询器未运行：先在 Operit 设备面执行 nohup sh /sdcard/GLG/历史23/r6s5/devbridge_poll.sh >/dev/null 2>&1 &" >&2
  exit 2
fi
# 心跳读取（FUSE 下偶发读到空 → 重试 + 回退到 mtime）
hb_now(){
  local i v
  for i in 1 2 3; do
    v=$(cat "$D/heartbeat.txt" 2>/dev/null | tr -d '[:space:]')
    case "$v" in ''|*[!0-9]*) v=$(stat -c %Y "$D/heartbeat.txt" 2>/dev/null);; esac
    case "$v" in ''|*[!0-9]*) v=0;; esac
    if [ "${v:-0}" -gt 0 ] 2>/dev/null; then echo "$v"; return; fi
    sleep 1
  done
  echo 0
}
now=$(date +%s); hb=$(hb_now)
if [ $((now - hb)) -gt 30 ] && [ "${FORCE:-0}" != 1 ]; then
  echo "❌ 轮询器没在跑（心跳停了 $((now - hb))s，pid=$(cat "$D/pid.txt" 2>/dev/null)）" >&2
  echo "   请在 Operit 设备面执行：nohup sh /sdcard/GLG/历史23/r6s5/devbridge_poll.sh >/dev/null 2>&1 &" >&2
  echo "   （确要盲发请用 FORCE=1）" >&2
  exit 2
fi
rm -f "$D/out.ready"
printf '%s\n' "$1" > "$D/cmd.new" && mv "$D/cmd.new" "$D/cmd.sh" || { echo "写入 cmd.sh 失败" >&2; exit 3; }
i=0
while [ $i -lt "$T" ]; do
  if [ -f "$D/out.ready" ]; then cat "$D/out.ready"; rm -f "$D/out.ready"; exit 0; fi
  sleep 1; i=$((i + 1))
done
echo "❌ TIMEOUT(${T}s)" >&2; exit 1
