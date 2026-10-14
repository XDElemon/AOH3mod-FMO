# -*- coding: utf-8 -*-
"""r6d309 补丁：
A) MenuManager.actionMove_MenuInnerElements：
   - .registers 6→9
   - :cond_6b 处为科技树插入"自有增量滚动"块（绕开原生 st 锚定；clamp [posX+width-maxSlider, posX]）
   - actionDown 顶部复位 scxOn
   - 新增 scaLog(II)V 探针方法
B) Menu.updateMenuPosX：.registers 5→6；b 标记(v3=0/1/2)；:goto_37 调 scuLog(II)V；新增 scuLog 方法
C) InGame_TechnologyTree：新增 scxOn:Z / scxL:I / dbgSCA:I / dbgSCU:I 字段
"""
import os, re, sys, time

BATCH = "r6d309"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"
ME = "aoc/kingdoms/lukasz/menu/Menu.smali"
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

def rd(t): return open(t, encoding="utf-8").read()
def wr(t, s): open(t, "w", encoding="utf-8").write(s)

def slice_method(src, header, nxt=None):
    i = src.find(header)
    assert i >= 0, "header not found: " + header
    j = src.find("\n.end method", i)
    assert j >= 0
    j = src.find("\n", j + 1)
    return i, j

# ---------- 构造片段 ----------
HANDLER_OLD_LABEL = ":cond_6b"
NEW_HANDLER = '''    :cond_6b
    # r6d309 科技树自有增量滚动（绕开原生 st/锚定死循环）
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z
    move-result v0
    if-eqz v0, :scx_native
    iget v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_TECHNOLOGY_TREE:I
    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I
    if-ne v0, v1, :scx_native
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z
    if-eqz v0, :scx_init
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxL:I
    sub-int v1, p1, v0
    const/16 v2, 0x4b0
    if-le v1, v2, :scx_g1
    goto :scx_init
    :scx_g1
    const/16 v2, -0x4b0
    if-ge v1, v2, :scx_g2
    goto :scx_init
    :scx_g2
    sput p1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxL:I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosX()I
    move-result v2
    add-int/2addr v2, v1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I
    move-result v3
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I
    move-result v4
    add-int/2addr v4, v3
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I
    move-result v5
    sub-int/2addr v4, v5
    if-le v2, v3, :scx_hi
    move v2, v3
    :scx_hi
    if-ge v2, v4, :scx_lo
    move v2, v4
    :scx_lo
    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/Menu;->setMenuPosX(I)V
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosX()I
    move-result v4
    invoke-direct {p0, v2, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->scaLog(II)V
    goto :scx_done2
    :scx_init
    sput p1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxL:I
    const/4 v0, 0x1
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z
    goto :scx_done2
    :scx_native
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;
    move-result-object v0
    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;
    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->iSliderMenuStartPosX:I
    add-int/2addr v1, p1
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setMenuPosX(I)V
    :scx_done2
'''

SCALOG = '''
.method private final scaLog(II)V
    .registers 6
    .param p1, "v"    # I
    .param p2, "nx"    # I
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSCA:I
    const/16 v1, 0x12c
    if-ge v0, v1, :sca_done
    add-int/lit8 v0, v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSCA:I
    :try_start_sca
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nSCA v="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " nx="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_sca
    .catch Ljava/lang/Exception; {:try_start_sca .. :try_end_sca} :catch_sca
    const/4 v0, 0x0
    const/4 v1, 0x0
    goto :sca_done
    :catch_sca
    move-exception v2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    const/4 v0, 0x0
    const/4 v1, 0x0
    const/4 v2, 0x0
    :sca_done
    return-void
.end method
'''

SCULOG = '''
.method private final scuLog(II)V
    .registers 6
    .param p1, "in"    # I
    .param p2, "b"    # I
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSCU:I
    const/16 v1, 0x12c
    if-ge v0, v1, :scu_done
    add-int/lit8 v0, v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSCU:I
    :try_start_scu
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nSCU in="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " b="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " out="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosX()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " p="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " w="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " m="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_scu
    .catch Ljava/lang/Exception; {:try_start_scu .. :try_end_scu} :catch_scu
    const/4 v0, 0x0
    const/4 v1, 0x0
    goto :scu_done
    :catch_scu
    move-exception v2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    const/4 v0, 0x0
    const/4 v1, 0x0
    const/4 v2, 0x0
    :scu_done
    return-void
.end method
'''

