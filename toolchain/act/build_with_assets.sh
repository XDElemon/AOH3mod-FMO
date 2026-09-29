#!/bin/bash
# ============================================================
# build_with_assets.sh <批次> <暂存目录> [模板apk] [可选新dex]
# 在模板 apk 上：覆盖/新增 <暂存目录> 内的 assets 条目（可选同时替换 classes.dex），
# 然后去签名 → zipalign → 重签名 → 归档。
# 用途：纯资源更新（加载图/文案），不必重压整包。
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
BATCH="${1:-}"; STAGE="${2:-}"; TEMPLATE="${3:-$(ls -t "$BUILD_APK_DIR"/*.apk 2>/dev/null | head -1)}"; DEX="${4:-}"
[ -n "$BATCH" ] || die "用法: build_with_assets.sh <批次> <暂存目录> [模板apk] [新dex]"
[ -d "$STAGE" ] || die "暂存目录不存在: $STAGE"
[ -f "$TEMPLATE" ] || die "模板 apk 不存在: $TEMPLATE"
command -v zip >/dev/null || die "缺 zip"
WORK="/tmp/${BATCH}_work.apk"; ALIGNED="/tmp/${BATCH}_aligned.apk"; SIGNED="/tmp/${BATCH}_signed.apk"
FINAL="$BUILD_APK_DIR/dbg_signed77_v119_${BATCH}.apk"

echo "== 模板: $TEMPLATE"
T0=$(date +%s)
cp -p "$TEMPLATE" "$WORK" || die "拷模板失败"
zip -q -d "$WORK" 'META-INF/*' >/dev/null 2>&1 || true
T1=$(date +%s); echo "   [cp+去签名 ${T1}-${T0} = $((T1-T0))s]"

if [ -n "$DEX" ]; then
  [ -f "$DEX" ] || die "dex 不存在: $DEX"
  mkdir -p /tmp/fastdex && cp -p "$DEX" /tmp/fastdex/classes.dex
  ( cd /tmp/fastdex && zip -q -X "$WORK" classes.dex ) || die "替换 classes.dex 失败"
  echo "   已替换 classes.dex（md5 $(md5f "$DEX")）"
fi

( cd "$STAGE" && zip -q -r -X "$WORK" . -x '.*' ) || die "注入资源失败"
T2=$(date +%s); echo "   [注入资源 $((T2-T1))s]"

# 校验：包内条目与暂存一一对应
miss=0
while read -r f; do
  rel="${f#./}"
  apk_count_one=$(unzip -Z1 "$WORK" "$rel" 2>/dev/null | wc -l)
  [ "$apk_count_one" = "1" ] || { warn "包内缺失/重名: $rel ($apk_count_one)"; miss=1; }
done < <(cd "$STAGE" && find . -type f)
[ "$miss" = 0 ] || die "资源注入校验不通过"
ok "资源注入校验通过"

zipalign -f 4 "$WORK" "$ALIGNED" || die "zipalign 失败"
apksigner sign --ks "$KEYSTORE" --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$SIGNED" "$ALIGNED" || die "签名失败"
cp -p "$SIGNED" "$FINAL" || die "归档失败"
echo "✅ 归档: $FINAL（$(stat -c %s "$FINAL") B，总用时 $(( $(date +%s)-T0 ))s）"
echo "   签名 md5: $(md5f "$FINAL")"
echo "   dex md5(包内): $(apk_dex "$FINAL" /tmp/_postcheck.dex && md5f /tmp/_postcheck.dex)"