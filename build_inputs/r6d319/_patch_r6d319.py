# -*- coding: utf-8 -*-
"""r6d319：多发校准——打开后按 cd==0/-30/-90 各收敛一次，-120 清请求；
每次收敛后打 nDFR mx=（沿用）。
替换 scWatch 顶部的 r6d318 块（切片：从 '# r6d318' 注释到 ':swf_skip' 标签前）。
"""
import os, sys, time
BATCH = "r6d319"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

NL = "\n\n"
NEWBLK = ('    # r6d319 多发校准：cd=0/-30/-90 各收敛一次；-120 清请求；每次记 nDFR mx=\n'
          '    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z' + NL +
          '    if-eqz v0, :swf_skip' + NL +
          '    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sFilterCd:I' + NL +
          '    add-int/lit8 v0, v0, -0x1' + NL +
          '    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sFilterCd:I' + NL +
          '    if-nez v0, :swf_shot' + NL +
          '    const/16 v1, -0x1e' + NL +
          '    if-ne v0, v1, :swf_shot' + NL +
          '    const/16 v1, -0x5a' + NL +
          '    if-ne v0, v1, :swf_shot' + NL +
          '    const/16 v1, -0x78' + NL +
          '    if-ne v0, v1, :swf_clear' + NL +
          '    goto :swf_skip' + NL +
          '    :swf_clear\n'
          '    const/4 v0, 0x0' + NL +
          '    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z' + NL +
          '    goto :swf_skip' + NL +
          '    :swf_shot\n'
          '    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCat:Ljava/lang/String;' + NL +
          '    if-nez v0, :swf_have' + NL +
          '    const-string v0, "all"' + NL +
          '    :swf_have\n'
          '    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V' + NL +
          '    :try_start_dfr\n'
          '    new-instance v0, Ljava/lang/StringBuilder;' + NL +
          '    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V' + NL +
          '    const-string v1, "nDFR mx="' + NL +
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;' + NL +
          '    move-result-object v0' + NL +
          '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I' + NL +
          '    move-result v1' + NL +
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;' + NL +
          '    move-result-object v0' + NL +
          '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;' + NL +
          '    move-result-object v0' + NL +
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V' + NL +
          '    :try_end_dfr\n'
          '    .catch Ljava/lang/Exception; {:try_start_dfr .. :try_end_dfr} :catch_dfr' + NL +
          '    goto :swf_skip' + NL +
          '    :catch_dfr\n'
          '    move-exception v1' + NL +
          '    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V' + NL +
          '    goto :swf_skip' + NL)

ok = True
for root in ROOTS:
    tr = open(root + "/" + TR, encoding="utf-8").read()
    j0 = tr.find('.method private final scWatch()V')
    assert j0 > 0
    j1 = tr.find('\\n.end method', j0)
    seg = tr[j0:j1]
    c = seg.find('# r6d318')
    k = seg.find('\n    :swf_skip\n', c)
    if k >= 0: k += 1
    print("PRE", root.split("/")[1], c, k)
    if c < 0 or k < 0: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + TR
    s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    j0 = s.find('.method private final scWatch()V')
    j1 = s.find('\\n.end method', j0)
    seg = s[j0:j1]
    c = seg.find('# r6d318')
    k = seg.find('\n    :swf_skip\n', c)
    if k >= 0: k += 1
    # k 指向 ':swf_skip' 标签文本；从 c 到 k 之前整体替换（保留标签）
    seg2 = seg[:c] + NEWBLK + seg[k:]
    s = s[:j0] + seg2 + s[j1:]
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))