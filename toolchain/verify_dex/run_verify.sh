#!/bin/bash
# =============================================
# 六道防线一键验证 (R-1 起固化, 2026-09-02)
# 用法: bash run_verify.sh <classes.dex> [class-filter]
#   class-filter: CheckCast 的类名关键字过滤(如 aoc/kingdoms/lukasz)
#   class-filter: CheckUndef 的类名关键字过滤(如 aoc/kingdoms/lukasz)
echo "== CheckRefs(引用类完整性):"; java -cp ".:$D/lib/dexlib2-2.5.2.jar:$D/lib/guava.jar" CheckRefs "$1" 2>&1 | tail -1
# 依赖: ../lib/dexlib2-2.5.2.jar  ../lib/guava.jar
# =============================================
DEX="$1"; FILTER="${2:-}"
[ -f "$DEX" ] || { echo "用法: bash run_verify.sh <classes.dex> [class-filter]"; exit 1; }
DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$DIR")"
CP="$ROOT/lib/dexlib2-2.5.2.jar:$ROOT/lib/guava.jar"
cd "$DIR"
run() {
  echo "== $1"; java -cp ".:$CP" "$1" "$DEX" | tail -4
}
run CheckInvoke
run CheckRegs
run CheckInit
run CheckSig
run CheckRange
echo "== CheckCast"; java -cp ".:$CP" CheckCast "$DEX" $FILTER | tail -4
echo "== CheckUndef"; java -cp ".:$CP" CheckUndef "$DEX" $FILTER | tail -4
echo "== ALL DONE (MISSING=15 为 CheckSig 白名单)"
