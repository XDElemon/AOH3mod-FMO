#!/bin/bash
# ============================================================
# capture-sample: 增量抓样（读成功后才更新基线）
# 用法: bash capture.sh <样本名>
# 产出: r6s5/<样本名>.txt ；基线 r6s5/live_baseline.txt 更新为设备实测 size
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
NAME="${1:-sample_$(date +%m%d_%H%M)}"
[ "${NAME:0:2}" = "--" ] && NAME="sample_$(date +%m%d_%H%M)"
HANDOFF=0; for a in "$@"; do [ "$a" = "--handoff" ] && HANDOFF=1; done
OUTFILE="$R6S5/${NAME}.txt"
[ -f "$BASELINE_FILE" ] || die "基线缺失: $BASELINE_FILE"
B=$(cat "$BASELINE_FILE" | tr -d '[:space:]')
case "$B" in ''|*[!0-9]*) die "基线内容非法: $B";; esac
echo "== 增量抓样 → $OUTFILE（基线 $B）"
if [ "$HANDOFF" = 1 ]; then
  cat <<EOF
# ===== 交给 Operit shell 面执行（Shizuku / Root）· 样本 $NAME =====
F='$PROBE_FILE'
B=\$(cat '$BASELINE_FILE')
SZ=\$(stat -c %s "\$F"); echo "SZ=\$SZ"
if [ "\$SZ" -lt "\$B" ]; then
  echo "ROTATED=1（设备日志被截断/轮转：SZ=\$SZ < 基线=\$B）"
  echo "⇒ 请重置基线后再抓：echo \$SZ > '$BASELINE_FILE'"
  exit 0
fi
tail -c +\$((B+1)) "\$F" > '$OUTFILE'
echo "WROTE=\$(stat -c %s '$OUTFILE')"
# 注意：这里**不动基线**。把 SZ/WROTE 两行贴回 DSH，
# 由 DSH 校验「落盘字节数 == 增量」后再更新 live_baseline.txt（防样本缺失仍推进基线）。
# ===== 粘贴结束 =====
EOF
  exit 0
fi

R=$(dev_run "B=$B; F='$PROBE_FILE'; SZ=\$(stat -c %s \"\$F\"); echo \"SZ=\$SZ\"; if [ \"\$SZ\" -gt \"\$B\" ]; then tail -c +\$((B+1)) \"\$F\" > '$OUTFILE'; echo \"WROTE=\$(stat -c %s '$OUTFILE')\"; else echo 'WROTE=0'; fi" 120)
echo "$R"
SZ=$(echo "$R" | grep -o 'SZ=[0-9]\+' | grep -o '[0-9]\+' | tail -1)
WROTE=$(echo "$R" | grep -o 'WROTE=[0-9]\+' | grep -o '[0-9]\+' | tail -1)
[ -n "$SZ" ] || die "拿不到设备侧文件大小（轮询器没起来？）"
# R5c014: 护栏 —— 设备日志被截断/轮转时，旧基线（字节偏移）失效
if [ "$SZ" -lt "$B" ]; then
  echo "$SZ" > "$BASELINE_FILE"
  warn "设备日志疑似被截断/轮转（SZ=$SZ < 基线=$B）⇒ 基线已自动重置为 $SZ；本轮不产出样本"
  exit 0
fi
DELTA=$((SZ - B))
echo "   设备 size=$SZ 基线=$B 增量=$DELTA 落盘=$WROTE"
if [ "$DELTA" -le 0 ]; then ok "无新增量，基线不动"; exit 0; fi
[ "$WROTE" = "$DELTA" ] || die "落盘字节数（$WROTE）≠ 增量（$DELTA），样本可能不完整，基线不更新"
[ -s "$OUTFILE" ] || die "样本为空，基线不更新"
echo "$SZ" > "$BASELINE_FILE"
ok "样本: $OUTFILE（$WROTE bytes）｜基线已更新为 $SZ"

echo "== 探针摘要"
for k in nAH nSW nRH nAS FGR_FULL 'ul=' 'esc:' nRT; do
  n=$(grep -o "$k" "$OUTFILE" 2>/dev/null | wc -l)
  printf "   %-9s %s\n" "$k" "$n"
done
echo "   前 5 行："; head -5 "$OUTFILE" | sed 's/^/     /'
echo "   下一步：解析探针对账 → 通过则登记验收（交接文档 §6 + 专档）"
