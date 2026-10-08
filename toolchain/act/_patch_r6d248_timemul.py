#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d248_timemul.py
r6d248：时间倍率驱动的制导（用户三项要求：慢、关联倍率、无停留）
A) adFxStep：整段替换为简化引擎——p = 已过毫秒 ÷ (航程小时 × playSpeedTIME/HOURS_PER_TURN)
   （运行时实时读取倍率 ⇒ 自动关联；p→1 与到达同刻 ⇒ 无停留；不再有冻结/停留分支）
B) adDistHours：航程小时 = 欧氏px × 0.6（视觉航速旋钮）——替换原 2450px/h 真实速度换算
C) scheduleHit：航程下限 1h → 4h
D) nABOOT → r6d248
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"

# ---------- A) adFxStep 简化引擎 ----------
s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]

init_check = "    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I"
c = seg.count(init_check); assert c == 1, ("init", c)
k = seg.index(init_check)

engine = (
"    # r6d248：游戏时间倍率驱动的制导（p = 已过毫秒 / 航程毫秒；无停留）\n"
"    const/16 v0, 0x12c\n"
"    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;\n"
"    if-eqz v1, :mph_keep\n"
"    iget v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I\n"
"    if-gtz v0, :mph_keep\n"
"    const/16 v0, 0x12c\n"
"    :mph_keep\n"
"    const/4 v2, 0x1\n"
"    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I\n"
"    if-gtz v3, :hpt_keep\n"
"    move v2, v3\n"
"    :hpt_keep\n"
"    int-to-float v0, v0\n"
"    int-to-float v1, v2\n"
"    div-float v0, v0, v1\n"
"    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I\n"
"    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I\n"
"    sub-int/2addr v2, v3\n"
"    if-gtz v2, :fh_keep\n"
"    const/4 v2, 0x1\n"
"    :fh_keep\n"
"    int-to-float v3, v2\n"
"    mul-float v0, v0, v3\n"
"    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n"
"    move-result-wide v4\n"
"    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J\n"
"    sub-long v4, v4, v6\n"
"    const-wide/16 v6, 0x0\n"
"    cmp-long v1, v4, v6\n"
"    if-gez v1, :el_ok\n"
"    const-wide/16 v4, 0x0\n"
"    :el_ok\n"
"    long-to-float v3, v4\n"
"    div-float v3, v3, v0\n"
"    const v4, 0x3f800000    # 1.0f\n"
"    cmpl-float v5, v3, v4\n"
"    if-lez v5, :p_ok\n"
"    move v3, v4\n"
"    :p_ok\n"
"    int-to-float v4, p3\n"
"    int-to-float v5, p1\n"
"    sub-float v4, v4, v5\n"
"    mul-float v4, v4, v3\n"
"    add-float v4, v4, v5\n"
"    int-to-float v5, p4\n"
"    int-to-float v6, p2\n"
"    sub-float v5, v5, v6\n"
"    mul-float v5, v5, v3\n"
"    add-float v5, v5, v6\n"
"    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
"    if-nez v6, :wr_ok\n"
"    const/4 v6, 0x1\n"
"    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
"    const/4 v6, 0x0\n"
"    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I\n"
"    const/16 v6, 0xf\n"
"    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTH:I\n"
"    :wr_ok\n"
"    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F\n"
"    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F\n"
"    invoke-static {p0, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V\n"
"    return-void\n"
)
seg = seg[:k] + engine
s = s[:i0] + seg + s[i1:]
open(PDA, 'w', encoding='utf-8').write(s)
print("A OK: adFxStep 简化引擎（时间倍率驱动 + 无停留）")

# ---------- B) adDistHours 航速旋钮 ----------
s = open(PAD, encoding='utf-8').read()
old = ("    const/16 v9, 0x992    # 速度 2450 px/小时（Mach4≈4900km/h ÷ 2km/px，r6d242）\n"
       "    div-int v8, v8, v9\n")
assert s.count(old) == 1, ("his", s.count(old))
new = ("    # r6d248：航程小时 = 欧氏px × 0.6（视觉航速旋钮，可调）\n"
       "    mul-int/lit8 v8, v8, 0x3\n"
       "    div-int/lit8 v8, v8, 0x5\n")
s = s.replace(old, new, 1)

# ---------- C) 下限 4h ----------
r1 = re.compile(r'const/16 v2, 0x1(\n+    if-lt v1, v2, :dl_min)')
c = len(r1.findall(s)); assert c == 1, ("d1", c)
s = r1.sub(r'const/16 v2, 0x4\1', s, count=1)
r2 = re.compile(r'(:dl_min\n+    const/16 v1, )0x1')
c = len(r2.findall(s)); assert c == 1, ("d2", c)
s = r2.sub(r'\g<1>0x4', s, count=1)
open(PAD, 'w', encoding='utf-8').write(s)
print("B/C OK: 航速旋钮×0.6；下限4h")

# ---------- D) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d248', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("D OK: nABOOT v=r6d248")