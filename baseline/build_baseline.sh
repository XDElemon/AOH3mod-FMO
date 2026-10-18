#!/bin/bash
# ============================================================
# build_baseline.sh —— 从「手机上的原版包」重建 FMO 临时更新基线
# 输入：原版 APK（默认 /sdcard/Download/xuanxing.apk）
#      源码：仓库 src/smali（本仓）
# 输出：fmo_baseline.apk（debug 签名，可装机）
# 判据：包内 classes.dex md5 == 本地汇编产物；AirUnitlmages=113；airs_*=36
# ============================================================
set -euo pipefail
SRC_APK="${1:-/sdcard/Download/xuanxing.apk}"
SMALI_DIR="${2:-$(cd "$(dirname "$0")/.." && pwd)/src/smali}"
OUT="${3:-/tmp/base/fmo_baseline.apk}"
W=/tmp/base; mkdir -p "$W/inj"; cd "$W"

# 工具链自举（幂等）
if [ ! -s /tmp/smali_cp.txt ] || [ ! -s /tmp/jars/smali-2.5.2.jar ]; then
  bash "$(dirname "$0")/setup_toolchain.sh"
fi
CP="$(cat /tmp/smali_cp.txt)"
[ -n "$CP" ] || { echo "缺 smali classpath"; exit 1; }

echo "== 1/7 汇编 smali -> dex"
java -Xmx6g -cp "$CP" org.jf.smali.Main assemble "$SMALI_DIR" -o "$W/inj/classes.dex"
DEX_MD5=$(md5sum "$W/inj/classes.dex" | cut -d' ' -f1)

echo "== 2/7 拷壳 + 去旧签名"
cp "$SRC_APK" work.apk
zip -q -d work.apk 'META-INF/*' || true

echo "== 3/7 改 manifest：PairIP Application -> android.app.Application"
python3 "$(dirname "$0")/patch_manifest.py" --from-apk work.apk --to "$W/inj/AndroidManifest.xml"

echo "== 4/7 替换 classes.dex + manifest"
( cd "$W/inj" && zip -q -X ../work.apk classes.dex AndroidManifest.xml )

echo "== 5/7 删 PairIP 原生库"
zip -q -d work.apk 'lib/arm64-v8a/libpairipcore.so' 'lib/arm64-v8a/libstub.so' \
                  'lib/armeabi-v7a/libpairipcore.so' 'lib/armeabi-v7a/libstub.so' || true

echo "== 6/7 注入占位素材"
if [ -d /sdcard/Download/fmo_placeholder_assets ]; then
  ( cd /sdcard/Download/fmo_placeholder_assets && zip -q -r -X "$W/work.apk" assets )
fi

echo "== 7/7 对齐 + 签名"
zipalign -f 4 work.apk aligned.apk
apksigner sign --ks "${KEYSTORE:-/tmp/debug.keystore}" --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$OUT" aligned.apk

APK_MD5=$(md5sum "$OUT" | cut -d' ' -f1)
IN_DEX=$(unzip -p "$OUT" classes.dex | md5sum | cut -d' ' -f1)
E3=$(unzip -Z1 "$OUT" 'assets/map/Earth3/*' | wc -l)
AU=$(unzip -Z1 "$OUT" 'assets/game/AirUnit/AirUnitlmages/*' | wc -l)
AIR=$(unzip -Z1 "$OUT" 'assets/ui/interface/*/icons/airs_*' | wc -l)
echo "---------------------------------------------"
echo "APK      : $OUT"
echo "APK md5  : $APK_MD5  ($(stat -c%s "$OUT") B)"
echo "dex md5  : $IN_DEX  (本地 $DEX_MD5)"
echo "Earth3   : $E3   AirUnitlmages: $AU   airs_*: $AIR"
[ "$IN_DEX" = "$DEX_MD5" ] || { echo "❌ dex 不一致"; exit 1; }
echo "✅ 基线构建完成"
