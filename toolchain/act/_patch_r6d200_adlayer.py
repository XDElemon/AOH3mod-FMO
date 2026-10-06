#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d200_adlayer.py —— 把"防空射程圈"改成逐行绘制的红色层（并去掉旧的贴图红圈）
做了什么：
  ① RadarBitmap 新增 3 个字段：adBmp(Pixmap) / adTex(Texture) / adRegion(TextureRegion)
  ② initBitmap 里同时分配 adBmp（与主图同尺寸/格式）
  ③ 新增 refreshAd()：清屏→红→遍历 radarProvinces→只画"有反导阵地"的省→
     圆心=Real中心、半径=Real的 R(300/390)、纵向=×AirLat.f(中心Y) → drawRadarEllipse 逐行填盘
  ④ refresh() 末尾调用 refreshAd()
  ⑤ draw() 里在主层之后以独立的 α 画 adRegion（重叠不变亮）
  ⑥ ProvinceDrawArmy：删除旧的"贴图红圈"D4 整块（含 :d4_skip）
纪律：锚点先验 ==1 → 全绿才写盘；备份 .pre_r6d200
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
RB = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
PDA = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
NL = "\n\n"

FIELDS = """
.field public static adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

.field public static adTex:Lcom/badlogic/gdx/graphics/Texture;

.field public static adRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
"""

NEW_METHOD = """
# ============================================================
# r6d200：防空射程"逐行自绘"层（红）
#   · 圆心 = 省中心（getCenterX_Real/getCenterY_Real）—— 与 AirDefense.inRange 同源
#   · 半径 = Real 的 R（有雷达=390 / 只有阵地=300）—— 与判定同源
#   · 纵向 = R × AirLat.f(省中心Y) —— 与判定的纬度口径同源
#   · 逐行填进同一张 Pixmap ⇒ 两圈重叠**不会变亮**
# ============================================================
.method public static refreshAd()V
    .registers 16

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :done

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    if-lez v1, :done

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    if-lez v1, :done

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    const v1, 0x3f4ccccd    # R=0.8

    const v2, 0x3e4ccccd    # G=0.2

    const v3, 0x3e4ccccd    # B=0.2

    const/high16 v4, 0x3f800000    # A=1.0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :finish

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v5, :finish

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :loop
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :finish

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v9

    if-eqz v9, :loop

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    if-eqz v10, :loop

    const/16 v11, 0x12c    # 300（只有阵地）

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v9

    if-eqz v9, :ad_add

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v9

    if-eqz v9, :ad_add

    goto :ad_done

    :ad_add
    const/16 v11, 0x186    # 390（雷达+阵地 ⇒ ×1.3）

    :ad_done
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v9

    sget v12, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sub-int/2addr v9, v12

    sget v12, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    mul-int/2addr v9, v12

    sget v12, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    div-int/2addr v9, v12

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    sub-int/2addr v12, v13

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    mul-int/2addr v12, v13

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    div-int/2addr v12, v13

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    mul-int v13, v11, v13

    sget v14, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    div-int/2addr v13, v14

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/battles/AirLat;->f(I)F

    move-result v15

    int-to-float v14, v11

    mul-float/2addr v14, v15

    sget v15, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    sget v15, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v0, v9, v12, v13, v14}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->drawRadarEllipse(Lcom/badlogic/gdx/graphics/Pixmap;IIII)V

    goto/16 :loop

    :finish
    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adTex:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v1, :newtex

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    goto/16 :done

    :newtex
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adTex:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :done
    return-void
.end method
"""

def main():
    s = open(RB, encoding="utf-8").read()
    # ① 字段
    fa = ".method private static isEnemyProvince("
    assert s.count(fa) == 1, "字段插入锚点异常"
    if ".field public static adBmp" not in s:
        s = s.replace(fa, FIELDS.strip() + "\n\n" + fa, 1)
        print("  ✅ 字段 adBmp/adTex/adRegion 已加")
    # ② initBitmap 里分配 adBmp
    a2 = ("    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;\n")
    n2 = a2 + NL + """    # r6d200：AD 射程层用同尺寸同格式的第二张 Pixmap
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;
"""
    if "adBmp:Lcom/badlogic/gdx/graphics/Pixmap;" not in s.split(".method public static refreshAd")[0]:
        pass
    if "r6d200：AD 射程层" not in s:
        c = s.count(a2)
        print("  [锚点] initBitmap 的 bmp sput 命中 %d（要求 1）" % c)
        if c != 1:
            print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
        s = s.replace(a2, n2, 1)
        print("  ✅ initBitmap 已分配 adBmp")
    # ③ 新方法
    if "refreshAd()V" not in s:
        anchor = ".method private static isEnemyProvince("
        s = s.replace(anchor, NEW_METHOD.strip() + NL + NL + anchor, 1)
        print("  ✅ refreshAd() 已插入")
    # ④ refresh 末尾调用（插在 dbgPix 调用之后）
    a4 = "    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dbgPix()V\n"
    c4 = s.count(a4)
    print("  [锚点] refresh 内 dbgPix 调用 命中 %d（要求 1）" % c4)
    if c4 != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    if "refreshAd()V" not in s.split(a4)[1][:200]:
        s = s.replace(a4, a4 + NL + "    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->refreshAd()V\n", 1)
        print("  ✅ refresh() 末尾已调用 refreshAd()")
    # ⑤ draw 里加 AD 层
    a5 = "    invoke-virtual/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V\n"
    c5 = s.count(a5)
    print("  [锚点] draw 内主层绘制 命中 %d（要求 1）" % c5)
    if c5 != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    n5 = a5 + NL + """    # r6d200：防空射程层（逐行自绘，红）——重叠不变亮
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :adskip

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x3ee66666    # alpha=0.45（可调）

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object v7, v0

    invoke-virtual/range {v6, v7, v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :adskip
"""
    s = s.replace(a5, n5, 1)
    print("  ✅ draw() 已加 AD 层绘制")
    bak = RB + ".pre_r6d200"
    if not os.path.exists(bak):
        shutil.copy2(RB, bak)
    open(RB, "w", encoding="utf-8").write(s)

    # ⑥ 删除 ProvinceDrawArmy 里旧的贴图红圈（D4 整块）
    p = open(PDA, encoding="utf-8").read()
    m = re.search(r"^(\s*# --- r6d182 D4 红色射程亮圈.*?)(\s*:d4_skip\n)", p, re.S | re.M)
    print("  [锚点] ProvinceDrawArmy D4 块 命中 %d（要求 1）" % (1 if m else 0))
    if not m:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    p2 = p[:m.start()] + "    # r6d200：旧的\"贴图红圈\"已删除——防空射程圈改由 RadarBitmap.refreshAd() 逐行自绘\n\n" + p[m.end():]
    bak2 = PDA + ".pre_r6d200"
    if not os.path.exists(bak2):
        shutil.copy2(PDA, bak2)
    open(PDA, "w", encoding="utf-8").write(p2)
    print("  ✅ ProvinceDrawArmy：D4 贴图红圈整块已删除")

if __name__ == "__main__":
    main()