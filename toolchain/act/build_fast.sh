#!/bin/bash
# ============================================================
# build_fast.sh <批次> [模板apk] —— 只换 classes.dex 的快打包
# 原理：模板 apk 已含全部资源（含 Earth3 地图），用 zip 原样搬运其他条目，
#       只替换 classes.dex，再 zipalign + 签名。省掉整包重压（约 1.5 分钟 → 约 20 秒）
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
BATCH="${1:-}"; [ -n "$BATCH" ] || die "用法: build_fast.sh <批次> [模板apk]"
DEX="${2:-/tmp/${BATCH}_classes.dex}"; [ "${DEX:0:2}" = "--" ] && DEX="/tmp/${BATCH}_classes.dex"
TEMPLATE="${3:-$(ls -t "$BUILD_APK_DIR"/*.apk 2>/dev/null | head -1)}"
[ -f "$DEX" ] || die "dex 不存在: $DEX（先 assemble.sh $BATCH）"
[ -f "$TEMPLATE" ] || die "模板 apk 不存在: $TEMPLATE"
command -v zip >/dev/null || die "缺 zip（apt-get install -y zip）"

WORK="/tmp/${BATCH}_work.apk"; ALIGNED="/tmp/${BATCH}_aligned.apk"; SIGNED="/tmp/${BATCH}_signed.apk"
FINAL="$BUILD_APK_DIR/dbg_signed77_v119_${BATCH}.apk"
DEX_MD5=$(md5f "$DEX")
echo "== 模板: $TEMPLATE"
echo "== 新 dex: $DEX（md5 $DEX_MD5）"
T0=$(date +%s)

cp -p "$TEMPLATE" "$WORK" || die "拷模板失败"
zip -q -d "$WORK" 'META-INF/*' >/dev/null 2>&1 || true      # 去旧签名
mkdir -p /tmp/fastdex && cp -p "$DEX" /tmp/fastdex/classes.dex
( cd /tmp/fastdex && zip -q -X "$WORK" classes.dex ) || die "替换 classes.dex 失败"
T1=$(date +%s); echo "   [换 dex 用时 $((T1-T0))s]"

apk_dex "$WORK" /tmp/_fast_in_apk.dex
IN_MD5=$(md5f /tmp/_fast_in_apk.dex)
E3N=$(apk_count "$WORK" 'assets/map/Earth3/*')
echo "   apk 内 dex: $IN_MD5   Earth3: $E3N"
[ "$IN_MD5" = "$DEX_MD5" ] || die "替换后 dex 不一致"
[ "$E3N" = "$EARTH3_COUNT" ] || die "Earth3 不完整（$E3N）"

zipalign -f 4 "$WORK" "$ALIGNED" || die "zipalign 失败"
apksigner sign --ks "$KEYSTORE" --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$SIGNED" "$ALIGNED" || die "签名失败"
cp -p "$SIGNED" "$FINAL" || die "归档失败"
T2=$(date +%s)
APK_MD5=$(md5f "$FINAL")
ok "归档: $FINAL（总用时 $((T2-T0))s，其中换dex $((T1-T0))s）"
echo "   批次登记行:"
echo "   | $BATCH | <内容> | \`${DEX_MD5:0:8}…\` / \`${APK_MD5:0:8}…\` | $(date '+%m-%d %H:%M') | ⏳待验收 |"
