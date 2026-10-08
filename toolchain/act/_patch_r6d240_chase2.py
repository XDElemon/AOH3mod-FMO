#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d240_chase2.py
r6d240：让导弹“咬住”飞机（追到不动为止 = 飞机消失时刻）
A) 贴近半径 8px→16px（64.0f→256.0f）：dist²<256 时不冻结，改为“每帧吸附到目标 + 拖尾”
   —— 原逻辑在追上瞬间 init=2 冻结，飞机继续飞走后弹迹停在原地（抓样实锤：冻结后拉开 386px）
B) 128px 内追赶加速：step = max(spd·dt, dist/4) —— 保证咬得住移动中的飞机
C) nABOOT → r6d240
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]

# ---------- A1) 阈值 64→256 ----------
old_t = "    const v5, 0x42800000    # 64.0f"
assert seg.count(old_t) == 1, ("A1", seg.count(old_t))
seg = seg.replace(old_t, "    const v5, 0x43800000    # 256.0f（16px 贴住，r6d240）", 1)

# ---------- A2) 冻结 → 吸附跟随 ----------
old_frz = re.compile(
    r'([ \t]*const/4 v0, 0x2\n)(?:[ \t]*\n)*'
    r'([ \t]*iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n)(?:[ \t]*\n)*'
    r'([ \t]*return-void\n)')
c = len(old_frz.findall(seg)); assert c == 1, ("A2", c)
new_snap = ("    # r6d240：不冻结 —— 贴住目标（每帧吸附 + 拖尾），直到到达结算清除\n"
            "    int-to-float v2, p3\n"
            "    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F\n"
            "    int-to-float v3, p4\n"
            "    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F\n"
            "    invoke-static {p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V\n"
            "    return-void\n")
seg = old_frz.sub(new_snap, seg, count=1)

# ---------- B) 追赶加速 ----------
old_spd = re.compile(r'([ \t]*mul-float v5, v5, v8\n)')
c = len(old_spd.findall(seg)); assert c == 1, ("B", c)
boost = ("    # r6d240：≤128px 追赶加速（每帧至少覆盖剩余距离的 1/4）\n"
         "    const v6, 0x43000000    # 128.0f\n"
         "    cmpl-float v7, v4, v6\n"
         "    if-gez v7, :catch_off\n"
         "    const v6, 0x3e800000    # 0.25f\n"
         "    mul-float v6, v4, v6\n"
         "    cmpl-float v7, v5, v6\n"
         "    if-gez v7, :catch_off\n"
         "    move v5, v6\n"
         "    :catch_off\n")
seg = old_spd.sub(lambda m: m.group(1) + boost, seg, count=1)

s = s[:i0] + seg + s[i1:]
print("A/B OK: 贴住半径16px + 吸附跟随 + ≤128px 追赶加速")

open(PDA, 'w', encoding='utf-8').write(s)

# ---------- C) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d240', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("C OK: nABOOT v=r6d240")