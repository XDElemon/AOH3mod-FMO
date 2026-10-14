# -*- coding: utf-8 -*-
"""r6d301 补丁：科技树可见时冻结地图缩放（锁 MapScale.enableScaling，关闭时还原）。
锚点先验=1 才写盘；双树同步；.pre_r6d301 备份。"""
import hashlib, os, sys, time

BATCH = "r6d301"
TREES = [
    "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali",
    "/root/history23_repo/src/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali",
]

FIELD_OLD = ".field public static sTopCatLast:Ljava/lang/String;"
FIELD_NEW = FIELD_OLD + "\n.field public static sScalingLocked:Z"

SETVIS_OLD = ('.method public setVisible(Z)V\n'
              '    .registers 4\n'
              '    .param p1, "visible"    # Z\n'
              '\n'
              '    .line 269\n'
              '    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V\n'
              '\n'
              '    .line 270\n'
              '    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J\n'
              '\n'
              '    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J\n'
              '\n'
              '    .line 271\n'
              '    return-void\n'
              '.end method')

SETVIS_NEW = ('.method public setVisible(Z)V\n'
              '    .registers 4\n'
              '    .param p1, "visible"    # Z\n'
              '\n'
              '    .line 269\n'
              '    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V\n'
              '\n'
              '    .line 270\n'
              '    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J\n'
              '\n'
              '    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J\n'
              '\n'
              '    # r6d301: 可见时冻结地图缩放（MapTouchManager 双指路径读 MapScale.getEnableScaling）\n'
              '    if-eqz p1, :ts_vis_restore\n'
              '\n'
              '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;\n'
              '\n'
              '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z\n'
              '\n'
              '    move-result v1\n'
              '    if-eqz v1, :ts_vis_show_done\n'
              '\n'
              '    const/4 v1, 0x1\n'
              '    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sScalingLocked:Z\n'
              '\n'
              '    const/4 v1, 0x0\n'
              '    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V\n'
              '\n'
              '    :ts_vis_show_done\n'
              '    .line 271\n'
              '    return-void\n'
              '\n'
              '    :ts_vis_restore\n'
              '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;\n'
              '\n'
              '    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sScalingLocked:Z\n'
              '    if-eqz v1, :ts_vis_restore_done\n'
              '\n'
              '    const/4 v1, 0x0\n'
              '    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sScalingLocked:Z\n'
              '\n'
              '    const/4 v1, 0x1\n'
              '    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V\n'
              '\n'
              '    :ts_vis_restore_done\n'
              '    return-void\n'
              '.end method')

EDITS = [("FIELD", FIELD_OLD, FIELD_NEW), ("SETVIS", SETVIS_OLD, SETVIS_NEW)]

ok = True
for t in TREES:
    if not os.path.exists(t):
        print("MISSING", t); ok = False; continue
    s = open(t, encoding="utf-8").read()
    for name, old, new in EDITS:
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
    for name, old, new in EDITS:
        s = s.replace(old, new, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", t, hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))