# -*- coding: utf-8 -*-
"""r6d318：延迟2帧收敛 + 双保险 + 日志(nDFR/nUSC)
A) Tree scWatch: sNeedFilter&sFilterCd(2帧) → applyTopFilter + 打 nDFR mx=
B) Tree setVisible: flag=true 且 cd=2
C) Tree 新增字段 sFilterCd:I
D) Menu.updateScrollable 末尾：若 p0 是科技树 → 打 nUSC mx=（定位事后重算者）
"""
import os, sys, time
BATCH = "r6d318"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
ME = "aoc/kingdoms/lukasz/menu/Menu.smali"

SW_OLD = ('    # r6d317 打开后首帧：按当前页签收敛一次（等价于点击页签的时机）\n'
          '    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
          '\n'
          '    if-eqz v0, :swf_skip\n'
          '\n'
          '    const/4 v0, 0x0\n'
          '\n'
          '    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
          '\n'
          '    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCat:Ljava/lang/String;\n'
          '\n'
          '    if-nez v0, :swf_have\n'
          '\n'
          '    const-string v0, "all"\n'
          '\n'
          '    :swf_have\n'
          '\n'
          '    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V\n'
          '\n'
          '    :swf_skip\n')

SW_NEW = ('    # r6d318 打开后延迟2帧收敛；收敛后记录 nDFR mx=\n'
          '    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
          '\n'
          '    if-eqz v0, :swf_skip\n'
          '\n'
          '    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sFilterCd:I\n'
          '\n'
          '    if-lez v0, :swf_dec\n'
          '\n'
          '    goto :swf_apply\n'
          '\n'
          '    :swf_dec\n'
          '    add-int/lit8 v0, v0, -0x1\n'
          '\n'
          '    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sFilterCd:I\n'
          '\n'
          '    goto :swf_skip\n'
          '\n'
          '    :swf_apply\n'
          '    const/4 v0, 0x0\n'
          '\n'
          '    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
          '\n'
          '    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCat:Ljava/lang/String;\n'
          '\n'
          '    if-nez v0, :swf_have\n'
          '\n'
          '    const-string v0, "all"\n'
          '\n'
          '    :swf_have\n'
          '\n'
          '    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V\n'
          '\n'
          '    :try_start_dfr\n'
          '    new-instance v0, Ljava/lang/StringBuilder;\n'
          '\n'
          '    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n'
          '\n'
          '    const-string v1, "nDFR mx="\n'
          '\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
          '\n'
          '    move-result-object v0\n'
          '\n'
          '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I\n'
          '\n'
          '    move-result v1\n'
          '\n'
          '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
          '\n'
          '    move-result-object v0\n'
          '\n'
          '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
          '\n'
          '    move-result-object v0\n'
          '\n'
          '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n'
          '\n'
          '    :try_end_dfr\n'
          '    .catch Ljava/lang/Exception; {:try_start_dfr .. :try_end_dfr} :catch_dfr\n'
          '\n'
          '    goto :swf_skip\n'
          '\n'
          '    :catch_dfr\n'
          '    move-exception v1\n'
          '\n'
          '    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n'
          '\n'
          '    :swf_skip\n')

SV_OLD = ('    const/4 v1, 0x1\n'
          '\n'
          '    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
          '\n'
          '    .line 271\n')
SV_NEW = ('    const/4 v1, 0x1\n'
          '\n'
          '    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
          '\n'
          '    const/4 v1, 0x2\n'
          '\n'
          '    sput v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sFilterCd:I\n'
          '\n'
          '    .line 271\n')

FIELD_ANCHOR = '.field public static sNeedFilter:Z\n'
FIELD_ADD = '.field public static sFilterCd:I\n'

USC_BLOCK = ('    # r6d318 若为科技树：记录一次范围重算（定位事后撑大者）\n'
             '    instance-of v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;\n'
             '\n'
             '    if-eqz v0, :usc_skip\n'
             '\n'
             '    :try_start_usc\n'
             '    new-instance v0, Ljava/lang/StringBuilder;\n'
             '\n'
             '    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n'
             '\n'
             '    const-string v1, "nUSC mx="\n'
             '\n'
             '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
             '\n'
             '    move-result-object v0\n'
             '\n'
             '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I\n'
             '\n'
             '    move-result v1\n'
             '\n'
             '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
             '\n'
             '    move-result-object v0\n'
             '\n'
             '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
             '\n'
             '    move-result-object v0\n'
             '\n'
             '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n'
             '\n'
             '    :try_end_usc\n'
             '    .catch Ljava/lang/Exception; {:try_start_usc .. :try_end_usc} :catch_usc\n'
             '\n'
             '    goto :usc_done\n'
             '\n'
             '    :catch_usc\n'
             '    move-exception v2\n'
             '\n'
             '    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n'
             '\n'
             '    :usc_done\n'
             '    :usc_skip\n')

USC_ANCHOR = '    :cond_a6\n    return-void\n'

ok = True
for root in ROOTS:
    tr = open(root + "/" + TR, encoding="utf-8").read()
    me = open(root + "/" + ME, encoding="utf-8").read()
    checks = [tr.count(SW_OLD) == 1, tr.count(SV_OLD) == 1, tr.count(FIELD_ANCHOR) == 1, me.count(USC_ANCHOR) == 1]
    print("PRE", root.split("/")[1], checks)
    if not all(checks): ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + TR; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    s = s.replace(SW_OLD, SW_NEW, 1)
    s = s.replace(SV_OLD, SV_NEW, 1)
    s = s.replace(FIELD_ANCHOR, FIELD_ANCHOR + FIELD_ADD, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("TR DONE", root.split("/")[1])

    t = root + "/" + ME; s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    s = s.replace(USC_ANCHOR, '    :cond_a6\n' + USC_BLOCK + '    return-void\n', 1)
    open(t, "w", encoding="utf-8").write(s)
    print("ME DONE", root.split("/")[1])

print("DONE", BATCH, time.strftime("%H:%M:%S"))