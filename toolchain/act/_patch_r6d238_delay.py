#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d238_delay.py
r6d238：修复“延迟恒为负 ⇒ flyHours<0 ⇒ 入口全灭”的两层极性错
A) adDistHours：两处 |diff| 的 if-ltz→if-gez（原来取反绝对值 ⇒ 曼哈顿距离恒为负）
B) scheduleHit 夹取修正：if-lez→if-gtz（≤0 才夹到 2；原来恰好相反）
C) 双保险：延迟 v1 在进入 adHitAt 前 clamp ≥2 小时（飞行时长=2*delay 同步受益）
D) nABOOT → r6d238
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"

s = open(PAD, encoding='utf-8').read()

# ---------- A) adDistHours 绝对值 ----------
i0 = s.index(".method public static adDistHours(")
i1 = s.index(".end method", i0)
seg = s[i0:i1]
assert seg.count("if-ltz v8, :ax") == 1 and seg.count("if-ltz v9, :ay") == 1, "A-anchor"
seg = seg.replace("if-ltz v8, :ax", "if-gez v8, :ax", 1)
seg = seg.replace("if-ltz v9, :ay", "if-gez v9, :ay", 1)
s = s[:i0] + seg + s[i1:]
print("A OK: adDistHours 两处绝对值 if-ltz→if-gez")

# ---------- B) scheduleHit 夹取 ----------
assert s.count("if-lez v2, :fh_ok") == 1, "B-anchor"
s = s.replace("if-lez v2, :fh_ok", "if-gtz v2, :fh_ok", 1)
print("B OK: 夹取 if-lez→if-gtz（≤0 才夹到 2）")

# ---------- C) 延迟下限 clamp（≥2 小时） ----------
anchor = ("    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDistHours(Laoc/kingdoms/lukasz/map/battles/AirMission;)I\n"
          "\n"
          "    move-result v1\n")
assert s.count(anchor) == 1, ("C-anchor", s.count(anchor))
ins = (
    "    # r6d238：延迟下限 2 小时（双保险：绝不再让负值/零值流入时间线）\n"
    "    const/16 v2, 0x2\n"
    "    if-lt v1, v2, :dl_min\n"
    "    goto :dl_ok\n"
    "    :dl_min\n"
    "    const/16 v1, 0x2\n"
    "    :dl_ok\n"
)
s = s.replace(anchor, anchor + ins, 1)
print("C OK: 延迟 clamp >=2h")

open(PAD, 'w', encoding='utf-8').write(s)

# ---------- D) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d238', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("D OK: nABOOT v=r6d238")