TREE_FIELDS = """.field public static scxOn:Z
.field public static scxL:I
.field public static dbgSCA:I
.field public static dbgSCU:I
"""

# ---------- 预校验（双树）----------
for root in ROOTS:
    mm = rd(root + "/" + MM); me = rd(root + "/" + ME); tr = rd(root + "/" + TR)
    assert mm.count("\n    :cond_6b\n") == 1 or mm.count(":cond_6b") >= 1, "MM cond_6b"
    i0, i1 = slice_method(mm, ".method private final actionMove_MenuInnerElements(II)V")
    assert ".registers 6" in mm[i0:i1]
    assert mm.count("dbgMD:I") >= 1
    i0e, i1e = slice_method(me, ".method public final updateMenuPosX(I)V")
    seg = me[i0e:i1e]
    assert ".registers 5" in seg and ":goto_37" in seg and seg.count("iNewMenuPositionX:I") >= 3
    assert ".field public static dbgSCM:I" in tr
print("PRE-OK")

# ---------- 写入 ----------
for root in ROOTS:
    # MM
    t = root + "/" + MM; s = rd(t)
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): wr(bak, s)
    i0, i1 = slice_method(s, ".method private final actionMove_MenuInnerElements(II)V")
    seg = s[i0:i1]
    assert seg.count(".registers 6") == 1
    seg2 = seg.replace(".registers 6", ".registers 9", 1)
    # cond_6b 替换（在该方法内）
    m = re.search(r"(?m)^\s*:cond_6b\s*$", seg2)
    assert m
    st = m.start()
    te = seg2.find(":try_end_7d", st)
    assert te > st
    seg3 = seg2[:st] + NEW_HANDLER + "    " + seg2[te:]
    s = s[:i0] + seg3 + s[i1:]
    # actionDown 顶部复位
    i0, i1 = slice_method(s, ".method public final actionDown(II)Z")
    seg = s[i0:i1]
    mix = seg.find("dbgMD:I")
    assert mix > 0
    # 找 .registers 10 行
    rl = seg.rfind(".registers 10", 0, mix)
    assert rl > 0
    nl = seg.find("\n", rl)
    seg2 = seg[:nl + 1] + "    const/4 v0, 0x0\n    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z\n" + seg[nl + 1:]
    s = s[:i0] + seg2 + s[i1:]
    # scaLog 方法
    i0, i1 = slice_method(s, ".method private final actionMove_MenuInnerElements(II)V")
    s = s[:i1] + SCALOG + s[i1:]
    wr(t, s); print("MM DONE", root.split("/")[1])
    # Menu
    t = root + "/" + ME; s = rd(t)
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): wr(bak, s)
    i0, i1 = slice_method(s, ".method public final updateMenuPosX(I)V")
    seg = s[i0:i1]
    assert seg.count(".registers 5") == 1
    seg = seg.replace(".registers 5", ".registers 6", 1)
    seg = seg.replace('    .param p1, "nMenuPosX"    # I\n', '    .param p1, "nMenuPosX"    # I\n    const/4 v3, 0x0\n', 1)
    a = seg.find("iNewMenuPositionX:I")
    b = seg.find(".line 567", a)
    assert b > a
    seg = seg[:b] + "    const/4 v3, 0x1\n    " + seg[b:]
    a = seg.find("iNewMenuPositionX:I", seg.find("const/4 v3, 0x1"))
    b = seg.find(".line 570", a)
    assert b > a
    seg = seg[:b] + "    const/4 v3, 0x2\n    " + seg[b:]
    seg = seg.replace("    :goto_37\n    goto :goto_39\n",
                      "    :goto_37\n    invoke-direct {p0, p1, v3}, Laoc/kingdoms/lukasz/menu/Menu;->scuLog(II)V\n    goto :goto_39\n", 1)
    s = s[:i0] + seg + s[i1:]
    i1n = s.find("\n.end method", i0) + len("\n.end method")
    s = s[:i1n] + "\n" + SCULOG + s[i1n:]
    wr(t, s); print("ME DONE", root.split("/")[1])
    # Tree fields
    t = root + "/" + TR; s = rd(t)
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): wr(bak, s)
    anchor = ".field public static dbgSCM:I\n"
    assert s.count(anchor) == 1
    s = s.replace(anchor, anchor + TREE_FIELDS, 1)
    wr(t, s); print("TR DONE", root.split("/")[1])

print("DONE", BATCH, time.strftime("%H:%M:%S"))