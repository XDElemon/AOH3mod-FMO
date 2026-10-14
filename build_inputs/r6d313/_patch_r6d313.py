# -*- coding: utf-8 -*-
"""r6d313：卡死真修复（v2 脚本）
① 加固：X/Y 锚定消耗标志改为显式 const/4 v3,0x0 + iput-boolean v3（不再依赖 v1=0）
② 探针：nSF1/nSF0 改用 v3 记录 id（不再污染 v1）
"""
import os, sys, time
BATCH = "r6d313"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

X_OLD = ('    .line 2666\n'
         '    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z\n')
X_NEW = ('    .line 2666\n'
         '    const/4 v3, 0x0\n'
         '    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z\n')

Y_OLD = ('    .line 2657\n'
         '    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosY:Z\n')
Y_NEW = ('    .line 2657\n'
         '    const/4 v3, 0x0\n'
         '    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosY:Z\n')

NF1_OLD = ('    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z\n'
           '    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
           '    const/4 v2, 0x1\n'
           '    invoke-direct {p0, v2, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->sfLog(III)V\n')
NF1_NEW = ('    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z\n'
           '    iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
           '    const/4 v2, 0x1\n'
           '    invoke-direct {p0, v2, v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->sfLog(III)V\n')

NF0_OLD = ('    move-result v0\n'
           '    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
           '    const/4 v2, 0x0\n'
           '    invoke-direct {p0, v2, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->sfLog(III)V\n')
NF0_NEW = ('    move-result v0\n'
           '    iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
           '    const/4 v2, 0x0\n'
           '    invoke-direct {p0, v2, v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->sfLog(III)V\n')

PAIRS = [("X", X_OLD, X_NEW, 1), ("Y", Y_OLD, Y_NEW, 1), ("NF1", NF1_OLD, NF1_NEW, 1), ("NF0", NF0_OLD, NF0_NEW, 1)]

ok = True
for root in ROOTS:
    s = open(root + "/" + MM, encoding="utf-8").read()
    for name, a, b, cnt in PAIRS:
        n = s.count(a)
        print("PRE", root.split("/")[1], name, n)
        if n != cnt: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    for name, a, b, cnt in PAIRS:
        s = s.replace(a, b)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))