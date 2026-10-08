#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d245_slowfly.py
r6d245：用户口径——“伤害时间别动，只把飞行速度调慢”
① 延迟下限 2h→1h（回退；伤害时间保持短）
② 配速整体 ×2 减速（p = elapsed / (2×total)）⇒ 视觉速度减半（约 6s→12s 飞完全程）
③ tickHits 不再清弹迹（只清伤害与到达点）⇒ 导弹在伤害落下后继续“慢慢飞完”，
   在 adFxStep 里以 elapsed≥2×total 统一回收（不留、不早退）。
④ nABOOT → r6d245
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

# ---------- ① 下限回退 1h ----------
s = open(PAD, encoding='utf-8').read()
a1 = "const/16 v2, 0x2(\n+    if-lt v1, v2, :dl_min)"
r1 = re.compile(r'const/16 v2, 0x2(\n+    if-lt v1, v2, :dl_min)')
c = len(r1.findall(s)); assert c == 1, ("f1", c)
s = r1.sub(r'const/16 v2, 0x1\1', s, count=1)
r2 = re.compile(r'(:dl_min\n+    const/16 v1, )0x2')
c = len(r2.findall(s)); assert c == 1, ("f2", c)
s = r2.sub(r'\g<1>0x1', s, count=1)
old_c = "# r6d238：延迟下限 2 小时（双保险：绝不再让负值/零值流入时间线）"
assert s.count(old_c) == 1, "f3"
s = s.replace(old_c, "# r6d245：延迟下限 1 小时（回退；视觉减速改由配速 K 承担）", 1)

# ---------- ③ tickHits 保留弹迹 ----------
r3 = re.compile(r'# r6d206：到达结算[^\n]*\n(?s:.*?)adFxY:F\n')
c = len(r3.findall(s)); assert c == 1, ("f4", c)
s = r3.sub('    # r6d245：到达结算只清伤害——弹迹保留，由 adFxStep 按 2×total 终点回收\n', s, count=1)
open(PAD, 'w', encoding='utf-8').write(s)
print("①③ OK: 下限回退1h；tickHits 保留弹迹")

# ---------- ② 配速 ×2 + ④ 终点回收 ----------
s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]

old_div = "    int-to-float v3, v1\n    div-float v2, v2, v3\n"
c = seg.count(old_div); assert c == 1, ("f5", c)
seg = seg.replace(old_div, "    int-to-float v3, v1\n    const v4, 0x40000000    # 2.0f（r6d245：视觉减速系数）\n    mul-float v3, v3, v4\n    div-float v2, v2, v3\n", 1)

gate = "    if-ltz v0, :cond_12\n"
c = seg.count(gate); assert c == 1, ("f6", c)
endblock = (
"    # r6d245：视觉终点（elapsed ≥ 2×total）⇒ 回收弹迹\n"
"    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I\n"
"    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I\n"
"    add-int/2addr v0, v1\n"
"    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I\n"
"    sub-int/2addr v0, v1\n"
"    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n"
"    div-int/lit8 v1, v1, 0x2\n"
"    mul-int/lit8 v1, v1, 0x4\n"
"    mul-int/lit8 v0, v0, 0x2\n"
"    if-lt v0, v1, :fxend_ok\n"
"    const/4 v0, 0x0\n"
"    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
"    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n"
"    const/4 v0, -0x1\n"
"    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n"
"    const/4 v0, 0x0\n"
"    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I\n"
"    const v0, 0xc7c35000    # -100000.0f\n"
"    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F\n"
"    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F\n"
"    return-void\n"
"    :fxend_ok\n"
)
seg = seg.replace(gate, gate + endblock, 1)
s = s[:i0] + seg + s[i1:]
open(PDA, 'w', encoding='utf-8').write(s)
print("②④ OK: 配速×2 + 终点回收块已入")

# ---------- ⑤ 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d245', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("⑤ OK: nABOOT v=r6d245")