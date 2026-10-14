# -*- coding: utf-8 -*-
"""r6d317 门禁：延迟收敛（setVisible 打标 → scWatch 首帧执行）"""
import sys
TR = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
tr = open(TR, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

i0 = tr.find('.method public setVisible(Z)V'); i1 = tr.find('.end method', i0)
sv = tr[i0:i1]
j0 = tr.find('.method private final scWatch()V'); j1 = tr.find('.end method', j0)
sw = tr[j0:j1]

A('sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z' in sv, "S1 setVisible 打标")
A('applyTopFilter' not in sv, "S2 setVisible 不再直接收敛")
A('if-eqz v0, :swf_skip' in sw and 'invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V' in sw, "S3 scWatch 首帧执行")
A('sNeedFilter:Z' in tr and tr.count('.field public static sNeedFilter:Z') == 1, "S4 字段唯一")
# 负样本
b = sv.replace('sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sNeedFilter:Z', '', 1)
A('sNeedFilter:Z' not in b, "N1 打标移除被抓")
b = sw.replace('if-eqz v0, :swf_skip', 'if-nez v0, :swf_skip', 1)
A('if-eqz v0, :swf_skip' not in b, "N2 首帧门极性反转被抓")
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)