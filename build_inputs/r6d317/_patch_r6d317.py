# -*- coding: utf-8 -*-
"""r6d317：修 r6d316"首开空屏"——把收敛时机从"setVisible 时"推迟到"打开后首帧"
① setVisible 只打标记 sNeedFilter=true（不再直接 applyTopFilter）
② scWatch 顶部（draw 每帧调用）：若标记 → 清除并按当前页签 applyTopFilter（等价于点一下页签的时机）
③ 新增 .field sNeedFilter:Z
"""
import os, sys, time
BATCH = "r6d317"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

OLD_A = ('    :ts_vis_show_done\n'
         '\n'
         '    # r6d316 打开时按当前页签重排（收敛水平范围）\n'
         '    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCatLast:Ljava/lang/String;\n'
         '\n'
         '    if-nez v1, :tsc_have_tab\n'
         '\n'
         '    const-string v1, "all"\n'
         '\n'
         '    :tsc_have_tab\n'
         '\n'
         '    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V\n'
         '\n'
         '    .line 271\n')
NEW_A = ('    :ts_vis_show_done\n'
         '\n'
         '    # r6d317 标记：本次打开需在“首帧绘制后”收敛范围（见 scWatch 顶部）\n'
         '    const/4 v1, 0x1\n'
         '\n'
         '    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z\n'
         '\n'
         '    .line 271\n')

FIELD_ANCHOR = '.field public static sTopCatLast:Ljava/lang/String;\n'
FIELD_ADD = '.field public static sNeedFilter:Z\n'

SW_OLD = ('.method private final scWatch()V\n'
          '    .registers 10\n'
          '\n'
          '    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwF:I\n')
SW_NEW = ('.method private final scWatch()V\n'
          '    .registers 10\n'
          '\n'
          '    # r6d317 打开后首帧：按当前页签收敛一次（等价于点击页签的时机）\n'
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
          '    :swf_skip\n'
          '\n'
          '    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scwF:I\n')

ok = True
for root in ROOTS:
    tr = open(root + "/" + TR, encoding="utf-8").read()
    checks = [tr.count(OLD_A) == 1, tr.count(FIELD_ANCHOR) == 1, tr.count(SW_OLD) == 1]
    print("PRE", root.split("/")[1], checks)
    if not all(checks): ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + TR
    s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    s = s.replace(OLD_A, NEW_A, 1)
    s = s.replace(FIELD_ANCHOR, FIELD_ANCHOR + FIELD_ADD, 1)
    s = s.replace(SW_OLD, SW_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))