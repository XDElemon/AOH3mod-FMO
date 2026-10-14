# -*- coding: utf-8 -*-
"""r6d304 补丁（纯诊断修正）：
E1 修 scWatch 两处极性（if-nez→采样、if-lt→if-ge）+ 清理旧标签
E2 MenuManager.actionMove_MenuInnerElements 加 nSCM 探针（cap512）
E3 actionUp 的 nMMU 探针加 m=（activeSliderMenuID）
E4 Tree 加 dbgSCM 字段
锚点先验=1 才写盘；双树同步。"""
import hashlib, os, sys, time

BATCH = "r6d304"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
TREE = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

# ---- E1 scWatch 修正 ----
E1_OLD = ("    rem-int/lit8 v1, v0, 0x1e\n    if-nez v1, :sw_r1\n\n"
          "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwL:I\n\n"
          "    const/16 v2, 0xc8\n    if-lt v1, v2, :sw_r2\n\n"
          "    add-int/lit8 v1, v1, 0x1\n\n"
          "    sput v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwL:I\n")
E1_NEW = ("    rem-int/lit8 v1, v0, 0x1e\n    if-nez v1, :sw_go\n\n"
          "    return-void\n\n"
          "    :sw_go\n"
          "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwL:I\n\n"
          "    const/16 v2, 0xc8\n    if-ge v1, v2, :sw_go2\n\n"
          "    return-void\n\n"
          "    :sw_go2\n"
          "    add-int/lit8 v1, v1, 0x1\n\n"
          "    sput v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwL:I\n")

E1B_OLD = "    :sw_r1\n    return-void\n\n    :sw_r2\n    return-void\n\n    :sw_r3\n    return-void\n"
E1B_NEW = "    :sw_r3\n    return-void\n"

# ---- E2 nSCM 探针 ----
E2_OLD = '    .param p2, "nPosY"    # I\n\n    .line 2654\n    :try_start_0\n'
E2_NEW = ('    .param p2, "nPosY"    # I\n\n'
          '    # r6d304 nSCM 移动事件探针\n'
          '    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSCM:I\n'
          '    const/16 v1, 0x200\n'
          '    if-ge v0, v1, :nscm_skip\n'
          '    add-int/lit8 v0, v0, 0x1\n'
          '    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSCM:I\n'
          '    :try_start_nscm\n'
          '    new-instance v0, Ljava/lang/StringBuilder;\n'
          '    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n'
          '    const-string v1, "nSCM p1="\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    const-string v1, " p2="\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    const-string v1, " f="\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    iget-boolean v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    const-string v1, " st="\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->iSliderMenuStartPosX:I\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    const-string v1, " mi="\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
          '    move-result-object v0\n'
          '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n'
          '    :try_end_nscm\n'
          '    .catch Ljava/lang/Exception; {:try_start_nscm .. :try_end_nscm} :catch_nscm\n'
          '    const/4 v0, 0x0\n'
          '    goto :nscm_done\n'
          '    :catch_nscm\n'
          '    move-exception v3\n'
          '    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n'
          '    const/4 v0, 0x0\n'
          '    :nscm_done\n'
          '    :nscm_skip\n'
          '    .line 2654\n    :try_start_0\n')

# ---- E3 nMMU m= ----
E3_OLD = ('    const-string v0, "nMMU id"\n'
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n'
          '    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeMenuElementID:I\n'
          '    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n')
E3_NEW = (E3_OLD +
          '    const-string v0, "nMMU m"\n'
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n'
          '    iget v2, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
          '    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n')

# ---- E4 字段 ----
E4_OLD = ".field public static scwL:I"
E4_NEW = ".field public static scwL:I\n.field public static dbgSCM:I"

ok = True
for root in ROOTS:
    for rel, name, old in ((TREE, "E1", E1_OLD), (TREE, "E1b", E1B_OLD), (TREE, "E4", E4_OLD), (MM, "E2", E2_OLD), (MM, "E3", E3_OLD)):
        t = root + "/" + rel
        if not os.path.exists(t): print("MISSING", t); ok = False; continue
        s = open(t, encoding="utf-8").read()
        c = s.count(old)
        print("PRE", root.split("/")[1], name, c)
        if c != 1: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    for rel in (TREE, MM):
        t = root + "/" + rel
        raw = open(t, encoding="utf-8").read()
        bak = t + ".pre_" + BATCH
        if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw)
    # tree
    t = root + "/" + TREE
    s = open(t, encoding="utf-8").read()
    s = s.replace(E1_OLD, E1_NEW, 1).replace(E1B_OLD, E1B_NEW, 1).replace(E4_OLD, E4_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE tree", root.split("/")[1], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])
    # MM
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    s = s.replace(E2_OLD, E2_NEW, 1).replace(E3_OLD, E3_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE mm", root.split("/")[1], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))