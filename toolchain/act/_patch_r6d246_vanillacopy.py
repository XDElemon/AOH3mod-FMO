#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d246_vanillacopy.py
r6d246：用户指令——“别再自创，直接参考飞机导弹的追踪实现”
A) adFxStep 整段替换为 msFxStep 的逐字克隆（仅字段改名 msFx→adFx + 保留源闸）
B) tickHits 恢复完整清场（撤销 r6d245 的“保留弹迹”）
C) 删除 r6d244 的“目标平滑”块（回到与飞机导弹一致的原生取值）
D) nABOOT → r6d246
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"

# ---------- A) msFxStep → adFxStep 克隆 ----------
s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static msFxStep")
i1 = s.index(".end method", i0)
van = s[i0:i1] + ".end method\n"
clone = van
clone = clone.replace(".method private static msFxStep", ".method private static adFxStep", 1)
for a, b in (("msFxTrailAdd", "adFxTrailAdd"), ("msFlyHours", "adFlyHours"),
             ("msFxSpd", "adFxSpd"), ("msFxInit", "adFxInit"),
             ("msFxTH", "adFxTH"), ("msFxTN", "adFxTN"),
             ("msFxX", "adFxX"), ("msFxY", "adFxY")):
    clone = clone.replace(a, b)
assert "msFxInit" not in clone and "msFlyHours" not in clone, "改名不完全"
# 插入源闸（照抄我们既有守卫：src<0 → return）
mark = ":cond_13\n"
k = clone.index(mark)
gate = "    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n    if-ltz v0, :cond_12\n"
clone = clone[:k+len(mark)] + gate + clone[k+len(mark):]

j0 = s.index(".method private static adFxStep")
j1 = s.index(".end method", j0) + len(".end method\n")
s = s[:j0] + clone + s[j1:]

# ---------- C) 删除目标平滑块 ----------
pat = re.compile(r'    # r6d244：目标坐标平滑[^\n]*\n(?s:.*?)float-to-int v7, v5\n')
c = len(pat.findall(s)); assert c == 1, ("smooth", c)
s = pat.sub('', s, count=1)
open(PDA, 'w', encoding='utf-8').write(s)
print("A/C OK: adFxStep=msFxStep克隆；目标平滑块已移除")

# ---------- B) tickHits 恢复完整清场 ----------
s = open(PAD, encoding='utf-8').read()
old = "    # r6d245：到达结算只清伤害——弹迹保留，由 adFxStep 按 2×total 终点回收\n"
assert s.count(old) == 1, "th1"
restore = (
    "    # r6d206：到达结算 ——弹迹结束\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
    "    const/4 v8, -0x1\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n"
    "    const/4 v8, 0x0\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I\n"
    "    const v8, 0xc7c35000    # -100000.0f：弹迹结束 ⇒ 挪出屏幕（防残留）\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F\n"
)
s = s.replace(old, restore, 1)
open(PAD, 'w', encoding='utf-8').write(s)
print("B OK: tickHits 完整清场已恢复")

# ---------- D) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d246', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("D OK: nABOOT v=r6d246")