#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d193_off.py —— 按用户裁定关闭三条路径（最小改动：只把"可见性"关掉）
  ① 贴图盘三段（drawAirForceRadarIcons 里 radarFill 三个分支）：tint alpha v13 → 0
  ② 作战半径环（drawAirForceCircles）：tint 由 Color.WHITE → Color.CLEAR（α=0）
  ③ 机场盘 drawAirForceRadar：本来第一行就是 return-void（保持）
不改：RadarBitmap（逐行盘）、drawAircraftRadar（飞机雷达）、D4 红圈、建筑图标
纪律：锚点先验（命中数必须等于要求值）→ 全绿才写盘；备份 .pre_r6d193
"""
import os, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")

OLD_A = "    const v13, 0x3f800000    # 1.0f\n"
NEW_A = "    const v13, 0x0    # A=0：贴图盘三段已废弃（r6d193）\n"
OLD_W = "    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\n"
NEW_W = "    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;\n"

def main():
    src = open(F, encoding="utf-8").read()
    # 只改 drawAirForceRadarIcons 与 drawAirForceCircles 两个方法域内
    import re
    def body(sig):
        m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(sig), src, re.S | re.M)
        assert m, "找不到 " + sig
        return m
    m1 = body("drawAirForceRadarIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    n1 = m1.group(1).count(OLD_A)
    print("  [锚点] 贴图盘三段 tint alpha 命中 %d（要求 3）" % n1)
    m2 = body("drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    n2 = m2.group(1).count(OLD_W)
    print("  [锚点] 作战半径环 tint(Color.WHITE) 命中 %d（要求 2）" % n2)
    if n1 != 3 or n2 != 2:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    # 逆序替换（先后面，避免偏移）
    src = src[:m2.start(1)] + m2.group(1).replace(OLD_W, NEW_W) + src[m2.end(1):]
    m1 = body("drawAirForceRadarIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    src = src[:m1.start(1)] + m1.group(1).replace(OLD_A, NEW_A) + src[m1.end(1):]
    bak = F + ".pre_r6d193"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(src)
    print("  ✅ 已写盘：贴图盘三段 → α=0（不可见）；作战半径环 → Color.CLEAR（不可见）")

if __name__ == "__main__":
    main()