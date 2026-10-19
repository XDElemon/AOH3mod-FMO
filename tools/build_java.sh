#!/bin/bash
# ============================================================
# build_java.sh —— 把 src/java 里的逻辑类编成 smali 落进 src/smali
#
# 为什么：手写 smali 的分支极性错误汇编能过、指纹不变，只能靠闸门事后抓
# （本轮抓到 8 次）。改成 Java 后极性由 javac 决定，物理上不可能写反。
#
# 链路：gen_java_stubs（游戏类桩）→ javac -encoding UTF-8 → d8 → baksmali → 覆盖 src/smali
# 判据：tools/gate_behavior.py 全绿（同一套用例对 Java 版与生成器版一视同仁）
#
# 用法： bash tools/build_java.sh            # 全量
#        bash tools/build_java.sh AirMissileGate   # 只编某个类
# ============================================================
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JSRC="$ROOT/src/java"
OUT=/tmp/jbuild
STUBS=/tmp/jstubs
D8=/tmp/r8_8.3.37.jar
CP="$(cat /tmp/smali_cp.txt)"
ONLY="${1:-}"

[ -d "$JSRC" ] || { echo "❌ 没有 src/java"; exit 1; }
[ -f "$D8" ] || { echo "❌ 缺 d8: $D8"; exit 1; }

echo "== 1/5 收集需要桩的游戏类"
# 从 Java 源码里抓 aoc./team./com.pairip 引用
CLASSES=$(python3 - "$JSRC" "$ROOT/src/smali" <<'PYEOF'
import glob, os, re, sys
jdir, sdir = sys.argv[1], sys.argv[2]
refs = set()
for p in glob.glob(os.path.join(jdir, "**", "*.java"), recursive=True):
    t = open(p, encoding="utf-8", errors="replace").read()
    # 同包内的类名不带包前缀（Airport/AirUnit...），要按"该 Java 文件所在包"回查 smali
    pm = re.search(r"^package\s+([\w.]+)\s*;", t, re.M)
    pkgdir = pm.group(1).replace(".", "/") if pm else ""
    for m in re.finditer(r"\b([A-Z][A-Za-z0-9_]*)\b", t):
        cand = (pm.group(1) + "." + m.group(1)) if pm else m.group(1)
        if os.path.exists(os.path.join(sdir, pkgdir, m.group(1) + ".smali")):
            refs.add(cand)
    for m in re.finditer(r"\b((?:aoc|team|com\.pairip)(?:\.[a-z0-9_]+)+)", t, re.I):
        parts = m.group(1).split(".")
        # 从最长前缀往回试，找到真实存在的类
        for k in range(len(parts), 1, -1):
            cand = ".".join(parts[:k])
            if os.path.exists(os.path.join(sdir, cand.replace(".", "/") + ".smali")):
                refs.add(cand)
                break
print(",".join(sorted(refs)))
PYEOF
)
echo "   ${CLASSES:0:120}..."
bash -c "python3 $ROOT/tools/gen_java_stubs.py --classes '$CLASSES' --out $STUBS" | tail -2

echo "== 2/5 javac（必须 -encoding UTF-8）"
rm -rf "$OUT"; mkdir -p "$OUT/cls" "$OUT/dex" "$OUT/sm"
FILES=$(find "$JSRC" -name "*.java")
[ -n "$ONLY" ] && FILES=$(find "$JSRC" -name "$ONLY.java")
javac --release 8 -nowarn -encoding UTF-8 -cp "$STUBS/cls" -d "$OUT/cls" $FILES || {
  echo "❌ javac 失败"; exit 1; }

echo "== 3/5 d8 → dex"
java -cp "$D8" com.android.tools.r8.D8 --min-api 26 --output "$OUT/dex" \
  $(find "$OUT/cls" -name "*.class") || { echo "❌ d8 失败"; exit 1; }

echo "== 4/5 baksmali → smali"
java -Xmx4g -cp "$CP" org.jf.baksmali.Main disassemble "$OUT/dex/classes.dex" -o "$OUT/sm" \
  || { echo "❌ baksmali 失败"; exit 1; }

echo "== 5/5 覆盖 src/smali"
N=0
while IFS= read -r f; do
  rel="${f#$OUT/sm/}"
  dst="$ROOT/src/smali/$rel"
  [ -f "$dst" ] || { echo "   ⚠️  新类（src/smali 里没有）: $rel"; }
  cp "$f" "$dst" && N=$((N+1))
done < <(find "$OUT/sm" -name "*.smali")
echo "   已覆盖 $N 个 .smali"
echo "✅ 完成；下一步必跑： python3 tools/gate_behavior.py"
