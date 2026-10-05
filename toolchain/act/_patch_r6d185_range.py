#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d185_range.py —— 把"雷达加成"从 +150 改成 ×1.3（参数在 airrange.expected）
三处同源，必须一起改：
  ① map/battles/AirDefense.smali        inRange   （判定）
  ② map/battles/AirDefDiag.smali        inR       （诊断镜像）
  ③ map/province/ProvinceDrawArmy.smali D4 红圈半径（渲染）
纪律：锚点先验（每处命中必须==1）→ 全部通过才写盘；备份 .pre_r6d185
"""
import os, sys, shutil

HERE = os.path.dirname(os.path.abspath(__file__))

def expected():
    vals = []
    for ln in open(os.path.join(HERE, "airrange.expected"), encoding="utf-8"):
        ln = ln.split("#")[0].strip()
        if ln:
            vals.append(ln)
    base, mult = int(vals[0]), float(vals[1])
    r2 = int(round(base * mult))
    assert 0 < base < 0x7fff and 0 < r2 < 0x7fff, "射程必须是 const/16 可表示的正整数"
    return base, mult, r2

SITES = [
    ("map/battles/AirDefense.smali", "v13", ":d2_add", ":d2_done",
     "r6d185 射程：同省\"反导阵地+雷达(短波或长波)\" ⇒ 300 ×1.3；只有阵地 ⇒ 300；判定走 AirLat 同口径"),
    ("map/battles/AirDefDiag.smali", "v15", ":d_inr_add", ":d_inr_done",
     "r6d185 射程镜像：与 AirDefense.inRange 同口径（base / base×1.3 + AirLat 椭圆）"),
    ("map/province/ProvinceDrawArmy.smali", "v12", ":d4_add", ":d4_done",
     "r6d185 红圈半径：与 AirDefense.inRange 同口径（圈=判定范围）"),
]

def main():
    tree = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
    base, mult, r2 = expected()
    print("  参数：base=%d  ×%.2f  ⇒ R2=%d (0x%x)" % (base, mult, r2, r2))

    plan = []
    for rel, reg, ladd, ldone, note in SITES:
        F = os.path.join(tree, "aoc/kingdoms/lukasz", rel)
        assert os.path.isfile(F), "找不到 " + F
        src = open(F, encoding="utf-8").read()
        a_base = "    const/16 %s, 0x12c    # 300\n" % reg
        a_bonus = "    add-int/lit16 %s, %s, 0x96    # 450\n" % (reg, reg)
        n_base = "    const/16 %s, 0x%x    # %d\n" % (reg, base, base)
        n_bonus = "    const/16 %s, 0x%x    # %d\n" % (reg, r2, r2)
        for name, a in (("base", a_base), ("bonus", a_bonus)):
            got = src.count(a)
            print("  [锚点] %-38s %-5s 命中 %d（要求 1）" % (rel.split('/')[-1], name, got))
            if got != 1:
                print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
        # 注释横幅（可选：命中则替换）
        out = src.replace(a_base, n_base).replace(a_bonus, n_bonus)
        plan.append((F, out, rel, reg, r2))

    for F, out, rel, reg, r2 in plan:
        bak = F + ".pre_r6d185"
        if not os.path.exists(bak):
            shutil.copy2(F, bak)
        open(F, "w", encoding="utf-8").write(out)
        print("  ✅ %s：R2 → %d" % (rel.split('/')[-1], r2))
    print("  备份后缀：.pre_r6d185")

if __name__ == "__main__":
    main()