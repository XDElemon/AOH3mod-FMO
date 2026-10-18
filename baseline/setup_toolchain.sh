#!/bin/bash
# ============================================================
# setup_toolchain.sh —— 自举 smali 工具链（幂等，可重复执行）
# 产物：/tmp/jars/*.jar + /tmp/smali_cp.txt（绝对路径 classpath）
# 注意：Maven 坐标是 org/smali/*（com/android/tools/* 会 404）
#       jcommander 必须 1.48（1.72/1.78/1.82 会 NoSuchMethodError）
# ============================================================
set -euo pipefail
JARS=/tmp/jars
CP_FILE=/tmp/smali_cp.txt
mkdir -p "$JARS"

need() { [ -s "$JARS/$1" ] || echo "$1"; }
fetch() { # $1=url $2=filename
  if [ ! -s "$JARS/$2" ]; then
    echo "  下载 $2"
    curl -fsSL --retry 3 --max-time 180 "$1" -o "$JARS/$2"
  fi
}

if [ -n "$(need smali-2.5.2.jar)$(need dexlib2-2.5.2.jar)" ]; then
  echo "== 拉取 smali 工具链 =="
  M=https://repo1.maven.org/maven2
  fetch "$M/org/smali/smali/2.5.2/smali-2.5.2.jar" smali-2.5.2.jar
  fetch "$M/org/smali/baksmali/2.5.2/baksmali-2.5.2.jar" baksmali-2.5.2.jar
  fetch "$M/org/smali/dexlib2/2.5.2/dexlib2-2.5.2.jar" dexlib2-2.5.2.jar
  fetch "$M/org/smali/util/2.5.2/util-2.5.2.jar" util-2.5.2.jar
  fetch "$M/com/google/guava/guava/31.1-jre/guava-31.1-jre.jar" guava.jar
  fetch "$M/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar" antlr-runtime-3.5.2.jar
  fetch "$M/com/beust/jcommander/1.48/jcommander-1.48.jar" jc-1.48.jar
fi

CP="$JARS/smali-2.5.2.jar:$JARS/baksmali-2.5.2.jar:$JARS/dexlib2-2.5.2.jar:$JARS/util-2.5.2.jar:$JARS/guava.jar:$JARS/antlr-runtime-3.5.2.jar:$JARS/jc-1.48.jar"
echo "$CP" > "$CP_FILE"

echo "== 自检 =="
java -cp "$CP" org.jf.smali.Main 2>&1 | head -1 || true
java -cp "$CP" org.jf.baksmali.Main 2>&1 | head -1 || true
echo "classpath -> $CP_FILE"
echo "✅ 工具链就绪"
