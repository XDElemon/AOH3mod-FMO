#!/bin/bash
# ============================================================
# verify-eight: 八件套 + 白噪判定 + 对照组 Sig diff
# 用法: bash verify.sh <dex> [对照组.apk|对照组.dex]
# 判据: Invoke/Regs/Init/Range 全 0；Cast=50、Undef=4、MISSING=15 为白噪；
#       Sig 应 = 对照组 + 新增 invoke 数（只增不减；减少＝改坏了）。
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
DEX="${1:-}"; CTL="${2:-}"
[ -f "$DEX" ] || die "用法: verify.sh <dex> [对照组.apk|.dex]"

LOG="/tmp/verify_$(basename "$DEX" .dex)_$(date +%H%M%S).log"
echo "== 跑八件套（日志: $LOG）"
( cd "$VERIFY_DIR" && bash run_verify.sh "$DEX" aoc/kingdoms/lukasz ) 2>&1 | tee "$LOG" | tail -12

grab(){ grep -o "$1" "$LOG" | tail -1 | grep -o '[0-9]\+' | tail -1; }
SIG=$(grab 'SIG CHECKS: [0-9]\+')
MISS=$(grep -o 'SIG CHECKS: [0-9]\+ MISSING: [0-9]\+' "$LOG" | tail -1 | grep -o '[0-9]\+$')
CAST=$(grab 'TYPE-FLOW BAD: [0-9]\+')
UNDEF=$(grab 'UNDEF BAD: [0-9]\+')
# CheckInvoke/CheckRegs/CheckInit/CheckRange 的 BAD 计数（Regs 与 Range 同标签，取全部）
OTHER_BAD=$(grep -oE 'TOTAL (REG |INIT )?BAD: [0-9]+' "$LOG" | grep -o '[0-9]\+$' | awk '{s+=$1} END{print s+0}')
[ -n "$OTHER_BAD" ] || OTHER_BAD=0

echo
echo "== 结果"
echo "   Sig=$SIG  MISSING=$MISS（白噪 $NOISE_MISSING）"
echo "   Cast=$CAST（白噪 $NOISE_CAST）  Undef=$UNDEF（白噪 $NOISE_UNDEF）"
echo "   Invoke/Regs/Init/Range BAD 合计=$OTHER_BAD（必须 0）"

FAIL=0
[ "$OTHER_BAD" = 0 ] || { warn "Invoke/Regs/Init/Range 出现 BAD"; FAIL=1; }
[ "$CAST" -le "$NOISE_CAST" ] || { warn "Cast 高于白噪（$CAST > $NOISE_CAST）"; FAIL=1; }
[ "$UNDEF" -le "$NOISE_UNDEF" ] || { warn "Undef 高于白噪（$UNDEF > $NOISE_UNDEF）"; FAIL=1; }
[ "$MISS" = "$NOISE_MISSING" ] || { warn "CheckSig MISSING 偏离白名单（$MISS ≠ $NOISE_MISSING）"; FAIL=1; }

# —— “带说明的负 Δ”机制：toolchain/act/delta_allow.txt 每行 "<批次> <delta> <原因...>" ——
ALLOW_FILE="$TOOLCHAIN/act/delta_allow.txt"
BATCH_FROM_DEX=$(basename "$DEX" | sed 's/_classes\.dex$//')
EXPECT_DELTA=""; EXPECT_REASON=""
if [ -f "$ALLOW_FILE" ]; then
  EXPECT_DELTA=$(awk -v b="$BATCH_FROM_DEX" '$1==b {print $2; exit}' "$ALLOW_FILE")
  EXPECT_REASON=$(awk -v b="$BATCH_FROM_DEX" '$1==b { $1=""; $2=""; sub(/^  */,""); print; exit}' "$ALLOW_FILE")
fi
if [ -n "$CTL" ]; then
  [ -f "$CTL" ] || die "对照组不存在: $CTL"
  CTL_DEX="$CTL"
  case "$CTL" in *.apk) CTL_DEX="/tmp/ctl_$(basename "$CTL" .apk).dex"; apk_dex "$CTL" "$CTL_DEX";; esac
  [ -s "$CTL_DEX" ] || die "对照组 dex 取不到: $CTL"
  echo "== 对照组 CheckSig（$(basename "$CTL")）"
  CTL_SIG=$(cd "$VERIFY_DIR" && java -cp ".:$TOOLCHAIN/lib/dexlib2-2.5.2.jar:$TOOLCHAIN/lib/guava.jar" CheckSig "$CTL_DEX" 2>/dev/null | grep -o 'SIG CHECKS: [0-9]\+' | grep -o '[0-9]\+')
  [ -n "$CTL_SIG" ] || die "对照组 Sig 取不到"
  DELTA=$((SIG - CTL_SIG))
  echo "   对照组 Sig=$CTL_SIG → 本版 Sig=$SIG（Δ=$DELTA）"
  if [ -n "$EXPECT_DELTA" ]; then
    if [ "$DELTA" = "$EXPECT_DELTA" ]; then ok "Δ=$DELTA（已声明：$EXPECT_REASON）"
    else warn "Δ=$DELTA ≠ 已声明值 $EXPECT_DELTA（$EXPECT_REASON）"; FAIL=1; fi
  elif [ "$DELTA" -lt 0 ]; then warn "Sig 比对照组少（Δ=$DELTA）＝疑似改坏 invoke（若为有意删除，请在 toolchain/act/delta_allow.txt 声明）"; FAIL=1
  elif [ "$DELTA" -eq 0 ]; then warn "Sig 无变化：确认本批是否真的没动 invoke"
  else ok "Δ=$DELTA（＝新增 invoke，需与设计内新增数一致）"; fi
fi

echo
[ "$FAIL" = 0 ] && ok "八件套通过（无回归）" || die "八件套不通过：先解决上面 ⚠️，再谈装机"
echo "   提醒：本地八件套不覆盖 ART 级 VerifyError/IllegalAccessError/NoSuchField → 必须真机启动验证"
echo "   下一步：bash build.sh <批次>"
