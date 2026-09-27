#!/bin/bash
# ============================================================
# build-apk: 新 dex ──rebuild──> zipalign ──> 签名 ──> 归档 + 结构校验
# 用法: bash build.sh <批次> [dex路径] [--dry-run]
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
BATCH="${1:-}"; [ -n "$BATCH" ] || die "用法: build.sh <批次> [dex路径] [--dry-run]"
DEX="${2:-/tmp/${BATCH}_classes.dex}"; [ "${DEX:0:2}" = "--" ] && DEX="/tmp/${BATCH}_classes.dex"
DRY=0; for a in "$@"; do [ "$a" = "--dry-run" ] && DRY=1; done
UNSIGNED=/tmp/v119fix_unsigned.apk
ALIGNED="/tmp/${BATCH}_aligned.apk"
SIGNED="/tmp/${BATCH}_signed.apk"
FINAL="$BUILD_APK_DIR/dbg_signed77_v119_${BATCH}.apk"

need_tmp
if [ ! -f "$DEX" ]; then
  [ "$DRY" = 1 ] && warn "dex 不存在: $DEX（dry-run 继续；真跑前先 assemble.sh $BATCH）" \
    || die "dex 不存在: $DEX（先跑 assemble.sh $BATCH）"
fi
DEX_MD5=$(md5f "$DEX")
echo "== 计划"
echo "   dex      : $DEX (md5 $DEX_MD5)"
echo "   rebuild  : $REBUILD_PY → $UNSIGNED"
echo "   zipalign : $UNSIGNED → $ALIGNED"
echo "   sign     : → $SIGNED"
echo "   归档     : $FINAL"
[ "$DRY" = 1 ] && { ok "dry-run：计划如上，未执行"; exit 0; }

cp -p "$DEX" "$CLASSES_NEW" || die "拷贝 dex 到 $CLASSES_NEW 失败"
[ "$(md5f "$CLASSES_NEW")" = "$DEX_MD5" ] || die "dex 拷贝后 md5 不一致"
echo "== 1/4 rebuild"; ( cd /tmp && python3 "$REBUILD_PY" ) 2>&1 | tail -8 || die "rebuild 失败"
[ -s "$UNSIGNED" ] || die "rebuild 未产出 $UNSIGNED"
echo "== 2/4 zipalign"; zipalign -f 4 "$UNSIGNED" "$ALIGNED" || die "zipalign 失败"
echo "== 3/4 签名"; apksigner sign --ks "$KEYSTORE" --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$SIGNED" "$ALIGNED" || die "签名失败"
[ -s "$SIGNED" ] || die "签名产物缺失"
echo "== 4/4 校验"
E3N=$(apk_count "$SIGNED" 'assets/map/Earth3/*')
APK_DEX_MD5=$(apk_dex "$SIGNED" /tmp/_verify_in_apk.dex; md5f /tmp/_verify_in_apk.dex)
APK_MD5=$(md5f "$SIGNED")
echo "   Earth3 条目 : $E3N（应 = $EARTH3_COUNT）"
echo "   apk 内 dex  : $APK_DEX_MD5（应 = $DEX_MD5）"
echo "   apk 体积    : $(stat -c %s "$SIGNED") bytes"
[ "$E3N" = "$EARTH3_COUNT" ] || warn "Earth3 不完整（$E3N ≠ $EARTH3_COUNT）—— 检查 /tmp/e3 与 rebuild 脚本"
[ "$APK_DEX_MD5" = "$DEX_MD5" ] || die "apk 内 dex 与本地 dex 不一致，禁止装机"
cp -p "$SIGNED" "$FINAL" || die "归档失败"
ok "归档: $FINAL"
echo
echo "== 交接文档 §4 登记行（直接抄）"
echo "| $BATCH | <内容> | \`${DEX_MD5:0:8}…\` / \`${APK_MD5:0:8}…\` | $(date '+%m-%d %H:%M') | ⏳待验收 |"
echo "   下一步：bash install.sh $BATCH --yes"
