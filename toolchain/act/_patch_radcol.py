#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_radcol.py —— 按 airradcol.expected 给"逐行雷达盘"(RadarBitmap) 着色
用法: python3 _patch_radcol.py /tmp/w3a/smali
纪律: 锚点先验(每处命中数必须==1) → 全部通过才写盘；备份 .pre_r6d185
"""
import os, re, struct, sys, shutil

HERE = os.path.dirname(os.path.abspath(__file__))

def f2h(x):
    return "0x%08x" % struct.unpack("<I", struct.pack("<f", float(x)))[0]

def read_expected():
    p = os.path.join(HERE, "airradcol.expected")
    vals = []
    for ln in open(p, encoding="utf-8"):
        ln = ln.split("#")[0].strip()
        if ln:
            vals.append([float(t) for t in ln.split()])
    assert len(vals) == 2 and len(vals[0]) == 3, "airradcol.expected 格式应为: 行1 'R G B' / 行2 'alpha'"
    return vals[0], vals[1][0]

def main():
    tree = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
    F = os.path.join(tree, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
    assert os.path.isfile(F), "找不到 " + F
    (R, G, B), A = read_expected()
    src = open(F, encoding="utf-8").read()

    # 锚点1：refresh() 填色四常量（用 2 行上下文保证唯一；v3 的 1.0f 在本文件出现 2 次）
    NL = "\n\n"   # 本树每条指令之间都有空行
    a1 = ("    const v1, 0x3edcdcdd" + NL + "    const v2, 0x3f39b9ba" + NL +
          "    const/high16 v3, 0x3f800000    # 1.0f" + NL +
          "    const/high16 v4, 0x3f800000    # 1.0f\n")
    n1 = ("    const v1, %s    # %.2ff" % (f2h(R), R) + NL +
          "    const v2, %s    # %.2ff" % (f2h(G), G) + NL +
          "    const/high16 v3, %s    # %.2ff" % (f2h(B), B) + NL +
          "    const/high16 v4, 0x3f800000    # 1.0f\n")

    # 锚点2：draw() 整体透明度（const v3,0x3e4ccccd #0.2f 全文件仅 1 次）
    a2 = "    const v3, 0x3e4ccccd    # 0.2f\n"
    n2 = "    const v3, %s    # %.2ff\n" % (f2h(A), A)

    checks = [("refresh填色块", a1, 1), ("draw透明度", a2, 1)]
    for name, a, want in checks:
        got = src.count(a)
        print("  [锚点] %-12s 命中 %d（要求 %d）" % (name, got, want))
        if got != want:
            print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)

    out = src.replace(a1, n1).replace(a2, n2)
    bak = F + ".pre_r6d185"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(out)
    print("  ✅ 已写盘：R=%.2f G=%.2f B=%.2f  alpha=%.2f" % (R, G, B, A))
    print("     备份: " + bak)

if __name__ == "__main__":
    main()