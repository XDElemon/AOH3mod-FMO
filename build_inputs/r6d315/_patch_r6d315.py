# -*- coding: utf-8 -*-
"""r6d315 v2（按真实空行格式）：
① relayoutNodes：Empty 横排元素所有页签都重设宽度（原仅 all）
② 余量 +100 → +40
③ 回退 r6d314 扫描 clamp（恢复原生公式）并移除 ensureMin 调用
"""
import os, sys, time
BATCH = "r6d315"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

NL = "\n\n"
EMPTY_GATE = ('    const-string v10, "all"' + NL +
              '    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z' + NL +
              '    move-result v12' + NL +
              '    if-eqz v12, :rn_resize' + NL +
              '    goto :rn_l4n' + NL +
              '    :rn_resize\n')
RESIZE_OLD = ('    :rn_resize\n'
              '    sget v12, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I' + NL +
              '    const/16 v13, 0x64' + NL +
              '    add-int/2addr v12, v13' + NL +
              '    mul-int/2addr v12, v3' + NL +
              '    add-int/2addr v12, v13\n')
RESIZE_NEW = ('    :rn_resize\n'
              '    sget v12, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I' + NL +
              '    const/16 v13, 0x64' + NL +
              '    add-int/2addr v12, v13' + NL +
              '    mul-int/2addr v12, v3' + NL +
              '    add-int/lit8 v12, v12, 0x28\n')

CLAMP_NEW = ("    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I\n"
             "    move-result v3\n"
             "    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I\n"
             "    if-nez v4, :scx_lb_ready\n"
             "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I\n"
             "    move-result v4\n"
             "    add-int/2addr v4, v3\n"
             "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I\n"
             "    move-result v5\n"
             "    sub-int/2addr v4, v5\n"
             "    :scx_lb_ready\n")
CLAMP_OLD = ("    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I\n"
             "    move-result v3\n"
             "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I\n"
             "    move-result v4\n"
             "    add-int/2addr v4, v3\n"
             "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I\n"
             "    move-result v5\n"
             "    sub-int/2addr v4, v5\n")

ENSURE_CALL = "    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxEnsureMin()V\n"

ok = True
for root in ROOTS:
    tr = open(root + "/" + TR, encoding="utf-8").read()
    mm = open(root + "/" + MM, encoding="utf-8").read()
    checks = [tr.count(EMPTY_GATE) == 1, tr.count(RESIZE_OLD) == 1,
              mm.count(CLAMP_NEW) == 1, mm.count(ENSURE_CALL) == 1]
    print("PRE", root.split("/")[1], checks)
    if not all(checks): ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + TR; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    s = s.replace(EMPTY_GATE, '    :rn_resize\n', 1)
    s = s.replace(RESIZE_OLD, RESIZE_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("TR DONE", root.split("/")[1])

    t = root + "/" + MM; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    s = s.replace(CLAMP_NEW, CLAMP_OLD, 1)
    s = s.replace(ENSURE_CALL, "", 1)
    open(t, "w", encoding="utf-8").write(s)
    print("MM DONE", root.split("/")[1])

print("DONE", BATCH, time.strftime("%H:%M:%S"))