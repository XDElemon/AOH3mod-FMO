#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d200.py —— 防空射程圈"逐行自绘层"门禁
要点：①圆心/半径/纵向 与 AirDefense.inRange+AirLat 同源 ②必须是逐行画家（drawRadarEllipse）
     ③旧的"贴图红圈"D4 已删 ④雷达主层未被破坏
用法: python3 check_r6d200.py [smali树] [--selftest]
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))

RB = "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali"
PDA = "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
SIG_AD = "refreshAd()V"

def rng():
    vals = [l.split("#")[0].strip() for l in open(os.path.join(HERE, "airrange.expected"), encoding="utf-8")]
    vals = [v for v in vals if v]
    base = int(vals[0]); mult = float(vals[1])
    return base, int(round(base * mult))

def read(tree, rel):
    p = os.path.join(tree, rel)
    return open(p, encoding="utf-8").read() if os.path.isfile(p) else ""

def method(src, sig):
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(sig), src, re.S | re.M)
    return m.group(1) if m else ""

def check(tree, rb=None, pda=None):
    rb = rb if rb is not None else read(tree, RB)
    pda = pda if pda is not None else read(tree, PDA)
    ad = method(rb, SIG_AD)
    d = method(rb, "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    rf = method(rb, "refresh()V")
    res = []
    def A(n, c, x=""):
        res.append((n, bool(c), x))
    A("S1 三个新字段在", (".field public static adBmp" in rb) and (".field public static adTex" in rb) and (".field public static adRegion" in rb))
    A("S2 refreshAd() 存在", bool(ad))
    if ad:
        A("S3a 圆心用 getCenterX_Real", ad.count("getCenterX_Real()I") == 1)
        A("S3b 圆心用 getCenterY_Real", ad.count("getCenterY_Real()I") >= 1)
        A("S3c 圆心未用带偏移的 getAirDrawPosX/Y", ("getAirDrawPosX" not in ad) and ("getAirDrawPosY" not in ad))
        b_, r2_ = rng()
        A("S4a 有 base=%d 常量" % b_, ("const/16 v11, 0x%x" % b_) in ad)
        A("S4b 有 %d 常量（有雷达⇒×mult）" % r2_, ("const/16 v11, 0x%x" % r2_) in ad)
        A("S4c 极性：短波/长波都走 :ad_add", ad.count("if-eqz v9, :ad_add") == 2)
        A("S5 纵向用 AirLat.f（与判定同口径）", ad.count("AirLat;->f(I)F") == 1)
        A("S6 用逐行画家 drawRadarEllipse", ad.count("Pixmap;->fillRectangle") >= 0 and ad.count("RadarBitmap;->drawRadarEllipse") == 1)
        A("S6b 该层不用贴图 Image.draw", "Image;->draw" not in ad)
    A("S6c 纹理新建分支极性 if-eqz（空则新建）", ("if-eqz v1, :newtex" in ad) and ("if-nez v1, :newtex" not in ad))
    A("S6d AD层 tint 为浮点 1.0f（非 const/4 整数）", d.count("r6d200fix")==1 and "const/4 v1, 0x1" not in d)
    A("S7 refresh() 调用了 refreshAd()", rf.count("RadarBitmap;->refreshAd()V") == 1)
    A("S8 draw() 画了 adRegion", d.count("RadarBitmap;->adRegion") == 1)
    A("S9 旧 D4 贴图红圈已删", (":d4_skip" not in pda) and ("D4 红色射程亮圈" not in pda))
    A("S10 雷达主层未破坏（R=0.2 颜色 + tint 1.0f）", (rf.count("const v1, 0x3e4ccccd") == 1) and (d.count("const/high16 v0, 0x3f800000") == 1))
    return res

def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    tree = args[0] if args else "/tmp/w3a/smali"
    rb, pda = read(tree, RB), read(tree, PDA)
    res = check(tree, rb, pda)
    print("=== 正检 ===")
    for n, ok, x in res:
        print("  [%s] %-38s %s" % ("PASS" if ok else "FAIL", n, x))
    ok_all = all(o for _, o, _ in res)
    print("  正检 %d/%d %s" % (sum(1 for _, o, _ in res if o), len(res), "PASS" if ok_all else "FAIL"))

    if "--selftest" in sys.argv:
        print("=== 负样本自检（必须全部变红）===")
        NEG = [
            ("N1 圆心改用带偏移的 getAirDrawPosX", "invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I", "invoke-static {v7, v13}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I"),
            ("N2 去掉 AirLat.f（纵向不成比例）", "invoke-static {v14}, Laoc/kingdoms/lukasz/map/battles/AirLat;->f(I)F", "invoke-static {v14}, Laoc/kingdoms/lukasz/map/battles/AirLat;->zzz(I)F"),
            ("N3 漏掉雷达加成", "const/16 v11, 0x%x" % rng()[1], "const/16 v11, 0x%x" % rng()[0]),
            ("N4 删除 refresh 里的 refreshAd 调用", "    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->refreshAd()V\n", ""),
            ("N7 AD层 tint 退回 const/4 整数", "const/high16 v1, 0x3f800000    # R=1.0f（r6d200fix", "const/4 v1, 0x1    # R=1.0f（r6d200fix"),
            ("N6 纹理分支极性写反", "if-eqz v1, :newtex", "if-nez v1, :newtex"),
            ("N5 把 AD 层换回贴图绘制", "invoke-static {v0, v9, v12, v13, v14}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->drawRadarEllipse", "invoke-static {v0, v9, v12, v13, v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage"),
        ]
        bad = 0
        for name, old, new in NEG:
            if old not in rb:
                print("  [SKIP] %-26s 注入点不存在" % name); bad += 1; continue
            rb2 = rb.replace(old, new, 1) if new is not None else rb
            r = check(tree, rb2, pda)
            failed = not all(o for _, o, _ in r)
            print("  [%s] %-26s %s" % ("OK" if failed else "!!", name, "已变红" if failed else "没变红（门禁有洞）"))
            if not failed:
                bad += 1
        print("  负样本 %d/%d %s" % (len(NEG) - bad, len(NEG), "OK" if bad == 0 else "有问题"))
        sys.exit(0 if (ok_all and bad == 0) else 1)
    sys.exit(0 if ok_all else 1)

if __name__ == "__main__":
    main()