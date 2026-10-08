#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d244_smooth_slow.py
r6d244：
① 延迟下限 1h→2h（实测窗口≈360帧≈6s ⇒ 2h≈12s，给动画留出观赏时间）
② 目标平滑：新增 adFxTgtX/Y 字段；每帧把“目标坐标”向原始值限速靠拢（±8px/帧）
   ⇒ 飞机换省时 200px 的“逐省跳变”变成 ~0.4 秒滑翔；正常微动 1-2px/帧 不受影响。
③ nABOOT → r6d244
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PAM = W + "/aoc/kingdoms/lukasz/map/battles/AirMission.smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

# ---------- ① 延迟下限 2h ----------
s = open(PAD, encoding='utf-8').read()
r1 = re.compile(r'const/16 v2, 0x1(\n+    if-lt v1, v2, :dl_min)')
c = len(r1.findall(s)); assert c == 1, ("d1", c)
s = r1.sub(r'const/16 v2, 0x2\1', s, count=1)
r2 = re.compile(r'(:dl_min\n+    const/16 v1, )0x1')
c = len(r2.findall(s)); assert c == 1, ("d2", c)
s = r2.sub(r'\g<1>0x2', s, count=1)
open(PAD, 'w', encoding='utf-8').write(s)
print("① OK: 延迟下限 → 2h")

# ---------- ② 目标平滑字段+块 ----------
s = open(PAM, encoding='utf-8').read()
anchor = ".field public adStartGh:I"
assert s.count(anchor) == 1, ("fld", s.count(anchor))
s = s.replace(anchor, anchor + "\n\n.field public adFxTgtX:F\n\n.field public adFxTgtY:F", 1)
open(PAM, 'w', encoding='utf-8').write(s)
print("②a OK: adFxTgtX/Y 字段已添加")

s = open(PDA, encoding='utf-8').read()
anchor2 = "    :no_conv\n"
assert s.count(anchor2) == 1, ("noconv", s.count(anchor2))
blk = (
"    # r6d244：目标坐标平滑（换省 200px 跳变 → 限速滑翔；±8px/帧）\n"
"    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtX:F\n"
"    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtY:F\n"
"    int-to-float v2, v6\n"
"    int-to-float v3, v7\n"
"    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
"    if-eqz v1, :tgs_raw\n"
"    sub-float v1, v2, v4\n"
"    const v11, 0x41000000    # 8.0f\n"
"    cmpl-float v12, v1, v11\n"
"    if-lez v12, :tgs_xb\n"
"    move v1, v11\n"
"    :tgs_xb\n"
"    const v11, 0xc1000000    # -8.0f\n"
"    cmpl-float v12, v1, v11\n"
"    if-gez v12, :tgs_xc\n"
"    move v1, v11\n"
"    :tgs_xc\n"
"    add-float v4, v4, v1\n"
"    sub-float v1, v3, v5\n"
"    const v11, 0x41000000    # 8.0f\n"
"    cmpl-float v12, v1, v11\n"
"    if-lez v12, :tgs_yb\n"
"    move v1, v11\n"
"    :tgs_yb\n"
"    const v11, 0xc1000000    # -8.0f\n"
"    cmpl-float v12, v1, v11\n"
"    if-gez v12, :tgs_yc\n"
"    move v1, v11\n"
"    :tgs_yc\n"
"    add-float v5, v5, v1\n"
"    goto :tgs_wr\n"
"    :tgs_raw\n"
"    move v4, v2\n"
"    move v5, v3\n"
"    :tgs_wr\n"
"    iput v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtX:F\n"
"    iput v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtY:F\n"
"    float-to-int v6, v4\n"
"    float-to-int v7, v5\n"
)
s = s.replace(anchor2, anchor2 + blk, 1)
open(PDA, 'w', encoding='utf-8').write(s)
print("②b OK: 目标平滑块已插入")

# ---------- ③ 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d244', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("③ OK: nABOOT v=r6d244")