#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d195_cleanup.py —— 收尾清理（只动两处，最小改动）
  ① 删掉 drawAirForce 里对 drawAirForceCircles（作战半径环）的调用整行 —— 用户裁定"可以没了"
  ② 修正自证串（上一次 sed 漏匹配，串停在 r6d190）
不改：贴图盘三段（仍为 α=0 的显式废弃状态，注释已写）、RadarBitmap 的颜色（只是把 α 调到 0.40）
纪律：锚点先验 ==1 → 全绿才写盘；备份 .pre_r6d195
"""
import os, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
D = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

CALL = "    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n"

def main():
    src = open(F, encoding="utf-8").read()
    n = src.count(CALL)
    print("  [锚点] drawAirForceCircles 调用行 命中 %d（要求 1）" % n)
    if n != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    note = "    # r6d195：作战半径环调用已按用户裁定删除（原行：" + "drawAirForceCircles" + "）\n"
    src = src.replace(CALL, note, 1)
    bak = F + ".pre_r6d195"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(src)
    print("  ✅ 已删除作战半径环调用（留一行注释说明）")

    d = open(D, encoding="utf-8").read()
    import re
    m = re.search(r"nABOOT v=r6d\d+", d)
    print("  [自证串] 当前 =", m.group(0) if m else "(无)")
    if m:
        d2 = re.sub(r"nABOOT v=r6d\d+", "nABOOT v=r6d195", d, count=1)
        open(D, "w", encoding="utf-8").write(d2)
        print("  ✅ 自证串 → nABOOT v=r6d195")

if __name__ == "__main__":
    main()