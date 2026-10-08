#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d239_auditfix.py
r6d239：采纳审计报告两处硬伤（E1/E2）+ 一处兜底（F3）
E1/F1) AirDefense.fireProvince：命中极性 if-ltz→if-gtz（实测 20% ⇒ 恢复 rnd<=chance ≈80%）
E2/F2) ProvinceDrawArmy 源坐标块：if-nez v2,:src_fail → if-eqz v2,:src_fail
        （原：阵地省存在时却跳"退化=目标坐标" ⇒ 弹迹永远贴飞机 ≤60px；修正后=真正的阵地投影全路径）
F3)    源投影结果 −1（省数据缺失）时同样退化（两句 if-ltz v8/v9, :src_fail）
D)     nABOOT → r6d239
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

# ---------- F1) 命中极性 ----------
s = open(PAD, encoding='utf-8').read()
assert s.count("    if-ltz v9, :snext") == 1, ("F1-anchor", s.count("    if-ltz v9, :snext"))
s = s.replace("    if-ltz v9, :snext", "    if-gtz v9, :snext", 1)
old_c = "# r6d210：极性修正 —— roll<chance才命中（原来写反，实际只剩1-chance）"
new_c = "# r6d239：命中口径修正（审计实锤：原行实测 20%；改 if-gtz ⇒ rnd<=chance ≈80%）"
if old_c in s:
    s = s.replace(old_c, new_c, 1)
open(PAD, 'w', encoding='utf-8').write(s)
print("F1 OK: fireProvince 命中 if-ltz→if-gtz")

# ---------- F2) 源坐标分支 ----------
s = open(PDA, encoding='utf-8').read()
assert s.count("    if-nez v2, :src_fail") == 1, ("F2-anchor", s.count("    if-nez v2, :src_fail"))
s = s.replace("    if-nez v2, :src_fail", "    if-eqz v2, :src_fail", 1)
print("F2 OK: 源坐标 if-nez→if-eqz（省存在→投影；缺省→退化）")

# ---------- F3) 投影 −1 兜底 ----------
rx = re.compile(r'([ \t]+invoke-static \{v2\}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxScaleX\(I\)I\n\n[ \t]+move-result v8\n)')
assert len(rx.findall(s)) == 1, ("F3X-anchor", len(rx.findall(s)))
s = rx.sub(lambda m: m.group(1) + "\n    if-ltz v8, :src_fail\n", s, count=1)
ry = re.compile(r'([ \t]+invoke-static \{v2\}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxScaleY\(I\)I\n\n[ \t]+move-result v9\n)')
assert len(ry.findall(s)) == 1, ("F3Y-anchor", len(ry.findall(s)))
s = ry.sub(lambda m: m.group(1) + "\n    if-ltz v9, :src_fail\n", s, count=1)
print("F3 OK: 投影 −1 兜底（v8/v9<0 → :src_fail）")
open(PDA, 'w', encoding='utf-8').write(s)

# ---------- D) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d239', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("D OK: nABOOT v=r6d239")