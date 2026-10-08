#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d241_pacing.py
r6d241：实时重瞄准配速（修1）—— 导弹“恰好”在伤害落下的瞬间碰到飞机
A) adFxStep 追击段：spd 改为每帧重算 = 剩余距离 / max(剩余时间,32ms)
   （原：出生时定死 = 初始距离/总时长；快慢不跟手）
B) 撤掉 r6d240 的“≤128px 追赶加速” —— 它会让导弹提前抵达飞机并“骑”在上面跨省（用户实测现象）
C) nABOOT → r6d241
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]

# ---------- A) 实时配速 ----------
old_a = ("    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSpd:F\n"
         "\n"
         "    mul-float v5, v5, v8\n")
assert seg.count(old_a) == 1, ("A-anchor", seg.count(old_a))
new_a = (
    "    # r6d241：实时重瞄准配速 —— spd = 剩余距离 / max(剩余时间,32ms)\n"
    "    const/16 v5, 0x12c\n"
    "    int-to-float v5, v5\n"
    "    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;\n"
    "    if-eqz v7, :sp_1\n"
    "    iget v6, v7, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I\n"
    "    if-lez v6, :sp_1\n"
    "    int-to-float v5, v6\n"
    "    :sp_1\n"
    "    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n"
    "    if-lez v6, :sp_2\n"
    "    div-int/lit8 v6, v6, 0x2\n"
    "    int-to-float v6, v6\n"
    "    mul-float v5, v6, v5\n"
    "    :sp_2\n"
    "    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n"
    "    move-result-wide v9\n"
    "    iget-wide v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J\n"
    "    sub-long v9, v9, v12\n"
    "    const-wide/16 v12, 0x0\n"
    "    cmp-long v6, v9, v12\n"
    "    if-gez v6, :el_ok\n"
    "    const-wide/16 v9, 0x0\n"
    "    :el_ok\n"
    "    long-to-float v6, v9\n"
    "    sub-float v5, v5, v6\n"
    "    const v6, 0x42000000    # 32.0f\n"
    "    cmpl-float v7, v5, v6\n"
    "    if-gez v7, :rem_ok\n"
    "    move v5, v6\n"
    "    :rem_ok\n"
    "    div-float v5, v4, v5\n"
    "    mul-float v5, v5, v8\n")
seg = seg.replace(old_a, new_a, 1)

# ---------- B) 撤掉追赶加速块 ----------
old_b = (
    "    # r6d240：≤128px 追赶加速（每帧至少覆盖剩余距离的 1/4）\n"
    "    const v6, 0x43000000    # 128.0f\n"
    "    cmpl-float v7, v4, v6\n"
    "    if-gez v7, :catch_off\n"
    "    const v6, 0x3e800000    # 0.25f\n"
    "    mul-float v6, v4, v6\n"
    "    cmpl-float v7, v5, v6\n"
    "    if-gez v7, :catch_off\n"
    "    move v5, v6\n"
    "    :catch_off\n")
assert seg.count(old_b) == 1, ("B-anchor", seg.count(old_b))
seg = seg.replace(old_b, "", 1)

s = s[:i0] + seg + s[i1:]
print("A/B OK: 实时配速已启用；追赶加速块已撤")

open(PDA, 'w', encoding='utf-8').write(s)

# ---------- C) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d241', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("C OK: nABOOT v=r6d241")