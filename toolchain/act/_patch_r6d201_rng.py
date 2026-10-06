#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d201_rng.py —— 改防空射程基线（参数在 airrange.expected）
三处同源一起改：
  ① AirDefense.inRange（判定）   ② AirDefDiag.inR（诊断镜像）   ③ RadarBitmap.refreshAd（圈）
每处两个常量：base（无雷达）与 base×mult（有雷达）
纪律：锚点先验（每处命中==1）→ 全绿才写盘；备份 .pre_r6d201
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
HERE = os.path.dirname(os.path.abspath(__file__))

def expected():
    vals = [l.split("#")[0].strip() for l in open(os.path.join(HERE, "airrange.expected"), encoding="utf-8")]
    vals = [v for v in vals if v]
    base, mult = int(vals[0]), float(vals[1])
    return base, mult, int(round(base * mult))

SITES = [
    ("map/battles/AirDefense.smali", "v13"),
    ("map/battles/AirDefDiag.smali", "v15"),
    ("map/province/RadarBitmap.smali", "v11"),
]

def main():
    base, mult, r2 = expected()
    print("  参数：base=%d ×%.2f ⇒ %d" % (base, mult, r2))
    plan = []
    for rel, reg in SITES:
        F = os.path.join(TREE, "aoc/kingdoms/lukasz", rel)
        src = open(F, encoding="utf-8").read()
        pairs = []
        # 旧值识别：base 可能是 0x12c(300)；bonus 现在是 const/16（r6d185 起）也可能是老写法
        m_base = re.search(r"    const/16 %s, 0x[0-9a-f]+    #[^\n]*\n" % reg, src)
        hits = re.findall(r"    const/16 %s, 0x[0-9a-f]+    #[^\n]*\n" % reg, src)
        print("  [%s] const/16 %s 命中 %d（要求 2：base + bonus）" % (rel.split('/')[-1], reg, len(hits)))
        if len(hits) != 2:
            print("  ❌ 锚点校验失败（期望 2 个：base 与 bonus），未写盘"); sys.exit(2)
        new1 = "    const/16 %s, 0x%x    # %d（base）\n" % (reg, base, base)
        new2 = "    const/16 %s, 0x%x    # %d（base ×%.2f，与判定同源）\n" % (reg, r2, r2, mult)
        out = src.replace(hits[0], new1, 1).replace(hits[1], new2, 1)
        plan.append((F, out))
    for F, out in plan:
        bak = F + ".pre_r6d201"
        if not os.path.exists(bak):
            shutil.copy2(F, bak)
        open(F, "w", encoding="utf-8").write(out)
        print("  ✅ %s" % F.split('/')[-1])

if __name__ == "__main__":
    main()