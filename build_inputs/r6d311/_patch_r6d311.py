# -*- coding: utf-8 -*-
"""r6d311 探针批（零行为改动）：
MM:
 - 新增 sfLog(III)V（tag,a,b → "nSFx a= b="，cap160，Tree.dbgSF）
 - :redir_skip 后：nSF0 vis+id
 - :cond_3f 后：nSF1 f+id
 - :scx_g2 增计数 dbgSFM；:scx_init 增计数 dbgSFI
 - catch_7e / catch_83 各增计数 dbgSFC1/dbgSFC2
Tree:
 - 字段 dbgSFI/dbgSFM/dbgSFC1/dbgSFC2/dbgSF
 - 新方法 sfCounters()V（"nSFC e1= e2= i= m="）
 - scWatch 其写入后调用 sfCounters()
"""
import os, re, sys, time
BATCH = "r6d311"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

def rd(t): return open(t, encoding="utf-8").read()
def wr(t, s): open(t, "w", encoding="utf-8").write(s)

SFLOG = '''
.method private final sfLog(III)V
    .registers 8
    .param p1, "t"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSF:I
    const/16 v1, 0xa0
    if-ge v0, v1, :sf_done
    add-int/lit8 v0, v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSF:I
    :try_start_sf
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nSF"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " a="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " b="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_sf
    .catch Ljava/lang/Exception; {:try_start_sf .. :try_end_sf} :catch_sf
    const/4 v0, 0x0
    const/4 v1, 0x0
    goto :sf_done
    :catch_sf
    move-exception v2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    const/4 v0, 0x0
    const/4 v1, 0x0
    const/4 v2, 0x0
    :sf_done
    return-void
.end method
'''

SFCOUNTERS = '''
.method private final sfCounters()V
    .registers 6
    :try_start_sfc
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nSFC e1="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFC1:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " e2="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFC2:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " i="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFI:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " m="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFM:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_sfc
    .catch Ljava/lang/Exception; {:try_start_sfc .. :try_end_sfc} :catch_sfc
    const/4 v0, 0x0
    const/4 v1, 0x0
    goto :sfc_done
    :catch_sfc
    move-exception v1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    const/4 v0, 0x0
    const/4 v1, 0x0
    :sfc_done
    return-void
.end method
'''

TREE_FIELDS = """.field public static dbgSF:I
.field public static dbgSFC1:I
.field public static dbgSFC2:I
.field public static dbgSFI:I
.field public static dbgSFM:I
"""

# ---------- 预校验 ----------
for root in ROOTS:
    mm = rd(root + "/" + MM); tr = rd(root + "/" + TR)
    h0 = mm.find(".method private final actionMove_MenuInnerElements(II)V")
    h1 = mm.find("\n.end method", h0)
    seg = mm[h0:h1]
    assert seg.count(":redir_skip") >= 2  # 引用+定义
    assert "cond_3f" in seg or ":goto_3f" in seg
    assert ":scx_init" in seg and ":scx_g2" in seg
    assert "catch_7e" in seg or ":catch_83" in mm
    assert ".field public static dbgSCU:I" in tr
print("PRE-OK")

for root in ROOTS:
    # ---- MM ----
    t = root + "/" + MM; s = rd(t)
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): wr(bak, s)
    h0 = s.find(".method private final actionMove_MenuInnerElements(II)V")
    h1 = s.find("\n.end method", h0)
    seg = s[h0:h1]

    # a) :redir_skip 定义之后插入 nSF0
    m = re.search(r"(?m)^\s*:redir_skip\s*$", seg)
    assert m
    ins = ("    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z\n"
           "    move-result v0\n"
           "    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n"
           "    const/4 v2, 0x0\n"
           "    invoke-direct {p0, v2, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->sfLog(III)V\n")
    pos = m.end()
    seg = seg[:pos] + "\n" + ins + seg[pos:]

    # b) :cond_3f 定义之后插入 nSF1
    m = re.search(r"(?m)^\s*:cond_3f\s*$", seg)
    assert m, "cond_3f"
    ins = ("    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z\n"
           "    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n"
           "    const/4 v2, 0x1\n"
           "    invoke-direct {p0, v2, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->sfLog(III)V\n")
    pos = m.end()
    seg = seg[:pos] + "\n" + ins + seg[pos:]

    # c) :scx_g2 计数 m
    m = re.search(r"(?m)^\s*:scx_g2\s*$", seg)
    assert m
    ins = ("    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFM:I\n"
           "    add-int/lit8 v4, v4, 0x1\n"
           "    sput v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFM:I\n")
    pos = m.end()
    seg = seg[:pos] + "\n" + ins + seg[pos:]

    # d) :scx_init 计数 i
    m = re.search(r"(?m)^\s*:scx_init\s*$", seg)
    assert m
    ins = ("    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFI:I\n"
           "    add-int/lit8 v4, v4, 0x1\n"
           "    sput v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgSFI:I\n")
    pos = m.end()
    seg = seg[:pos] + "\n" + ins + seg[pos:]

    s = s[:h0] + seg + s[h1:]

    # e) catch_7e / catch_83 计数（在 Handler.mm 的 catch 里；使用 v1）
    for ctag, fld in [("catch_7e", "dbgSFC1"), ("catch_83", "dbgSFC2")]:
        # 只在 handler 内找该 catch（handler 内的 catch 标签是 :catch_7e/:catch_83）
        m = re.search(r"(?m)^\s*:" + ctag + r"\s*$\n\s*move-exception v0\s*$\n", s)
        assert m, ctag
        pos = m.end()
        ins = ("\n    sget v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->" + fld + ":I\n"
               "    add-int/lit8 v1, v1, 0x1\n"
               "    sput v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->" + fld + ":I\n")
        s = s[:pos] + ins + s[pos:]

    # f) sfLog 方法（插在 handler 的 .end method 之后）
    h1 = s.find("\n.end method", h0) + len("\n.end method")
    s = s[:h1] + "\n" + SFLOG + s[h1:]
    wr(t, s); print("MM DONE", root.split("/")[1])

    # ---- Tree ----
    t = root + "/" + TR; s = rd(t)
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): wr(bak, s)
    anchor = ".field public static dbgSCU:I\n"
    assert s.count(anchor) == 1
    s = s.replace(anchor, anchor + TREE_FIELDS, 1)
    # scWatch 末尾（其 dWrite 之后、return 前）调用 sfCounters
    i0 = s.find(".method private final scWatch()V")
    i1 = s.find("\n.end method", i0)
    seg = s[i0:i1]
    m = re.search(r"invoke-static \{v0\}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite\(Ljava/lang/String;\)V", seg)
    assert m, "scWatch dWrite"
    pos = m.end()
    seg = seg[:pos] + "\n    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sfCounters()V" + seg[pos:]
    s = s[:i0] + seg + s[i1:]
    # sfCounters 方法插到 scWatch 之后
    h1 = s.find("\n.end method", i0) + len("\n.end method")
    s = s[:h1] + "\n" + SFCOUNTERS + s[h1:]
    wr(t, s); print("TR DONE", root.split("/")[1])

print("DONE", BATCH, time.strftime("%H:%M:%S"))