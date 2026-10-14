# -*- coding: utf-8 -*-
"""r6d307 补丁（行为修复）：拖动被伴生 EmptyMenu 吃掉 → 在内容拖动处理器入口重定向到科技树。
插入点：MenuManager.actionMove_MenuInnerElements 的 :try_start_0 后（原第一行执行前）。
只用 v0/v1/v2；this=v3 绝不可碰。"""
import hashlib, os, sys, time

BATCH = "r6d307"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

OLD = '    .line 2654\n    :try_start_0\n'
NEW = ('    .line 2654\n    :try_start_0\n'
       '    # r6d307 伴生空菜单拦截：拖动若落在 EmptyMenu 上，重定向到科技树\n'
       '    const/4 v1, 0x0\n'
       '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;\n'
       '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z\n'
       '    move-result v0\n'
       '    if-eqz v0, :redir_skip\n'
       '    iget v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
       '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;\n'
       '    move-result-object v2\n'
       '    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
       '    move-result-object v2\n'
       '    instance-of v2, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;\n'
       '    move-result v1\n'
       '    if-eqz v1, :redir_skip\n'
       '    iget v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_TECHNOLOGY_TREE:I\n'
       '    iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n'
       '    :redir_skip\n')

ok = True
for root in ROOTS:
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    c = s.count(OLD)
    print("PRE", root.split("/")[1], c)
    if c != 1: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + MM
    raw = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw)
    s = raw.replace(OLD, NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))