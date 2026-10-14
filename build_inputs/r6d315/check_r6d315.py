# -*- coding: utf-8 -*-
"""r6d315 门禁 v2（按真实空行格式）"""
import sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
TR = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
mm = open(MM, encoding="utf-8").read()
tr = open(TR, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

NL = "\n\n"
GATE_PAT = 'if-eqz v12, :rn_resize' + NL + '    goto :rn_l4n'
A(GATE_PAT not in tr, "S1 Empty 重设不再限 all")
A(('mul-int/2addr v12, v3' + NL + '    add-int/lit8 v12, v12, 0x28') in tr, "S2 余量改为 +40")
A('sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I\n    if-nez v4, :scx_lb_ready' not in mm, "S3 扫描夹取已回退")
A('invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxEnsureMin()V' not in mm, "S4 ensureMin 调用已移除")
# 负样本
b = tr.replace('mul-int/2addr v12, v3' + NL + '    add-int/lit8 v12, v12, 0x28',
               'mul-int/2addr v12, v3' + NL + '    add-int/2addr v12, v13', 1)
A(('add-int/lit8 v12, v12, 0x28') not in b, "N1 余量回退被抓")
b = tr.replace('    :rn_resize\n',
               '    if-eqz v12, :rn_resize' + NL + '    goto :rn_l4n' + NL + '    :rn_resize\n', 1)
A(GATE_PAT in b, "N2 回退门控被识别")
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)