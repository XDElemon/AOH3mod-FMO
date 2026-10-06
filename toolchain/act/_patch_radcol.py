#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_radcol.py —— 按 airradcol.expected 给"逐行雷达盘"(RadarBitmap) 着色（幂等）
用法: python3 _patch_radcol.py [smali树]
纪律: 锚点先验（方法域内命中==1）→ 全绿才写盘；备份 .pre_r6d185（不存在才备份）
"""
import os, re, struct, sys, shutil

HERE = os.path.dirname(os.path.abspath(__file__))
REL = "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali"
NL = "\n\n"          # 本树每条指令之间都有空行

def f2h(x):
    return "0x%08x" % struct.unpack("<I", struct.pack("<f", float(x)))[0]

def expected():
    vals = []
    for ln in open(os.path.join(HERE, "airradcol.expected"), encoding="utf-8"):
        ln = ln.split("#")[0].strip()
        if ln:
            vals.append([float(t) for t in ln.split()])
    assert len(vals) == 2 and len(vals[0]) == 3, "airradcol.expected 应为 行1 'R G B' / 行2 'alpha'"
    return vals[0], vals[1][0]

def method_span(src, sig):
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(sig), src, re.S | re.M)
    assert m, "找不到方法 " + sig
    return m.start(1), m.end(1)

def main():
    tree = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
    F = os.path.join(tree, REL)
    (R, G, B), A = expected()
    src = open(F, encoding="utf-8").read()
    ok = True

    # ---------- 1) refresh(): 填色四常量 ----------
    s0, e0 = method_span(src, "refresh()V")
    body = src[s0:e0]
    pat = re.compile(
        r"(\s*)const v1, 0x[0-9a-fA-F]{8}[^\n]*" + re.escape(NL) +
        r"(\s*)const v2, 0x[0-9a-fA-F]{8}[^\n]*" + re.escape(NL) +
        r"(\s*)const(?:/high16)? v3, 0x[0-9a-fA-F]{8}[^\n]*" + re.escape(NL) +
        r"(\s*)const(?:/high16)? v4, 0x[0-9a-fA-F]{8}[^\n]*")
    n = len(pat.findall(body))
    print("  [锚点] refresh 填色四常量块：命中 %d（要求 1）" % n)
    ok = ok and n == 1
    if n == 1:
        new = (r"\g<1>" + "const v1, %s    # R" % f2h(R) + NL +
               r"\g<2>" + "const v2, %s    # G" % f2h(G) + NL +
               r"\g<3>" + "const/high16 v3, %s    # B" % f2h(B) + NL +
               r"\g<4>" + "const/high16 v4, 0x3f800000    # A（盘内不透明度，保持 1.0）")
        src = src[:s0] + pat.sub(new, body, count=1) + src[e0:]

    # ---------- 2) draw(): 绘制整体 alpha ----------
    s0, e0 = method_span(src, "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    body = src[s0:e0]
    pat2 = re.compile(r"(\s*)const v3, 0x[0-9a-fA-F]{8}[^\n]*" + re.escape(NL) +
                      r"(\s*)invoke-virtual \{p0, v0, v1, v2, v3\}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor\(FFFF\)V")
    n2 = len(pat2.findall(body))
    print("  [锚点] draw 整体 alpha：命中 %d（要求 1）" % n2)
    ok = ok and n2 == 1
    if n2 == 1:
        new2 = (r"\g<1>" + "const v3, %s    # alpha" % f2h(A) + NL +
                r"\g<2>" + "invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V")
        src = src[:s0] + pat2.sub(new2, body, count=1) + src[e0:]

    if not ok:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    bak = F + ".pre_r6d185"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(src)
    print("  ✅ 已写盘：R=%.2f G=%.2f B=%.2f  alpha=%.2f（其余指令原样保留）" % (R, G, B, A))

if __name__ == "__main__":
    main()