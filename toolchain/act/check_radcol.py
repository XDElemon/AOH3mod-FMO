#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_radcol.py —— 门禁：逐行雷达盘着色是否 == airradcol.expected
用法: python3 check_radcol.py [smali树] [--selftest]
纪律: 检查一律"方法域"内计数（防同名指令在别处骗过）；--selftest 必须 5/5 负样本变红
"""
import os, re, struct, sys, tempfile, shutil

HERE = os.path.dirname(os.path.abspath(__file__))
REL = "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali"

def f2h(x):
    return "0x%08x" % struct.unpack("<I", struct.pack("<f", float(x)))[0]

def expected():
    vals = []
    for ln in open(os.path.join(HERE, "airradcol.expected"), encoding="utf-8"):
        ln = ln.split("#")[0].strip()
        if ln:
            vals.append([float(t) for t in ln.split()])
    return vals[0], vals[1][0]

def method_body(src, sig):
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(sig), src, re.S | re.M)
    return m.group(1) if m else ""

def check(tree, src=None):
    (R, G, B), A = expected()
    F = os.path.join(tree, REL)
    if src is None:
        src = open(F, encoding="utf-8").read()
    ref = method_body(src, "refresh()V")
    drw = method_body(src, "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    res = []
    def A_(name, cond, detail=""):
        res.append((name, bool(cond), detail))
    A_("S1 refresh R", ref.count("const v1, %s" % f2h(R)) == 1, "want %s" % f2h(R))
    A_("S2 refresh G", ref.count("const v2, %s" % f2h(G)) == 1, "want %s" % f2h(G))
    A_("S3 refresh B", ref.count("const/high16 v3, %s" % f2h(B)) == 1, "want %s" % f2h(B))
    A_("S4 refresh A=1.0", ref.count("const/high16 v4, 0x3f800000") == 1, "")
    A_("S5 refresh setColor(Pixmap)",
      len(re.findall(r"invoke-virtual \{v0, v1, v2, v3, v4\}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor\(FFFF\)V", ref)) == 1, "")
    A_("S6 draw alpha", drw.count("const v3, %s" % f2h(A)) == 1, "want %s" % f2h(A))
    A_("S8 tint R/G/B=1.0f", (drw.count("const/high16 v0, 0x3f800000")==1 and drw.count("const/high16 v1, 0x3f800000")==1 and drw.count("const/high16 v2, 0x3f800000")==1), "")
    A_("S9 无 const/4 整数tint", ("const/4 v0, 0x1" not in drw), "")
    A_("S7 无旧色残留", ("0x3edcdcdd" not in src) and ("0x3f39b9ba" not in src), "")
    return res

def negs():
    (R, G, B), A = expected()
    return [
        ("N1 R改回旧值", "const v1, %s" % f2h(R), "const v1, 0x3edcdcdd"),
        ("N2 G改回旧值", "const v2, %s" % f2h(G), "const v2, 0x3f39b9ba"),
        ("N3 R/G互写", "const v1, %s" % f2h(R), "const v1, %s" % f2h(G)),
        ("N4 alpha改成旧值0.2", "const v3, %s    # alpha" % f2h(A), "const v3, 0x3e4ccccd    # alpha"),
        ("N5 B压成0.5", "const/high16 v3, %s    # B" % f2h(B), "const/high16 v3, 0x3f000000    # B"),
        ("N6 alpha改成0.0", "const v3, %s    # alpha" % f2h(A), "const v3, 0x0    # alpha"),
        ("N8 tint退回const/4整数", "const/high16 v0, 0x3f800000    # R=1.0f", "const/4 v0, 0x1"),
        ("N7 R压成0.0", "const v1, %s    # R" % f2h(R), "const v1, 0x0    # R"),
    ]


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    tree = args[0] if args else "/tmp/w3a/smali"
    F = os.path.join(tree, REL)
    src = open(F, encoding="utf-8").read()

    print("=== 正检 ===")
    res = check(tree, src)
    for n, ok, d in res:
        print("  [%s] %-26s %s" % ("PASS" if ok else "FAIL", n, d))
    ok_all = all(o for _, o, _ in res)
    print("  正检 %d/%d %s" % (sum(1 for _, o, _ in res if o), len(res), "PASS" if ok_all else "FAIL"))

    if "--selftest" in sys.argv:
        print("=== 负样本自检（必须全部变红）===")
        bad = 0
        NEG=negs()
        for name, old, new in NEG:
            if old not in src:
                print("  [SKIP] %-16s 注入点不存在: %s" % (name, old)); bad += 1; continue
            r = check(tree, src.replace(old, new, 1))
            failed = not all(o for _, o, _ in r)
            print("  [%s] %-16s %s" % ("OK" if failed else "!!", name, "已变红" if failed else "没变红（门禁有洞）"))
            if not failed:
                bad += 1
        print("  负样本 %d/%d %s" % (len(NEG) - bad, len(NEG), "OK" if bad == 0 else "有问题"))
        sys.exit(0 if (ok_all and bad == 0) else 1)
    sys.exit(0 if ok_all else 1)

if __name__ == "__main__":
    main()