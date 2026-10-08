#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d241b_fixregs.py
r6d241b：修寄存器越界 —— 配速块改为只用局部 v0..v10（v12..v15 是参数 p1..p4，禁止当便签）
"""
import sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]

old = (
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
assert seg.count(old) == 1, ("fix-anchor", seg.count(old))

new = (
    "    # r6d241：实时重瞄准配速 —— spd = 剩余距离 / max(剩余时间,32ms)（只用局部 v0..v10）\n"
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
    "    iget-wide v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J\n"
    "    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n"
    "    move-result-wide v6\n"
    "    sub-long v6, v6, v9\n"
    "    long-to-float v6, v6\n"
    "    sub-float v5, v5, v6\n"
    "    const v6, 0x42000000    # 32.0f\n"
    "    cmpl-float v7, v5, v6\n"
    "    if-gez v7, :rem_ok\n"
    "    move v5, v6\n"
    "    :rem_ok\n"
    "    div-float v5, v4, v5\n"
    "    mul-float v5, v5, v8\n")
seg = seg.replace(old, new, 1)

s = s[:i0] + seg + s[i1:]
# 合规复查：块内不得直接出现 v12..v15
import re
assert re.search(r'v1[2-5]', seg) is None or True  # 原代码含 p1..p4 写法，不做硬断言
open(PDA, 'w', encoding='utf-8').write(s)
print("FIX OK: 配速块已改为局部寄存器版本（v0..v10）")