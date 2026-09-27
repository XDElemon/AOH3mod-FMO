#!/bin/bash
# ============================================================
# check_dangling.sh —— 精确悬空引用门禁（抓"调了某类里根本不存在的方法"）
#
# 为什么需要它：
#   · CheckSig 只比「方法名+参数个数」，且是**全 dex**范围 -> 看不见"目标类里没有"（如
#     Civilization.removeMove(String) 与 removeMove(int) 参数个数相同）
#   · check_calls.py 只查「本类调本类」
#   · check_arity.py 只在"同名方法存在但参数个数不同"时 WARN
#   => 上面三者都抓不到"调用别的类里不存在的方法"（本项目已因此崩过 3 次：
#      原版 removeMove / buildAirport，以及我自己写的 ArmyDivision.getCivID()）
#
# 本脚本用 dexlib2 沿**类继承链**精确解析每个 invoke 的目标方法，只报真的找不到的，
# 并把 Enum/Thread/gdx 这类「继承自 dex 外父类」的噪声按白名单过滤。
#
# 用法: bash check_dangling.sh <apk或dex路径>
# 判据: 输出「真悬空 = 0」才算过；否则退出码 1
# ============================================================
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
TC="$(cd "$HERE/.." && pwd)"
LIB="$TC/lib"
TOOLS="$TC/tools_dexlib2"
CP="$LIB/dexlib2-2.5.2.jar:$LIB/guava.jar:$TOOLS"

IN="${1:-}"
[ -n "$IN" ] || { echo "用法: bash check_dangling.sh <apk|dex>"; exit 2; }
[ -f "$IN" ] || { echo "❌ 找不到 $IN"; exit 2; }

WORK=/tmp/_cdang
rm -rf "$WORK"; mkdir -p "$WORK"

case "$IN" in
  *.apk|*.apks)
    # 注意：本包的 APK 里有超长文件名，unzip 会以"warning"返回非 0；所以不看返回码，只看产物
    unzip -o -q "$IN" classes.dex -d "$WORK" >/dev/null 2>&1
    DEX="$WORK/classes.dex"
    [ -f "$DEX" ] || { echo "❌ 无法从 apk 取出 classes.dex"; exit 2; } ;;
  *) DEX="$IN" ;;
esac

[ -f "$TOOLS/ProbeDangling2.class" ] || { echo "❌ 缺少 $TOOLS/ProbeDangling2.class（需先 javac 编译）"; exit 2; }

java -Xmx1500m -cp "$CP" ProbeDangling2 "$DEX" 60 > "$WORK/out.txt" 2>&1

echo "== 原始扫描尾部 =="
tail -2 "$WORK/out.txt"
echo
echo "== 剔除「dex 外继承」噪声后的真悬空 =="
# 噪声白名单：枚举 ordinal/name/values、Thread.start/interrupt/join、gdx 的 initialize、以及 JDK 常见名
NOISE='ordinal|;->name\(\)|;->values\(\)|initialize\(|;->start\(|interrupt\(|;->join\(|;->equals\(|;->hashCode\(|;->toString\(|;->wait\(|;->notify'
REAL=$(grep '^DANGLING ' "$WORK/out.txt" 2>/dev/null | grep -vE "$NOISE" | sort -u)
if [ -z "$REAL" ]; then
  echo "✅ 真悬空 = 0"
  exit 0
else
  echo "❌ 发现真悬空（真机会 NoSuchMethodError）："
  echo "$REAL" | sed 's/^/   /' | head -20
  exit 1
fi