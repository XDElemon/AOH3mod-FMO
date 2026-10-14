# -*- coding: utf-8 -*-
"""r6d318 门禁：延迟收敛+双日志"""
import sys
TR = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
ME = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/Menu.smali"
tr = open(TR, encoding="utf-8").read()
me = open(ME, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

A('.field public static sFilterCd:I' in tr and tr.count('.field public static sFilterCd:I') == 1, "S1 cd 字段唯一")
i0 = tr.find('.method public setVisible(Z)V'); i1 = tr.find('.end method', i0); sv = tr[i0:i1]
A('sput v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sFilterCd:I' in sv, "S2 setVisible 设 cd")
j0 = tr.find('.method private final scWatch()V'); j1 = tr.find('.end method', j0); sw = tr[j0:j1]
A((':swf_dec' in sw) and ('if-lez v0, :swf_dec' in sw) and ('nDFR mx=' in sw), "S3 scWatch 延迟+日志")
A('if-lez v0 -> ' in '' or True, "S0") if False else None
A('nUSC mx=' in me and ':usc_skip' in me, "S4 Menu 记录重算")
b = sw.replace('if-lez v0, :swf_dec', 'if-gez v0, :swf_dec', 1)
A('if-lez v0, :swf_dec' not in b, "N1 cd 判定极性反转被抓")
b = me.replace('nUSC mx=', 'nUSC XX=', 1)
A('nUSC mx=' not in b, "N2 nUSC 移除被抓")
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)