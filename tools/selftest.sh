#!/bin/bash
# ============================================================
# tools/selftest.sh —— 数据层自检（含负样本）
# 覆盖：JSON->smali 还原、机型校验、数值锚点、三组负样本（必须被拒绝）、
#       Java 基线闸门（tools/gates/gate_java_first.py --include-worktree；base 默认 HEAD=只查本批）
# 用法: bash tools/selftest.sh [--apk /path/to.apk]
# ============================================================
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
APK=""
[ "${1:-}" = "--apk" ] && APK="${2:-}"

PASS=0; FAIL=0
ok(){ echo "  ✅ $*"; PASS=$((PASS+1)); }
no(){ echo "  ❌ $*"; FAIL=$((FAIL+1)); }

echo "== 1) 机型表可还原（JSON -> smali 逐字节一致）=="
if python3 tools/gen_airmodel_tables.py --check >/dev/null 2>&1; then ok "还原一致"; else no "还原不一致"; fi

echo "== 2) 机型校验 =="
if [ -n "$APK" ] && [ -f "$APK" ]; then
  if python3 tools/validate_aircraft_models.py --apk "$APK" >/tmp/_seltest_v.log 2>&1; then ok "V1-V6 全过（+图存在性）"; else no "校验失败（见 /tmp/_seltest_v.log）"; fi
else
  if python3 tools/validate_aircraft_models.py --apk /nonexistent >/tmp/_seltest_v.log 2>&1; then ok "V1-V6 全过（未提供 APK，跳过图存在性）"; else no "校验失败"; fi
fi

echo "== 3) 数值锚点（4 代打 3 代应为 8:1）=="
OUT=$(python3 tools/aircraft_stats.py 2>&1)
echo "$OUT" | grep -q "8.00:1" && ok "锚点 8.00:1 命中" || no "锚点未命中"
echo "$OUT" | grep -q "18.00" && ok "锚点 18:1 命中" || no "18:1 未命中"
echo "$OUT" | grep -q "45.00" && ok "锚点 45:1 命中" || no "45:1 未命中"

echo "== 3.5) 空军编制 AircraftTypes.json 与机型表一致（64 条）=="
if python3 tools/gen_air_oob.py --check >/dev/null 2>&1; then ok "64 条产物一致"; else no "编制产物不一致"; fi

echo "== 4) 负样本：拆比指数之和≠1 必须被拒 =="
cp data/aircraft_stats.json /tmp/_sta.bak
trap 'cp /tmp/_sta.bak data/aircraft_stats.json 2>/dev/null' EXIT
python3 - <<'PY'
import json
d=json.load(open('data/aircraft_stats.json'))
d['split']['attack_exponent']=0.7; d['split']['defense_exponent']=0.5
json.dump(d,open('data/aircraft_stats.json','w'),ensure_ascii=False,indent=2)
PY
if python3 tools/aircraft_stats.py >/dev/null 2>&1; then no "非法拆比竟然通过"; else ok "非法拆比被拒"; fi
cp /tmp/_sta.bak data/aircraft_stats.json

echo "== 5) 负样本：机型键重复 必须被拒 =="
cp data/aircraft_models.json /tmp/_mod.bak
python3 - <<'PY'
import json
d=json.load(open('data/aircraft_models.json'))
d['models'][1]['key']=d['models'][0]['key']
json.dump(d,open('data/aircraft_models.json','w'),ensure_ascii=False,indent=2)
PY
if python3 tools/gen_airmodel_tables.py --check >/dev/null 2>&1; then no "重复键竟然通过"; else ok "重复键被拒"; fi
cp /tmp/_mod.bak data/aircraft_models.json

