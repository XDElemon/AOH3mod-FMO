#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d185_polarity.py —— 修正 r6d182 起带的极性 bug（幂等：直接"设为正确极性"）
规则：同省"反导阵地 + 雷达(短波或长波)" ⇒ R = base × mult（其余保持 base）
正确分支形态（三处同源）：
    查短波  → if-eqz <reg>, :dX_add     （有短波 ⇒ 直接加成）
    查长波  → if-nez <reg>, :dX_done    （无长波 ⇒ 保持 base；有长波 ⇒ 落进加成）
错误形态（原来）：if-nez …:dX_add  +  if-eqz …:dX_done  ⇒ 语义整体反
纪律：每条锚点先验（按标签唯一命中）→ 全绿才写盘；备份 .pre_r6d185
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
SITES = [
    ("map/battles/AirDefense.smali", "v5", ":d2_add", ":d2_done"),
    ("map/battles/AirDefDiag.smali", "v10", ":d_inr_add", ":d_inr_done"),
    ("map/province/ProvinceDrawArmy.smali", "v2", ":d4_add", ":d4_done"),
]

def main():
    plan = []
    for rel, reg, ladd, ldone in SITES:
        F = os.path.join(TREE, "aoc/kingdoms/lukasz", rel)
        src = open(F, encoding="utf-8").read()
        p_radar = re.compile(r"^(\s*)(if-(?:nez|eqz)) (%s), (%s)\s*$" % (reg, re.escape(ladd)), re.M)
        p_lw = re.compile(r"^(\s*)(if-(?:nez|eqz)) (%s), (%s)\s*$" % (reg, re.escape(ldone)), re.M)
        m1, m2 = p_radar.search(src), p_lw.search(src)
        print("  [锚点] %-38s 短波分支 %s / 长波分支 %s" % (rel.split('/')[-1], bool(m1), bool(m2)))
        if not (m1 and m2):
            print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
        out = src[:m1.start()] + m1.group(1) + "if-eqz %s, %s" % (reg, ladd) + src[m1.end():]
        m2 = p_lw.search(out)
        out = out[:m2.start()] + m2.group(1) + "if-nez %s, %s" % (reg, ldone) + out[m2.end():]
        plan.append((F, out))

    for F, out in plan:
        bak = F + ".pre_r6d185"
        if not os.path.exists(bak):
            shutil.copy2(F, bak)
        open(F, "w", encoding="utf-8").write(out)
        print("  ✅ %s：极性已设为 (短波 if-eqz→add / 长波 if-nez→done)" % F.split('/')[-1])

if __name__ == "__main__":
    main()