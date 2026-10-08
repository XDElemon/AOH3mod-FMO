#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d236_fly.py
r6d236：让弹头“像飞机导弹一样动起来” + 颜色改为“射手的颜色”
A) scheduleHit：弹迹启动挪到“开窗”时；写 lastMissileMs=now（时间基准）；adFlyHours=2*距离小时（clamp>=2，供 adFxStep 的 /2）
B) tickHits 到达：清 adFxTN=0 并把 adFxX/Y 挪到 -100000f（消灭“到达后残留幽灵点”）
C) adFxStep：adFxSrc<0（无在途弹）直接返回（同上防幽灵）
D) 弹头颜色：按“射手省(adFxSrc)的 civ”对比玩家（原按任务 civ ⇒ 永远蓝）
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

M = "Laoc/kingdoms/lukasz/map/battles/AirMission;"

# ---------- A) scheduleHit：开窗启动 ----------
s = open(PAD, encoding='utf-8').read()

anchor = "    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I\n"
assert s.count(anchor) == 1, ("A-anchor", s.count(anchor))
ins = (
    "    # r6d236：开窗启动弹迹（时间基准=发射瞬间；adFlyHours=2*距离小时，供 adFxStep 的 /2，clamp>=2）\n"
    "    mul-int/lit8 v2, v1, 0x2\n"
    "    if-lez v2, :fh_ok\n"
    "    const/16 v2, 0x2\n"
    "    :fh_ok\n"
    "    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n"
    "    const/4 v2, 0x0\n"
    "    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
    "    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n"
    "    move-result-wide v2\n"
    "    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J\n"
)
s = s.replace(anchor, anchor + ins, 1)

old_blk = re.compile(
    r'[ \t]*# 弹迹进入[^\n]*\n'
    r'(?:[ \t]*\n)*[ \t]*const/4 v5, 0x0\n'
    r'(?:[ \t]*\n)*[ \t]*iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n'
    r'(?:[ \t]*\n)*[ \t]*const/4 v5, 0x1\n'
    r'(?:[ \t]*\n)*[ \t]*iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n')
c = len(old_blk.findall(s))
assert c == 1, ("A-old", c)
s = old_blk.sub("    # r6d236：弹迹启动已挪到“开窗”处（原来每发重置已删除）\n", s, count=1)

# ---------- B) tickHits 到达：清尾迹 + 挪出屏幕 ----------
b_pat = re.compile(r'([ \t]*iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n)')
cb = len(b_pat.findall(s))
assert cb == 1, ("B-anchor", cb)
ins2 = (
    "    const/4 v8, 0x0\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I\n"
    "    const v8, 0xc7c35000    # -100000.0f：弹迹结束 ⇒ 挪出屏幕（防残留）\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F\n"
    "    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F\n"
)
s = b_pat.sub(lambda m: m.group(1) + ins2, s, count=1)
open(PAD, 'w', encoding='utf-8').write(s)
print("A/B OK: scheduleHit 开窗启动 + tickHits 清幽灵")

# ---------- C) adFxStep 源闸（限定在 adFxStep 方法内，空白容忍） ----------
s = open(PDA, encoding='utf-8').read()

i0 = s.index(".method private static adFxStep(")
i1 = s.index(".end method", i0)
seg = s[i0:i1]
c_pat = re.compile(
    r'(:cond_12\n\s*return-void\n\s*:cond_13\n)(\s*)invoke-static \{\}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDt\(\)V')
cc = len(c_pat.findall(seg))
assert cc == 1, ("C-anchor", cc)
c_ins = (r'\g<1>' +
         "    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n"
         "    if-gez v0, :cond_12\n" +
         r'\g<2>invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDt()V')
seg = c_pat.sub(c_ins, seg, count=1)
s = s[:i0] + seg + s[i1:]

d_old = (
    "    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I\n"
    "\n"
    "    if-ne v1, v2, :cond_ad_body_b"
)
assert s.count(d_old) == 1, ("D-anchor", s.count(d_old))
d_new = (
    "    # r6d236：按“射手省（adFxSrc）的 civ”判色（原用任务 civ ⇒ 玩家挨打时永远蓝）\n"
    "    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n"
    "    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;\n"
    "    move-result-object v2\n"
    "    if-eqz v2, :cond_ad_body_b\n"
    "    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I\n"
    "    move-result v2\n"
    "\n"
    "    if-ne v1, v2, :cond_ad_body_b"
)
s = s.replace(d_old, d_new, 1)
open(PDA, 'w', encoding='utf-8').write(s)
print("C/D OK: adFxStep 源闸 + 弹头颜色按射手 civ")

# ---------- E) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d236', d)
assert d2 != d, "E: nABOOT 未变"
open(PDD, 'w', encoding='utf-8').write(d2)
print("E OK: nABOOT v=r6d236")
