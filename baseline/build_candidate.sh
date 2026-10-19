#!/bin/bash
# ============================================================
# build_candidate.sh —— 在已验证的基线包上出一版候选包
#
# 用法:
#   bash baseline/build_candidate.sh <模板apk> <新classes.dex> <素材暂存目录> <输出apk>
#
# 做四件事（全部幂等）：
#   1) 拷模板，删旧签名（META-INF）
#   2) 替换 classes.dex
#   3) 注入素材暂存目录（assets/... 树，覆盖同名）
#   4) zipalign + apksigner，然后 aapt/apksigner/dex-md5 三重自检
#
# 铁律（血泪，别改）：
#   * 不动 AndroidManifest.xml
#   * 不删 libpairipcore.so / libstub.so
#   * 换 dex 必须带 PairIP 桥类 SgVOmPGqg（在 src/smali 里）
#   * 出包前必须能 aapt dump badging 解析，否则不出包
# ============================================================
set -uo pipefail

TEMPLATE="${1:-}"; DEX="${2:-}"; STAGE="${3:-}"; OUT="${4:-}"
[ -n "$TEMPLATE" ] && [ -n "$DEX" ] && [ -n "$STAGE" ] && [ -n "$OUT" ] || {
  echo "用法: build_candidate.sh <模板apk> <新classes.dex> <素材暂存目录> <输出apk>"; exit 1; }
for f in "$TEMPLATE" "$DEX"; do [ -f "$f" ] || { echo "❌ 不存在: $f"; exit 1; }; done
[ -d "$STAGE" ] || { echo "❌ 素材目录不存在: $STAGE"; exit 1; }
[ -s /tmp/debug.keystore ] || { echo "❌ 缺 /tmp/debug.keystore"; exit 1; }

W=/tmp/bc_work; rm -rf "$W"; mkdir -p "$W"
WORK="$W/work.apk"; ALIGNED="$W/aligned.apk"

echo "== 1/5 拷模板 + 去旧签名"
cp -p "$TEMPLATE" "$WORK" || exit 1
zip -q -d "$WORK" 'META-INF/*' >/dev/null 2>&1 || true

echo "== 2/5 替换 classes.dex"
mkdir -p "$W/dex" && cp -p "$DEX" "$W/dex/classes.dex" || exit 1
( cd "$W/dex" && zip -q -X "$WORK" classes.dex ) || { echo "❌ 替换 dex 失败"; exit 1; }
LOCAL_DEX_MD5=$(md5sum "$DEX" | cut -d' ' -f1)
echo "   本地 dex md5 = $LOCAL_DEX_MD5"

echo "== 3/5 注入素材"
( cd "$STAGE" && find . -type f | sed 's|^\./||' ) > "$W/files.txt"
N=$(wc -l < "$W/files.txt")
( cd "$STAGE" && zip -q -r -X "$WORK" . -x '.*' ) || { echo "❌ 注入素材失败"; exit 1; }
echo "   暂存文件数 = $N"

echo "== 4/5 对齐 + 签名"
zipalign -f 4 "$WORK" "$ALIGNED" || { echo "❌ zipalign 失败"; exit 1; }
apksigner sign --ks /tmp/debug.keystore --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$OUT" "$ALIGNED" || {
  echo "❌ 签名失败"; exit 1; }

echo "== 5/5 自检"
FAIL=0
BADGING=$(aapt dump badging "$OUT" 2>&1 | head -1)
echo "   aapt : $BADGING"
case "$BADGING" in package:* ) ;; *) echo "   ❌ manifest 解析失败"; FAIL=1;; esac

if apksigner verify "$OUT" >/dev/null 2>&1; then echo "   apksigner : OK"; else
  echo "   ❌ 签名校验失败"; FAIL=1; fi

PKG_DEX_MD5=$(unzip -p "$OUT" classes.dex | md5sum | cut -d' ' -f1)
echo "   包内 dex md5 = $PKG_DEX_MD5"
[ "$PKG_DEX_MD5" = "$LOCAL_DEX_MD5" ] || { echo "   ❌ 包内 dex 与本地不一致"; FAIL=1; }

MISS=0
while read -r rel; do
  c=$(unzip -Z1 "$OUT" "$rel" 2>/dev/null | wc -l)
  [ "$c" = "1" ] || { echo "   ❌ 包内缺条目: $rel"; MISS=1; }
done < "$W/files.txt"
[ "$MISS" = 0 ] && echo "   素材注入 : 全部命中($N)"

AIR=$(unzip -Z1 "$OUT" 'assets/game/AirUnit/AirUnitlmages/*' 2>/dev/null | wc -l)
E3=$(unzip -Z1 "$OUT" 'assets/map/Earth3/*' 2>/dev/null | wc -l)
echo "   AirUnitlmages=$AIR  Earth3=$E3"
echo "   APK = $OUT ($(stat -c %s "$OUT") B, md5 $(md5sum "$OUT" | cut -d' ' -f1))"

rm -rf "$W"
[ "$FAIL" = 0 ] && echo "✅ 候选包就绪" || { echo "❌ 自检未通过"; exit 1; }
