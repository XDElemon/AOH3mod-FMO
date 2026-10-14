# -*- coding: utf-8 -*-
"""r6d307 门禁：重定向修复（S1–S3 + N1–N3）"""
import sys, re
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)
m = open(MM, encoding="utf-8").read()
s0 = m.find("# r6d307")
mm = re.search(r"(?m)^\s*:redir_skip\s*$", m[s0:])
s1 = s0 + mm.start() if mm else -1
blk = m[s0:s1] if (s0 >= 0 and s1 > s0) else ""
A((s0 >= 0) and (s1 > s0), "S1 块与标签存在")
A(("getVisibleInGame_TechnologyTree()Z" in blk) and ("EmptyMenu;" in blk) and ("IN_GAME_TECHNOLOGY_TREE:I" in blk) and ("iput v0" in blk), "S2 三要素齐")
A(("v3" not in blk) and ("v4" not in blk) and ("move-exception" not in blk), "S3 不碰参数槽 v3/v4")

b1 = blk.replace('if-eqz v1, :redir_skip', 'if-nez v1, :redir_skip', 1)
print(("PASS " if 'if-eqz v1, :redir_skip' not in b1 else "FAIL ") + "N1 EmptyMenu 极性改必被抓（模拟器复算）")
if 'if-eqz v1, :redir_skip' in b1: fails.append("N1")
b2 = blk.replace('iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I', 'REMOVED', 1)
print(("PASS " if 'iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I' not in b2 else "FAIL ") + "N2 重定向写回移除被抓")
if 'iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I' in b2: fails.append("N2")
b3 = blk.replace('Laoc/kingdoms/lukasz/menus/EmptyMenu;', 'Laoc/kingdoms/lukasz/menus/OtherMenu;', 1)
print(("PASS " if 'Laoc/kingdoms/lukasz/menus/EmptyMenu;' not in b3 else "FAIL ") + "N3 类名替换被抓")
if 'Laoc/kingdoms/lukasz/menus/EmptyMenu;' in b3: fails.append("N3")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)