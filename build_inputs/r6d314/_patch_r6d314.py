# -*- coding: utf-8 -*-
"""r6d314（整合版）：
① 右缘硬拦截：扫描 ButtonTechnology 元素求最右缘 R，scxMin = W+40-R；拖动先夹到 scxMin（右限）
② 重定向扩展：InGame_TechnologyTreeEmpty 也视同伴生 → 拖动归还真树
③ 计数器：t/et/c/an/nm/rm 随 nSFC 采样输出（诊断）
"""
import os, re, sys, time
BATCH = "r6d314"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"
ME = "aoc/kingdoms/lukasz/menu/Menu.smali"
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

REDIR_ANCHOR = ("    instance-of v1, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;\n"
                "    if-eqz v1, :redir_skip\n")
REDIR_ADD = ("    instance-of v1, v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty;\n"
             "    if-eqz v1, :redir_skip\n")

CLAMP_OLD = ("    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I\n"
             "    move-result v3\n"
             "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I\n"
             "    move-result v4\n"
             "    add-int/2addr v4, v3\n"
             "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I\n"
             "    move-result v5\n"
             "    sub-int/2addr v4, v5\n")
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

ANCHOR_INC = ("    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFAN:I\n"
              "    add-int/lit8 v4, v4, 0x1\n"
              "    sput v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFAN:I\n")
NATIVE_INC = ("    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFNM:I\n"
              "    add-int/lit8 v4, v4, 0x1\n"
              "    sput v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFNM:I\n")
REARM_INC = ("    sget v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFRM:I\n"
             "    add-int/lit8 v2, v2, 0x1\n"
             "    sput v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFRM:I\n")

ENSURE = '''
.method public static scxEnsureMin()V
    .registers 10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z
    move-result v1
    if-eqz v1, :em_done
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->menus:Ljava/util/List;
    iget v2, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME:I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/List;
    iget v2, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_TECHNOLOGY_TREE:I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;
    const/4 v2, 0x0
    const/4 v3, 0x0
    :em_loop
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I
    move-result v4
    if-ge v2, v4, :em_body
    goto :em_fin
    :em_body
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;
    move-result-object v4
    instance-of v5, v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
    if-eqz v5, :em_next
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v5
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I
    move-result v6
    add-int/2addr v5, v6
    if-le v5, v3, :em_skip
    move v3, v5
    :em_skip
    :em_next
    add-int/lit8 v2, v2, 0x1
    goto :em_loop
    :em_fin
    const/4 v4, 0x0
    if-lez v3, :em_zero
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I
    add-int/lit8 v5, v5, 0x28
    sub-int/2addr v5, v3
    if-lez v5, :em_zero
    move v4, v5
    :em_zero
    sput v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I
    :em_done
    return-void
.end method
'''

ok = True
for root in ROOTS:
    mm = open(root + "/" + MM, encoding="utf-8").read()
    me = open(root + "/" + ME, encoding="utf-8").read()
    tr = open(root + "/" + TR, encoding="utf-8").read()
    mi0 = me.find(".method public final updateMenuPosX(I)V")
    mi1 = me.find("\n.end method", mi0)
    CALL = "invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V"
    checks = [mm.count(REDIR_ANCHOR) == 1, mm.count(CLAMP_OLD) == 1,
              me.count(CALL) == 3 and me[mi0:mi1].count(CALL) == 2,
              tr.count(".field public static dbgSFM:I") == 1]
    print("PRE", root.split("/")[1], checks)
    if not all(checks): ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    # ---------- MM ----------
    t = root + "/" + MM; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    # ① 重定向扩展
    s = s.replace(REDIR_ANCHOR, REDIR_ANCHOR + REDIR_ADD, 1)
    # ② 右缘夹取（替换 fallback 段）
    s = s.replace(CLAMP_OLD, CLAMP_NEW, 1)
    # ③ 锚定计数（handler 切片内）
    hi = s.find(".method private final actionMove_MenuInnerElements(II)V")
    he = s.find("\n.end method", hi)
    seg = s[hi:he]
    a = seg.find(".line 2665")
    assert a > 0
    b = seg.find("invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;", a)
    assert b > 0
    seg = seg[:b] + ANCHOR_INC + seg[b:]
    s = s[:hi] + seg + s[he:]
    # ④ 原生计数（唯一标签）
    m = re.search(r"(?m)^\s*:scx_native\s*$\n", s)
    assert m
    pos = m.end()
    s = s[:pos] + NATIVE_INC + s[pos:]
    # ⑤ actionDown 里调用 scxEnsureMin（在 scxOn 复位之后；锚点=其后紧跟 dbgMD 探针行）
    ad = ("    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z\n"
          "    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgMD:I")
    assert s.count(ad) == 1, s.count(ad)
    repl = ("    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z\n"
            "    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxEnsureMin()V\n"
            "    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgMD:I")
    s = s.replace(ad, repl, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("MM DONE", root.split("/")[1])

    # ---------- Menu ----------
    t = root + "/" + ME; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    i0 = s.find(".method public final updateMenuPosX(I)V")
    i1 = s.find("\n.end method", i0)
    seg = s[i0:i1]
    call = "    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V"
    assert seg.count(call) == 2, seg.count(call)
    seg = seg.replace(call, REARM_INC + call)
    s = s[:i0] + seg + s[i1:]
    open(t, "w", encoding="utf-8").write(s)
    print("ME DONE", root.split("/")[1])

    # ---------- Tree ----------
    t = root + "/" + TR; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    anchor = ".field public static dbgSFM:I\n"
    assert s.count(anchor) == 1
    fields = (".field public static scxMin:I\n.field public static dbgSFT:I\n.field public static dbgSFE:I\n"
              ".field public static dbgSFC3:I\n.field public static dbgSFAN:I\n"
              ".field public static dbgSFNM:I\n.field public static dbgSFRM:I\n")
    s = s.replace(anchor, anchor + fields, 1)
    # scxEnsureMin 方法：插在 sfCounters 之后
    i0 = s.find(".method private final sfCounters()V")
    assert i0 > 0
    i1 = s.find("\n.end method", i0) + len("\n.end method")
    s = s[:i1] + "\n" + ENSURE + s[i1:]
    # sfCounters 尾部追加（切片内定位 dbgSFM 的 sget）
    i0 = s.find(".method private final sfCounters()V")
    i1 = s.find("\n.end method", i0)
    seg = s[i0:i1]
    a = seg.find("sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFM:I")
    assert a > 0
    a2 = seg.find("invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;", a)
    assert a2 > 0
    tail = ("    const-string v1, \" t=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFT:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    const-string v1, \" et=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFE:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    const-string v1, \" c=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFC3:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    const-string v1, \" mn=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    const-string v1, \" an=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFAN:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    const-string v1, \" nm=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFNM:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    const-string v1, \" rm=\"\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n    move-result-object v0\n"
            "    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFRM:I\n    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n    move-result-object v0\n")
    seg = seg[:a2] + tail + seg[a2:]
    s = s[:i0] + seg + s[i1:]
    open(t, "w", encoding="utf-8").write(s)
    print("TR DONE", root.split("/")[1])

print("DONE", BATCH, time.strftime("%H:%M:%S"))