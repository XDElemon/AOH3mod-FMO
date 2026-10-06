#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d194_tint.py —— 修 RadarBitmap.draw 的 tint 类型 bug（真正让雷达盘有颜色的那一行）
现状（错）：const/4 v0,0x1 / v1 / v2  → 是【整数 1】，当浮点读≈0 ⇒ tint=(0,0,0,α) ⇒ 盘被乘成黑色
正确    ：const/high16 vX,0x3f800000  → 1.0f ⇒ tint=(1,1,1,α) ⇒ 显示 Pixmap 本身的颜色
纪律：方法域内锚点先验 → 全绿才写盘；备份 .pre_r6d194
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
SIG = "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"
NL = "\n\n"

OLD = ("    const/4 v0, 0x1" + NL + "    const/4 v1, 0x1" + NL + "    const/4 v2, 0x1" + NL)
NEW = ("    const/high16 v0, 0x3f800000    # R=1.0f（r6d194：原来误写成 const/4 整数1，浮点读出≈0 ⇒ 盘被乘黑）" + NL +
       "    const/high16 v1, 0x3f800000    # G=1.0f" + NL +
       "    const/high16 v2, 0x3f800000    # B=1.0f" + NL)

def main():
    src = open(F, encoding="utf-8").read()
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(SIG), src, re.S | re.M)
    assert m, "找不到 " + SIG
    body = m.group(1)
    n = body.count(OLD)
    print("  [锚点] draw 内 tint 三常量块 命中 %d（要求 1）" % n)
    if n != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    src = src[:m.start(1)] + body.replace(OLD, NEW, 1) + src[m.end(1):]
    bak = F + ".pre_r6d194"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(src)
    print("  ✅ 已写盘：tint R/G/B → 1.0f（浮点）")

if __name__ == "__main__":
    main()