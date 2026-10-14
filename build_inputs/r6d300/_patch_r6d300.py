# -*- coding: utf-8 -*-
"""r6d300 补丁 v2：全屏布局。锚点=精确字节（指令间 \n\n 空行格式）。
先验全绿才写盘；双树同步；.pre_r6d300 备份。"""
import hashlib, os, sys, time

BATCH = "r6d300"
TREES = [
    "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali",
    "/root/history23_repo/src/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali",
]

INV1 = "    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;IZZ)V"
E1_OLD = (INV1 + "\n\n"
          "    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n\n"
          "    div-int/lit8 v0, v0, 0x2\n\n"
          "    div-int/lit8 v1, v10, 0x2\n\n"
          "    sub-int v3, v0, v1")
R1_NEW = (INV1 + "\n\n    move v3, v14")

E2_OLD = ("    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I\n\n"
          "    move-result v10")
R2_NEW = (E2_OLD + "\n\n"
          "    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n\n"
          "    sub-int/2addr v10, v14")

E3_OLD = ("    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;\n\n"
          "    const/4 v2, 0x0\n\n"
          "    invoke-direct {v1, v2, v2, v12, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V")
R3_NEW = ("    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I\n\n"
          "    move-result v3\n\n"
          "    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;\n\n"
          "    const/4 v2, 0x0\n\n"
          "    invoke-direct {v1, v2, v2, v12, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V")

E4_OLD = ("    mul-int v0, v0, v2\n\n"
          "    add-int/lit8 v19, v0, 0xf")
R4_NEW = (E4_OLD + "\n\n"
          "    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I\n\n"
          "    mul-int/lit8 v0, v0, 0x2\n\n"
          "    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I\n\n"
          "    add-int/2addr v0, v2\n\n"
          "    add-int/lit8 v0, v0, 0x5\n\n"
          "    add-int v19, v19, v0")

E5_OLD = ("    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I\n\n"
          "    div-int/lit8 v3, v3, 0x2\n\n"
          "    add-int/2addr v2, v3\n\n"
          "    return v2\n"
          ".end method")
R5_NEW = ("    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I\n\n"
          "    div-int/lit8 v3, v3, 0x2\n\n"
          "    add-int/2addr v2, v3\n\n"
          "    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I\n\n"
          "    mul-int/lit8 v0, v0, 0x2\n\n"
          "    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I\n\n"
          "    add-int/2addr v0, v1\n\n"
          "    add-int/lit8 v0, v0, 0x5\n\n"
          "    add-int/2addr v2, v0\n\n"
          "    return v2\n"
          ".end method")

PAIRS = [("E1", E1_OLD, R1_NEW), ("E2", E2_OLD, R2_NEW), ("E3", E3_OLD, R3_NEW),
         ("E4", E4_OLD, R4_NEW), ("E5", E5_OLD, R5_NEW)]

ok = True
for t in TREES:
    if not os.path.exists(t):
        print("MISSING", t); ok = False; continue
    s = open(t, encoding="utf-8").read()
    for name, old, new in PAIRS:
        c = s.count(old)
        print("PRE", t.split("/")[2], name, c)
        if c != 1: ok = False
if not ok:
    print("ABORT: anchor precheck failed"); sys.exit(1)

for t in TREES:
    raw = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak):
        open(bak, "w", encoding="utf-8").write(raw)
    s = raw
    for name, old, new in PAIRS:
        s = s.replace(old, new, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", t, hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))