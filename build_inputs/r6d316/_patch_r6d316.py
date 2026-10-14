# -*- coding: utf-8 -*-
"""r6d316：初次进入也收敛水平范围
在 InGame_TechnologyTree.setVisible(true) 路径尾部追加：
  applyTopFilter(sTopCatLast ?: "all")
（原来只有"点击页签"才会重排 → 首次进入范围停留在构造期的全量尺寸）
"""
import os, sys, time
BATCH = "r6d316"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
TR = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"

OLD = '    :ts_vis_show_done\n    .line 271\n'
NEW = ('    :ts_vis_show_done\n'
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

ok = True
for root in ROOTS:
    tr = open(root + "/" + TR, encoding="utf-8").read()
    c = tr.count(OLD)
    print("PRE", root.split("/")[1], c)
    if c != 1: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + TR
    s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    s = s.replace(OLD, NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))