#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d190_ring.py —— 判定实验②：把"作战半径环"(drawAirForceCircles, airCircle.png 白环)
的 tint 从 WHITE 改成 RED（只改这一个方法内的两处，别处不动）
用法: python3 _patch_r6d190_ring.py [smali树]
纪律: 方法域内计数必须==2 → 全绿才写盘；备份 .pre_r6d190
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
SIG = "drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"

def main():
    src = open(F, encoding="utf-8").read()
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(SIG), src, re.S | re.M)
    assert m, "找不到 " + SIG
    body = m.group(1)
    old = "    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\n"
    n = body.count(old)
    print("  [锚点] drawAirForceCircles 内 Color->WHITE 命中 %d（要求 2）" % n)
    if n != 2:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    new = "    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;\n"
    src = src[:m.start(1)] + body.replace(old, new) + src[m.end(1):]
    bak = F + ".pre_r6d190"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(src)
    print("  ✅ 已写盘：作战半径环 tint → RED（实验）")

if __name__ == "__main__":
    main()