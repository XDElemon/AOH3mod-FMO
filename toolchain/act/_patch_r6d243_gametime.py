#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d243_gametime.py
r6d243：追击改为“游戏钟进度插值”——彻底治愈“提前贴上/骑飞机”，并让速度跟随时间流速
- 新规则：进度 p = (现在游戏钟 − 发射钟) / (到达钟 − 发射钟)；位置 = 源 + (目标_now − 源) × p
  ⇒ p=1（伤害落下的同一刻）时导弹才与飞机重合；游戏加速 ⇒ 钟走得快 ⇒ 导弹同步加速。
- 新增字段 AirMission.adStartGh:I（发射时刻的游戏钟 = TURN_ID + HOUR），scheduleHit 开窗时写入。
- 删除 adFxStep 里旧的“真实毫秒配速 + 归航”整段（含 sqrt/距离/速度逻辑）。
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PAM = W + "/aoc/kingdoms/lukasz/map/battles/AirMission.smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

# ---------- A) AirMission 新字段 ----------
s = open(PAM, encoding='utf-8').read()
anchor = ".field public adFxY:F"
assert s.count(anchor) == 1, ("field", s.count(anchor))
s = s.replace(anchor, anchor + "\n\n.field public adStartGh:I", 1)
open(PAM, 'w', encoding='utf-8').write(s)
print("A OK: AirMission.adStartGh:I 已添加")

# ---------- B) scheduleHit 写发射钟 ----------
s = open(PAD, encoding='utf-8').read()
i0 = s.index(".method public static scheduleHit")
i1 = s.index(".end method", i0)
seg = s[i0:i1]
old = ("    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I\n"
       "\n"
       "    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I\n"
       "\n"
       "    add-int/2addr v0, v1\n")
assert seg.count(old) == 1, ("sch-anchor", seg.count(old))
seg = seg.replace(old, old + "\n    # r6d243：记录发射时刻（游戏钟）\n    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I\n", 1)
s = s[:i0] + seg + s[i1:]
open(PAD, 'w', encoding='utf-8').write(s)
print("B OK: scheduleHit 写入 adStartGh")

# ---------- C) adFxStep 整段替换为游戏钟插值 ----------
s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]
a = seg.index(':cond_21')
b = seg.index(':cond_5f', a)
new_block = (
":cond_21\n"
"    # r6d243：按游戏钟进度插值（全程制导；速度随游戏流速自动缩放）\n"
"    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I\n"
"    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I\n"
"    add-int/2addr v0, v1\n"
"    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I\n"
"    sub-int/2addr v0, v1\n"
"    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I\n"
"    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I\n"
"    sub-int/2addr v1, v2\n"
"    if-lez v1, :gh_min\n"
"    goto :gh_tok\n"
"    :gh_min\n"
"    const/4 v1, 0x1\n"
"    :gh_tok\n"
"    if-gez v0, :gh_eok\n"
"    const/4 v0, 0x0\n"
"    :gh_eok\n"
"    if-le v0, v1, :gh_clip\n"
"    goto :gh_cok\n"
"    :gh_clip\n"
"    move v0, v1\n"
"    :gh_cok\n"
"    int-to-float v2, v0\n"
"    int-to-float v3, v1\n"
"    div-float v2, v2, v3\n"
"    int-to-float v3, p3\n"
"    int-to-float v4, p1\n"
"    sub-float v3, v3, v4\n"
"    mul-float v3, v3, v2\n"
"    add-float v3, v3, v4\n"
"    int-to-float v4, p4\n"
"    int-to-float v5, p2\n"
"    sub-float v4, v4, v5\n"
"    mul-float v4, v4, v2\n"
"    add-float v4, v4, v5\n"
"    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F\n"
"    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F\n"
"    invoke-static {p0, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V\n"
"    return-void\n"
)
seg = seg[:a] + new_block + seg[b:]
s = s[:i0] + seg + s[i1:]
open(PDA, 'w', encoding='utf-8').write(s)
print("C OK: adFxStep 追击段 → 游戏钟插值")

# ---------- D) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d243', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("D OK: nABOOT v=r6d243")