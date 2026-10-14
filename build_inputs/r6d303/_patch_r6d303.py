# -*- coding: utf-8 -*-
"""r6d303 补丁：
A. FBO 修复：loadSettings 末尾强制置位 + updateSettingsFBO 允许时置 true（双保险）+ 探针加 d=
B. 卡死看门狗：科技树 draw 顶部调用 scWatch（每30帧一条 nSCW，最多200条）
锚点先验=1 才写盘；双树同步。"""
import hashlib, os, sys, time

BATCH = "r6d303"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]

def P(root, rel): return root + "/" + rel
GAME_REL = "aoc/kingdoms/lukasz/jakowski/Game.smali"
GV_REL = "aoc/kingdoms/lukasz/jakowski/GameValues.smali"
TREE_REL = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

# ---------- E1: Game.loadSettings 末尾插 force 调用 ----------
E1_OLD = ("    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Map;->updateDrawProvincesFlags()V\n\n"
          "    .line 1445\n"
          "    return-void\n"
          ".end method")
E1_NEW = ("    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Map;->updateDrawProvincesFlags()V\n\n"
          "    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d303_forceFBO()V\n\n"
          "    .line 1445\n"
          "    return-void\n"
          ".end method")

# ---------- E2: updateSettingsFBO 允许->置 true ----------
E2_OLD = ("    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_FBO:Z\n\n"
          "    if-eqz v0, :cond_15\n\n"
          "    .line 354\n"
          "    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    const/4 v1, 0x0\n\n"
          "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z\n\n"
          "    .line 355\n"
          "    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
          "    .line 358\n"
          "    :cond_15\n")
E2_NEW = ("    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_FBO:Z\n\n"
          "    if-eqz v0, :cond_enable\n\n"
          "    .line 354\n"
          "    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    const/4 v1, 0x0\n\n"
          "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z\n\n"
          "    .line 355\n"
          "    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
          "    goto :cond_15\n\n"
          "    :cond_enable\n"
          "    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    const/4 v1, 0x1\n\n"
          "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
          "    .line 358\n"
          "    :cond_15\n")

# ---------- E2b: 探针加 d= ----------
E2B_OLD = ("    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
           "    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z\n\n"
           "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n\n"
           "    move-result-object v0\n\n"
           "    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n")
E2B_NEW = (E2B_OLD[:-len("    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n")]
           + "    const-string v1, \" d=\"\n\n"
           + "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
           + "    move-result-object v0\n\n"
           + "    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;\n\n"
           + "    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_FBO:Z\n\n"
           + "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n\n"
           + "    move-result-object v0\n\n"
           + "    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n")

# ---------- E3: 新方法 forceFBO（GV 文件尾追加） ----------
GV_TAIL_ASSERT = "    :goto_0\n    return-void\n.end method\n"
E3_METHOD = (".method public static final r6d303_forceFBO()V\n"
             "    .registers 4\n"
             "\n"
             "    :try_start_0\n"
             "    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z\n\n"
             "    move-result v0\n\n"
             "    if-eqz v0, :ff_skip\n\n"
             "    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
             "    if-eqz v0, :ff_skip\n\n"
             "    const/4 v1, 0x1\n\n"
             "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
             "    :ff_skip\n"
             "    :try_end_0\n"
             "    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0\n\n"
             "    const/4 v0, 0x0\n\n"
             "    goto :ff_done\n\n"
             "    :catch_0\n"
             "    move-exception v0\n\n"
             "    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n\n"
             "    const/4 v0, 0x0\n\n"
             "    :ff_done\n"
             "    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d302_logFBO()V\n"
             "    return-void\n"
             ".end method\n")

# ---------- E4: 看门狗（Tree） ----------
E4_FIELD_OLD = ".field public static sScalingLocked:Z"
E4_FIELD_NEW = E4_FIELD_OLD + "\n.field public static scwF:I\n.field public static scwL:I"

E4_DRAW_OLD = '    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;\n\n    .line 147\n'
E4_DRAW_NEW = ('    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;\n\n'
               '    move-object/from16 v0, p0\n\n'
               '    invoke-direct/range {v0 .. v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scWatch()V\n\n'
               '    .line 147\n')

