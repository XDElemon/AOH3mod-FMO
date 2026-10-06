#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d188_tint.py —— 判定实验：给"贴图盘三段"上纯绿、给"飞机雷达圈"上纯蓝
（逐行盘的纯红由 _patch_radcol.py + airradcol.expected 负责）
纪律：锚点先验（命中数必须等于要求值）→ 全绿才写盘；备份 .pre_r6d188
"""
import os, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
NL = "\n\n"

# 贴图盘三段：tint (1,1,1,1) → 纯绿 (0,1,0,1)
OLD3 = ("    const/high16 v10, 0x3f800000    # 1.0f" + NL +
        "    const/high16 v11, 0x3f800000    # 1.0f" + NL +
        "    const/high16 v12, 0x3f800000    # 1.0f" + NL +
        "    const v13, 0x3f800000    # 1.0f\n")
NEW3 = ("    const/high16 v10, 0x0    # R=0（实验）" + NL +
        "    const/high16 v11, 0x3f800000    # G=1（实验：绿）" + NL +
        "    const/high16 v12, 0x0    # B=0（实验）" + NL +
        "    const v13, 0x3f800000    # A=1\n")

# 飞机雷达圈：tint (1,1,1,?) → 纯蓝 (0,0,1,?)
OLD1 = ("    const/high16 v1, 0x3f800000    # 1.0f" + NL +
        "    const/high16 v3, 0x3f800000    # 1.0f" + NL +
        "    const/high16 v4, 0x3f800000    # 1.0f\n")
NEW1 = ("    const/high16 v1, 0x0    # R=0（实验）" + NL +
        "    const/high16 v3, 0x0    # G=0（实验）" + NL +
        "    const/high16 v4, 0x3f800000    # B=1（实验：蓝）\n")

def main():
    src = open(F, encoding="utf-8").read()
    n3, n1 = src.count(OLD3), src.count(OLD1)
    print("  [锚点] 贴图盘三段 tint 命中 %d（要求 3）" % n3)
    print("  [锚点] 飞机雷达圈 tint 命中 %d（要求 1）" % n1)
    if n3 != 3 or n1 != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    out = src.replace(OLD3, NEW3).replace(OLD1, NEW1)
    bak = F + ".pre_r6d188"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(out)
    print("  ✅ 已写盘：贴图盘×3 → 绿；飞机雷达圈 → 蓝")

if __name__ == "__main__":
    main()