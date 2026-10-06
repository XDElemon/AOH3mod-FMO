#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d205_probe.py —— 只读探针：搞清"玩家门"的真值（不改任何观感）
- 新增字段 probeN:I（限流：只打前 6 行）
- 新增方法 probeGate(IIII)V（pid, provCiv, playerCiv, isEnemy）→ dWrite 一行 nADG
- 在 refreshAd 的门外调用它（放在 isEnemyProvince 之后、if-nez 之前）
纪律：锚点先验 → 全绿才写盘；备份 .pre_r6d205
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
RB = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
NL = "\n\n"

FIELD = """
.field public static probeN:I
"""

METHOD = """
# ============================================================
# r6d205（只读探针）：把"玩家门"的真值打出来
#   nADG p=<省id> c=<省civ> pc=<player.civ> e=<isEnemyProvince>
#   只打前 6 行（probeN 限流），走 dWrite（免节流）
# ============================================================
.method public static probeGate(IIII)V
    .registers 12

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeN:I

    const/4 v1, 0x6

    if-ge v0, v1, :skip

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nADG p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeN:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeN:I

    :skip
    return-void
.end method
"""

# 探针插入点：isEnemyProvince 调用之后（在 if-nez 门之前）
A = ("    invoke-static {v10}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->isEnemyProvince(Laoc/kingdoms/lukasz/map/province/Province;)Z" + NL +
     "    move-result v11\n")
N = A + NL + """    # r6d205：只读探针 —— 记录本人的省/玩家 civ/门的真值（前 6 行）
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v13, :nopc

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    goto :havepc

    :nopc
    const/4 v13, -0x1

    :havepc
    invoke-static {v7, v12, v13, v11}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeGate(IIII)V
"""

def main():
    s = open(RB, encoding="utf-8").read()
    if ".field public static probeN:I" not in s:
        a = ".field public static adBmp:Lcom/badlogic/gdx/graphics/Pixmap;"
        assert s.count(a) == 1, "字段锚点异常"
        s = s.replace(a, a + NL + FIELD.strip() + NL, 1)
        print("  ✅ 字段 probeN 已加")
    if "probeGate(IIII)V" not in s:
        a2 = ".method public static dbgPix()V"
        assert s.count(a2) == 1, "方法锚点异常"
        s = s.replace(a2, METHOD.strip() + NL + NL + a2, 1)
        print("  ✅ probeGate() 已插到类级别")
    if "probeGate(IIII)V" not in s.split(A)[1][:300]:
        assert s.count(A) == 1, "门外锚点异常"
        s = s.replace(A, N, 1)
        print("  ✅ 门外已加探针调用")
    bak = RB + ".pre_r6d205"
    if not os.path.exists(bak):
        shutil.copy2(RB, bak)
    open(RB, "w", encoding="utf-8").write(s)

if __name__ == "__main__":
    main()