TREE_TAIL_ASSERT = "    return-void\n.end method\n"
E4_METHOD = (".method private final scWatch()V\n"
             "    .registers 10\n"
             "\n"
             "    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwF:I\n\n"
             "    add-int/lit8 v0, v0, 0x1\n\n"
             "    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwF:I\n\n"
             "    rem-int/lit8 v1, v0, 0x1e\n"
             "    if-nez v1, :sw_r1\n\n"
             "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwL:I\n\n"
             "    const/16 v2, 0xc8\n"
             "    if-lt v1, v2, :sw_r2\n\n"
             "    add-int/lit8 v1, v1, 0x1\n\n"
             "    sput v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwL:I\n\n"
             "    :try_start_0\n"
             "    new-instance v0, Ljava/lang/StringBuilder;\n\n"
             "    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n\n"
             "    const-string v1, \"nSCW mp=\"\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I\n\n"
             "    move-result v1\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    const-string v1, \" mx=\"\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I\n\n"
             "    move-result v1\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    const-string v1, \" nx=\"\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosX()I\n\n"
             "    move-result v1\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    const-string v1, \" sc=\"\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableX()Z\n\n"
             "    move-result v1\n\n"
             "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n\n"
             "    move-result-object v0\n\n"
             "    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n\n"
             "    move-result-object v0\n\n"
             "    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n\n"
             "    :try_end_0\n"
             "    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0\n\n"
             "    goto :sw_r3\n"
             "\n"
             "    :catch_0\n"
             "    move-exception v3\n\n"
             "    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n"
             "    return-void\n"
             "\n"
             "    :sw_r1\n"
             "    return-void\n"
             "\n"
             "    :sw_r2\n"
             "    return-void\n"
             "\n"
             "    :sw_r3\n"
             "    return-void\n"
             ".end method\n")

def apply_tree(root):
    t = P(root, TREE_REL)
    s = open(t, encoding="utf-8").read()
    assert s.count(E4_FIELD_OLD) == 1, "field anchor"
    assert s.count(E4_DRAW_OLD) == 1, "draw anchor"
    assert s.endswith(TREE_TAIL_ASSERT), "tree tail"
    s = s.replace(E4_FIELD_OLD, E4_FIELD_NEW, 1)
    s = s.replace(E4_DRAW_OLD, E4_DRAW_NEW, 1)
    s += "\n" + E4_METHOD
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE tree", root, hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

def apply_game(root):
    t = P(root, GAME_REL)
    s = open(t, encoding="utf-8").read()
    assert s.count(E1_OLD) == 1, "game anchor"
    s = s.replace(E1_OLD, E1_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE game", root, hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

def apply_gv(root):
    t = P(root, GV_REL)
    s = open(t, encoding="utf-8").read()
    assert s.count(E2_OLD) == 1, "gv e2 anchor"
    assert s.count(E2B_OLD) == 1, "gv e2b anchor"
    assert s.endswith(GV_TAIL_ASSERT), "gv tail"
    s = s.replace(E2_OLD, E2_NEW, 1)
    s = s.replace(E2B_OLD, E2B_NEW, 1)
    s += "\n" + E3_METHOD
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE gv", root, hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

# 先验（只读）
for root in ROOTS:
    for rel, olds in ((GAME_REL, [("E1", E1_OLD)]), (GV_REL, [("E2", E2_OLD), ("E2b", E2B_OLD)]), (TREE_REL, [("E4f", E4_FIELD_OLD), ("E4d", E4_DRAW_OLD)])):
        t = P(root, rel)
        if not os.path.exists(t):
            print("MISSING", t); sys.exit(1)
        s = open(t, encoding="utf-8").read()
        for n, o in olds:
            print("PRE", root.split("/")[1], n, s.count(o))

# 备份 + 写盘
for root in ROOTS:
    for rel in (GAME_REL, GV_REL, TREE_REL):
        t = P(root, rel)
        raw = open(t, encoding="utf-8").read()
        bak = t + ".pre_" + BATCH
        if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw)

apply_game(ROOTS[0]); apply_gv(ROOTS[0]); apply_tree(ROOTS[0])
apply_game(ROOTS[1]); apply_gv(ROOTS[1]); apply_tree(ROOTS[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))