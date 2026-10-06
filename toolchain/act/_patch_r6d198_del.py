#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d198_del.py —— 物理删除废弃路径（用户裁定）
删什么：
  ① drawAirForceRadarIcons 内三段"贴图盘绘制"（本就在 goto 之后的**不可达死代码**）
  ② drawAirForce 里对 drawAirForceCircles（作战半径环）的调用
  ③ drawAirForceCircles 方法整体（删调用后无人引用）
  ④ drawAirForceRadar 方法整体（方法体只有 return-void）＋ RendererGame$3 里的调用行
  ⑤ RadarSDF.smali 整文件（全 dex 无外部引用）
保留：drawAircraftRadar（飞机雷达）、D4 红圈、建筑图标、RadarBitmap
纪律：全部锚点先验（命中数必须等于期望）→ 全绿才写盘；备份 .pre_r6d198
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
RG3 = os.path.join(TREE, "aoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$3.smali")
SDF = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/RadarSDF.smali")
SIG_ICONS = "drawAirForceRadarIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"

def method_span(s, sig):
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n.*?^\.end method\n" % re.escape(sig), s, re.S | re.M)
    assert m, "找不到方法 " + sig
    return m

def main():
    # ---------- ① 三段不可达的贴图盘绘制 ----------
    s = open(PDA, encoding="utf-8").read()
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(SIG_ICONS), s, re.S | re.M)
    assert m, "找不到 drawAirForceRadarIcons"
    body = m.group(1)
    i = body.find("    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I")
    assert i >= 0, "找不到贴图盘绘制块起点"
    j = body.find("    goto :goto_101\n", i)
    assert j > i, "找不到块终点"
    blk = body[i:j + len("    goto :goto_101\n")]
    n = body.count(blk)
    print("  [锚点] 贴图盘死代码块 命中 %d（要求 3）" % n)
    if n != 3:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    note = "    # r6d198：贴图盘三段绘制已删除（原为 goto 之后的不可达死代码）\n\n"
    s = s[:m.start(1)] + body.replace(blk, note) + s[m.end(1):]

    # ---------- ② 作战半径环调用 ----------
    CALL = "    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n"
    n2 = s.count(CALL)
    print("  [锚点] drawAirForceCircles 调用 命中 %d（要求 1）" % n2)
    if n2 != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    s = s.replace(CALL, "    # r6d198：作战半径环调用已删除（用户裁定废弃）\n", 1)

    # ---------- ③④ 删方法整体 ----------
    for sig, label in [("drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", "作战半径环方法"),
                       ("drawAirForceRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", "机场雷达盘方法")]:
        mm = method_span(s, sig)
        cnt = len(re.findall(r"^\.method[^\n]*%s[^\n]*$" % re.escape(sig), s, re.M))
        print("  [锚点] %s 定义数 %d（要求 1）" % (label, cnt))
        if cnt != 1:
            print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
        s = s[:mm.start()] + ("# r6d198：%s 已整体删除\n\n" % label) + s[mm.end():]

    bak = PDA + ".pre_r6d198"
    if not os.path.exists(bak):
        shutil.copy2(PDA, bak)
    open(PDA, "w", encoding="utf-8").write(s)
    print("  ✅ ProvinceDrawArmy：① 死代码块×3 ② 环调用 ③ 两个方法 已删除")

    # ---------- ④b RendererGame$3 的调用行 ----------
    r = open(RG3, encoding="utf-8").read()
    RC = "    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n"
    if r.count(RC) != 1:
        # 兼容寄存器不同的写法：用正则
        pat = re.compile(r"^(\s*)invoke-static \{v\d+\}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceRadar\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;\)V\n", re.M)
        hits = pat.findall(r)
        print("  [锚点] RendererGame$3 里 drawAirForceRadar 调用 命中 %d（要求 1）" % len(hits))
        if len(hits) != 1:
            print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
        r = pat.sub("# r6d198：机场雷达盘调用已删除（方法体同批删除）\n", r, count=1)
    else:
        print("  [锚点] RendererGame$3 里 drawAirForceRadar 调用 命中 1（要求 1）")
        r = r.replace(RC, "# r6d198：机场雷达盘调用已删除（方法体同批删除）\n", 1)
    bak2 = RG3 + ".pre_r6d198"
    if not os.path.exists(bak2):
        shutil.copy2(RG3, bak2)
    open(RG3, "w", encoding="utf-8").write(r)
    print("  ✅ RendererGame$3：调用行已删除")

    # ---------- ⑤ RadarSDF 整文件 ----------
    if os.path.exists(SDF):
        dst = SDF + ".deleted_r6d198"
        if not os.path.exists(dst):
            shutil.move(SDF, dst)
        print("  ✅ RadarSDF.smali → 改名为 .deleted_r6d198（不进 dex）")
    else:
        print("  ℹ️ RadarSDF.smali 不存在（已删过）")

if __name__ == "__main__":
    main()