#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_adcol.py —— 按 adcol.expected 给防空射程圈（refreshAd 层）上色 + 设透明度
① refreshAd 里的 Pixmap 填色 R/G/B（写死在 Pixmap 像素里）
② draw() 里 AD 层 tint 的 alpha
纪律：锚点先验 → 全绿才写盘；备份 .pre_r6d202
"""
import os, re, struct, sys, shutil
HERE = os.path.dirname(os.path.abspath(__file__))
F = os.path.join(sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali",
                 "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")

def f2h(x):
    return "0x%08x" % struct.unpack("<I", struct.pack("<f", float(x)))[0]

vals = [[float(t) for t in l.split("#")[0].split()] for l in open(os.path.join(HERE, "adcol.expected"), encoding="utf-8") if l.split("#")[0].strip()]
(R, G, B), A = vals[0], vals[1][0]
s = open(F, encoding="utf-8").read()
# ① refreshAd 的填色三常量（现为 0x3f4ccccd/0x3e4ccccd/0x3e4ccccd）
pat = re.compile(r"    const v1, 0x[0-9a-f]+    # R=0\.8[^\n]*\n(\s*\n)    const v2, 0x[0-9a-f]+    # G=0\.2[^\n]*\n(\s*\n)    const v3, 0x[0-9a-f]+    # B=0\.2[^\n]*\n")
n = len(pat.findall(s))
print("  [锚点] refreshAd 填色三常量 命中 %d（要求 1）" % n)
# ② draw 里 AD 层 alpha（# alpha=0.45（可调））
pat2 = re.compile(r"    const v4, 0x[0-9a-f]+    # alpha=[0-9.]+[^\n]*\n")
n2 = len(pat2.findall(s))
print("  [锚点] AD层 alpha 命中 %d（要求 1）" % n2)
if n != 1 or n2 != 1:
    print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
s = pat.sub(lambda m: "    const v1, %s    # R\n%s    const v2, %s    # G\n%s    const v3, %s    # B\n" % (f2h(R), m.group(1), f2h(G), m.group(2), f2h(B)), s, count=1)
s = pat2.sub("    const v4, %s    # AD层 alpha（参数文件 adcol.expected 行2）\n" % f2h(A), s, count=1)
bak = F + ".pre_r6d202"
if not os.path.exists(bak): shutil.copy2(F, bak)
open(F, "w", encoding="utf-8").write(s)
print("  ✅ 已写盘：AD圈 RGB=%.2f/%.2f/%.2f  alpha=%.2f" % (R, G, B, A))
