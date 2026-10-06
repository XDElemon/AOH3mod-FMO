#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d192_probe.py —— 只读探针：把 RadarBitmap 那张 Pixmap 里"第一个不透明像素"的真实 ARGB
打进 aircfg_diag.txt（dWrite，免节流），用于判定"填色到底有没有落到像素上"。
- 新增独立静态方法 dbgPix()V（不碰任何原寄存器）
- 在 refresh() 的 :cond_d7 处插一行 invoke-static（无参数，安全）
纪律：锚点先验 ==1 → 全绿才写盘；备份 .pre_r6d192
"""
import os, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
NL = "\n\n"

PROBE = """
.method public static dbgPix()V
    .registers 8

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :done

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    const/4 v3, 0x0

    :yloop
    if-ge v3, v2, :none

    const/4 v4, 0x0

    :xloop
    if-ge v4, v1, :ynext

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x18

    if-eqz v6, :xnext

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nRBM px="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void

    :xnext
    add-int/lit8 v4, v4, 0x8

    goto/16 :xloop

    :ynext
    add-int/lit8 v3, v3, 0x8

    goto/16 :yloop

    :none
    const-string v0, "nRBM pxnone"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :done
    return-void
.end method
"""

ANCHOR = ("    :cond_d7\n" +   # 注意：本处标签与下一条指令之间【没有】空行
          "    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;\n")
INSERT = ("    :cond_d7\n" +
          "    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dbgPix()V" + NL +
          "    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;\n")

def main():
    src = open(F, encoding="utf-8").read()
    n = src.count(ANCHOR)
    print("  [锚点] refresh 内 :cond_d7 → tex 段 命中 %d（要求 1）" % n)
    if n != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    assert "dbgPix()V" not in src, "探针已存在"
    src = src.replace(ANCHOR, INSERT, 1)
    # 探针方法插到 isEnemyProvince 之前（合法位置：类体内、方法之间）
    anchor2 = ".method private static isEnemyProvince("
    assert src.count(anchor2) == 1
    src = src.replace(anchor2, PROBE.strip() + "\n\n" + anchor2, 1)
    bak = F + ".pre_r6d192"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(src)
    print("  ✅ 已写盘：新增 dbgPix()V ＋ refresh 内 1 行调用")

if __name__ == "__main__":
    main()