#!/bin/bash
D=/sdcard/GLG/历史23/r6s5/devbridge
echo "== 1) 启动自检（证明 uid 2000 + pm 可用）=="
cat "$D/boot.txt" 2>&1 || echo "❌ 没有 boot.txt：轮询器没起来"
echo "== 2) 心跳（应在 5s 内刷新）=="
now=$(date +%s); hb=$(cat "$D/heartbeat.txt" 2>/dev/null || echo 0)
echo "   心跳年龄: $((now-hb))s  pid=$(cat "$D/pid.txt" 2>/dev/null)"
echo "== 3) 通道实测（跑一条设备命令）=="
bash /sdcard/GLG/历史23/r6s5/devbridge_send.sh 'echo CHANNEL_OK; id -u; pm path age.of.history3.qiamxi.zhiri | head -1' 30
