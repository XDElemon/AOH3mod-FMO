#!/bin/bash
# ============================================================
# build_with_assets_del.sh <批次> <暂存目录(含 assets/ 前缀路径)> [模板apk] [删除前缀清单]
# 在模板 apk 上：按清单删除条目（如剧本目录）→ 注入暂存资源 → 双向校验
# → zipalign → 签名 → 归档。
# 基于 build_with_assets.sh 扩展“按前缀删除”能力（B2 剧本目录清理）。
# ============================================================
set -uo pipefail
source "/sdcard/GLG/历史23/toolchain/act/common.sh"
BATCH="${1:-}"; STAGE="${2:-}"; TEMPLATE="${3:-$BUILD_APK_DIR/dbg_signed77_v119_r6t007.apk}"; DELS="${4:-}"
[ -n "$BATCH" ] || die "用法: build_with_assets_del.sh <批次> <暂存目录> [模板apk] [删除前缀清单]"
[ -d "$STAGE" ] || die "暂存目录不存在: $STAGE"
[ -f "$TEMPLATE" ] || die "模板 apk 不存在: $TEMPLATE"
[ -f "$KEYSTORE" ] || die "缺 KEYSTORE: $KEYSTORE"
WORK="/tmp/${BATCH}_work.apk"; ALIGNED="/tmp/${BATCH}_aligned.apk"; SIGNED="/tmp/${BATCH}_signed.apk"
FINAL="$BUILD_APK_DIR/dbg_signed77_v119_${BATCH}.apk"
T0=$(date +%s)
echo "== 模板: $TEMPLATE"
cp -p "$TEMPLATE" "$WORK" || die "拷模板失败"
zip -q -d "$WORK" 'META-INF/*' >/dev/null 2>&1 || true
T1=$(date +%s); echo "   [cp+去签名 $((T1-T0))s]"

# 1) 删除清单（前缀，位于 assets/map/Earth3/scenarios/ 下）
if [ -n "$DELS" ] && [ -f "$DELS" ]; then
  pats=(); nd=0
  while IFS= read -r pre; do
    [ -n "$pre" ] || continue
    pats+=("assets/map/Earth3/scenarios/${pre}/*")
    pats+=("assets/map/Earth3/scenarios/${pre}/")
    nd=$((nd+1))
  done < "$DELS"
  zip -q -d "$WORK" "${pats[@]}" >/dev/null 2>&1 || true
  echo "   删除清单处理: $nd 项（单次批量）"
fi
T2=$(date +%s)

# 2) 注入暂存资源
( cd "$STAGE" && zip -q -r -X "$WORK" . -x '.*' ) || die "注入资源失败"
T3=$(date +%s); echo "   [删除+注入 $((T3-T1))s]"

# 3) 校验：暂存文件 1:1
miss=0
while read -r f; do
  rel="${f#./}"
  c=$(unzip -Z1 "$WORK" "$rel" 2>/dev/null | wc -l)
  [ "$c" = "1" ] || { warn "包内缺失/重名: $rel ($c)"; miss=1; }
done < <(cd "$STAGE" && find . -type f)
[ "$miss" = 0 ] || die "资源注入校验不通过"
ok "资源注入校验通过（$(cd "$STAGE" && find . -type f | wc -l) 文件）"

# 4) 校验：删除零残留 + scenarios 顶层目录数 = 6
if [ -n "$DELS" ] && [ -f "$DELS" ]; then
  bad=0
  while IFS= read -r pre; do
    [ -n "$pre" ] || continue
    c=$(unzip -Z1 "$WORK" "assets/map/Earth3/scenarios/${pre}/*" 2>/dev/null | wc -l)
    [ "$c" = "0" ] || { warn "残留: $pre ($c)"; bad=1; }
  done < "$DELS"
  [ "$bad" = 0 ] || die "删除校验不通过"
  ok "删除校验通过（零残留）"
fi
scn=$(unzip -Z1 "$WORK" 'assets/map/Earth3/scenarios/*' 2>/dev/null | cut -d/ -f5 | sort -u | grep -v '^$' | wc -l)
echo "   包内 scenarios 顶层目录数: $scn (应=6)"
[ "$scn" = "6" ] || die "scenarios 目录数异常"

# 5) 对齐 + 签名 + 校验 + 归档
zipalign -f 4 "$WORK" "$ALIGNED" || die "zipalign 失败"
apksigner sign --ks "$KEYSTORE" --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$SIGNED" "$ALIGNED" || die "签名失败"
apksigner verify "$SIGNED" >/dev/null 2>&1 || die "签名校验失败"
cp -p "$SIGNED" "$FINAL" || die "归档失败"
echo "✅ 归档: $FINAL（$(stat -c %s "$FINAL") B，总用时 $(( $(date +%s)-T0 ))s）"
echo "   签名 md5: $(md5f "$FINAL")"