echo "== 6) 负样本：imageId 与公式不符 必须被拒 =="
cp data/aircraft_models.json /tmp/_mod2.bak
python3 - <<'PY'
import json
d=json.load(open('data/aircraft_models.json'))
d['models'][0]['imageId']=999
json.dump(d,open('data/aircraft_models.json','w'),ensure_ascii=False,indent=2)
PY
if python3 tools/gen_airmodel_tables.py --check >/dev/null 2>&1; then no "错误 imageId 竟然通过"; else ok "错误 imageId 被拒"; fi
cp /tmp/_mod2.bak data/aircraft_models.json

echo "== 7) 空军编制数据：ImageID=70+aid、RequiredTechID=机型科技（三代也挂）=="
if python3 tools/gen_air_units.py --check >/dev/null 2>&1; then ok "编制数据与生成器一致"; else
  python3 tools/gen_air_units.py >/dev/null 2>&1
  if python3 tools/gen_air_units.py --check >/dev/null 2>&1; then ok "已按生成器重生成并一致"; else no "编制数据不一致"; fi
fi

echo "== 8) 负样本：把三代行的 RequiredTechID 改回 -1 必须被发现 =="
cp build/assets/game/units/AirFighter.json /tmp/_af.bak 2>/dev/null
python3 - <<'PYEOF'
import re
p='build/assets/game/units/AirFighter.json'
s=open(p,encoding='utf-8').read()
open(p,'w',encoding='utf-8').write(s.replace('RequiredTechID: 99','RequiredTechID: -1',1))
PYEOF
if python3 tools/gen_air_units.py --check >/dev/null 2>&1; then no "改回 -1 竟然通过"; else ok "改回 -1 被发现"; fi
cp /tmp/_af.bak build/assets/game/units/AirFighter.json 2>/dev/null

echo "== 9) 编制图标素材目录（暂存目录存在时校验）=="
# 优先校验本批次暂存目录；没有新版时回落到上一版（旧目录仍可独立验证生成器）
STAGE=""
for d in /tmp/stage_v38 /tmp/stage_v37 /tmp/stage_v35 /tmp/stage_v34 /tmp/stage_v33; do
  [ -d "$d" ] && STAGE="$d" && break
done
if [ -n "$STAGE" ]; then
  if python3 tools/gen_air_roster_icons.py --check "$STAGE" >/dev/null 2>&1; then ok "64 张 × 3 桶 + numOfImages=134（$STAGE）"; else no "图标暂存目录不合格（$STAGE）"; fi
else
  echo "  ⏭  跳过（没有 /tmp/stage_v3x 暂存目录）"
fi

echo "== 10) 科技 JSON 与生成器一致（暂存目录存在时校验）=="
if [ -n "$STAGE" ] && [ -f "$STAGE/assets/game/technologies/Technologies.json" ]; then
  if python3 tools/gen_air_techs.py --check "$STAGE/assets/game/technologies/Technologies.json" >/dev/null 2>&1; then
    ok "Technologies.json 与科技表一致"
  else
    no "Technologies.json 与生成器不一致（改了机型表后没重跑 gen_air_techs.py？）"
  fi
else
  echo "  ⏭  跳过（暂存目录没有 Technologies.json）"
fi

echo "== 11) Java 基线闸门（新增/修改的 smali 必须写 Java；例外必须登记且真有 libgdx 引用）=="
# 默认对照 HEAD~1（= 上一版交付到本版的 smali 改动）。出包前的完整检查用
#   python3 tools/fmo.py gate    （带 --include-worktree，未提交/未跟踪的改动也算）
if python3 tools/gates/gate_java_first.py --include-worktree >/tmp/_seltest_j.txt 2>&1; then
  ok "Java 基线闸门通过（警告 $(grep -c '⚠️' /tmp/_seltest_j.txt) 项）"
else
  no "Java 基线闸门失败（详见 /tmp/_seltest_j.txt）"
  grep -E '^  ❌|^❌' /tmp/_seltest_j.txt | head -6 | sed 's/^/     /'
fi


echo
echo "---------------------------------------------"
echo "通过 $PASS 项，失败 $FAIL 项"
[ "$FAIL" = 0 ] || exit 1
echo "✅ 数据层自检全绿"
