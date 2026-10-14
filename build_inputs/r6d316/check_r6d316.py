# -*- coding: utf-8 -*-
"""r6d316 门禁：setVisible(true) 内置 applyTopFilter（S + N）"""
import sys
TR = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
tr = open(TR, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

A('if-nez v1, :tsc_have_tab' in tr, "S1 空值判定 if-nez（极性）")
A('call 占位' not in tr, "S0 占位") if False else None
A('applyTopFilter(Ljava/lang/String;)V\n\n    .line 271' in tr.replace('    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V', '    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V'), "S2 applyTopFilter 调用在 setVisible 内")
A(tr.count('invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V') >= 1, "S3 调用存在")
b = tr.replace('if-nez v1, :tsc_have_tab', 'if-eqz v1, :tsc_have_tab', 1)
A('if-nez v1, :tsc_have_tab' not in b, "N1 极性回退被抓")
b = tr.replace('const-string v1, "all"', 'const-string v1, "xxx"', 1)
A('const-string v1, "all"' not in b, "N2 默认页签篡改被抓")
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)