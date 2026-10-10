#!/bin/bash
# ============================================================
# 空战重做 · 公共常量与工具函数（唯一参数来源，改路径只改这里）
# 用法: source "/sdcard/GLG/历史23/toolchain/act/common.sh"
# ============================================================
WS='/storage/emulated/0/GLG/历史23'
TOOLCHAIN="$WS/toolchain"
VERIFY_DIR="$TOOLCHAIN/verify_dex"
BUILD_APK_DIR="$WS/build_apk"
R6S5="$WS/r6s5"
BASELINE_FILE="$R6S5/live_baseline.txt"
DEVBRIDGE="$R6S5/devbridge"
DEVBRIDGE_SEND="$R6S5/devbridge_send.sh"

# /tmp 工作面
SMALI_TREE='/tmp/w3a/smali'
E3_SRC='/tmp/e3'
BASE_APK='/tmp/base_v119.apk'
REBUILD_PY='/tmp/rebuild_v119fix.py'
KEYSTORE='/tmp/debug.keystore'
CLASSES_NEW='/tmp/classes_new.dex'

# classpath
SMALI_CP="/tmp:/tmp/smali-2.5.2.jar:/usr/share/java/smali-util-2.5.2.git2771eae.jar:/tmp/dexlib2-2.5.2.jar:/tmp/antlr-runtime-3.5.2.jar:/tmp/guava.jar"
BAKSMALI_CP="/tmp/baksmali-2.5.2.jar:/tmp/dexlib2-2.5.2.jar:/tmp/guava.jar:/usr/share/java/smali-util-2.5.2.git2771eae.jar"
DEXLIB_CP="$VERIFY_DIR:$TOOLCHAIN/lib/dexlib2-2.5.2.jar:$TOOLCHAIN/lib/guava.jar"

# 设备
PKG='age.of.history3.qiamxi.zhiri'
PROBE_FILE='/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt'
AIRDBG_DIR='/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files'
DEV_TMP_DIR='/data/local/tmp'

# 白噪基线（R4c176b 实测）
NOISE_CAST=50
NOISE_UNDEF=10   # r6d185 重校准：对照组 r6d180 实测 10（既有噪声：ProvinceDrawArmy.getKeyCiv/getKeyOrd、RadarBitmap.drawRadarEllipse 等）
NOISE_MISSING=14   # r5b005 起由 15 降为 14：我们补上了 AirForceManager.buildAirport(II)，
                   # 消掉一条悬空引用；余下 14 条全是 Thread.start/interrupt/join、gdx initialize 之类
                   # 「继承自 dex 外父类」的假阳性。
SIG_R4C176B=152403
EARTH3_COUNT=17679   # r6d259: baseline updated after B2 (18510 - 831 deleted scenario entries)

die(){ echo "❌ $*" >&2; exit 1; }
ok(){ echo "✅ $*"; }
warn(){ echo "⚠️  $*" >&2; }
md5f(){ md5sum "$1" 2>/dev/null | cut -d' ' -f1; }

# 前置检查：/tmp 关键件是否齐全
need_tmp(){
  local missing=0 f
  for f in "$SMALI_TREE" "$E3_SRC" "$BASE_APK" "$REBUILD_PY" "$KEYSTORE" \
           /tmp/smali-2.5.2.jar /tmp/baksmali-2.5.2.jar /tmp/dexlib2-2.5.2.jar \
           /tmp/antlr-runtime-3.5.2.jar /tmp/guava.jar /usr/share/java/smali-util-2.5.2.git2771eae.jar; do
    [ -e "$f" ] || { warn "缺: $f"; missing=1; }
  done
  [ "$missing" = 0 ] || die "工作面不齐（可从 $WS/build_inputs/ 与 $TOOLCHAIN/lib/ 恢复）"
  ok "工作面齐全"
}

# 设备面命令（经文件队列桥）。未启动轮询器会明确失败。
dev_run(){ bash "$DEVBRIDGE_SEND" "$1" "${2:-90}"; }

# apk 内某个前缀的条目数
apk_count(){ unzip -Z1 "$1" "$2" 2>/dev/null | wc -l; }
# 从 apk 取 dex 到指定路径
apk_dex(){ unzip -p "$1" classes.dex > "$2" 2>/dev/null; }
