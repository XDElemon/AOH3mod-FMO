# -*- coding: utf-8 -*-
"""r6d314 门禁：右缘拦截 + 重定向扩展 + 计数器（S + N）"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
ME = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/Menu.smali"
TR = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
mm = open(MM, encoding="utf-8").read()
me = open(ME, encoding="utf-8").read()
tr = open(TR, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

A("InGame_TechnologyTreeEmpty;\n    if-eqz v1, :redir_skip" in mm, "S1 重定向扩展")
A(".field public static scxMin:I" in tr, "S2 scxMin 字段")
A(".method public static scxEnsureMin()V" in tr, "S3 scxEnsureMin 方法")
A("if-lez v3, :em_zero" in tr and "if-lez v5, :em_zero" in tr and "sub-int/2addr v5, v3" in tr, "S4 右缘换算")
A("sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I\n    if-nez v4, :scx_lb_ready" in mm, "S5 夹取用 scxMin")
A(":scx_lb_ready" in mm, "S6 scx_lb_ready 标签")
A("invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxEnsureMin()V" in mm, "S7 actionDown 调用")
A(" mn=" in tr and " an=" in tr and " nm=" in tr and " rm=" in tr and " t=" in tr and " et=" in tr and " c=" in tr, "S8 sfCounters 扩展字段")
A("dbgSFAN:I" in mm and "dbgSFNM:I" in mm and "dbgSFRM:I" in me, "S9 三计数器写入")
# 负样本
b = mm.replace("    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I\n    if-nez v4, :scx_lb_ready",
               "    sget v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxMin:I\n    if-eqz v4, :scx_lb_ready", 1)
A("if-nez v4, :scx_lb_ready" not in b, "N1 夹取分支反转被抓")
b = mm.replace("invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxEnsureMin()V", "", 1)
A("scxEnsureMin()V" not in b, "N2 ensureMin 调用移除被抓")
b = tr.replace("if-le v5, v3, :em_skip", "if-ge v5, v3, :em_skip", 1)
A("if-le v5, v3, :em_skip" not in b, "N3 取最大右缘反转被抓")
KEY = "InGame_TechnologyTreeEmpty;\n    if-eqz v1, :redir_skip"
b = mm.replace(KEY, "", 1)
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)