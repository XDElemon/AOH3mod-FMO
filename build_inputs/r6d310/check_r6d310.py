# -*- coding: utf-8 -*-
"""r6d310 门禁：Z 字段专用字节码 + r6d309 关键断言保持（S + N）"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
me = open("/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/Menu.smali", encoding="utf-8").read()
mm = open(MM, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

F = "Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z"
A(('[s]get v' not in ''), "S0")
import re as _re
plain = _re.findall(r"(?m)^\s*(sget|sput|iget|iput) [^\n]*scxOn:Z\s*$", mm)
A(len(plain) == 0, "S1 scxOn 无普通 get/put（必须 -boolean）")
A(mm.count("sget-boolean v0, " + F) == 1, "S2 sget-boolean ×1")
A(mm.count("sput-boolean v0, " + F) == 2, "S3 sput-boolean ×2")
# r6d309 关键断言保持
def slice_m(s, h):
    i = s.find(h); j = s.find("\n.end method", i)
    return s[i:j]
h = slice_m(mm, ".method private final actionMove_MenuInnerElements(II)V")
A(".registers 9" in h and "if-eqz v0, :scx_init" in h and "if-ne v0, v1, :scx_native" in h, "S4 r6d309 主体仍在")
g = slice_m(me, ".method public final updateMenuPosX(I)V")
A(".registers 6" in g and "scuLog(II)V" in g, "S5 Menu 侧标记仍在")
# 负样本
b = mm.replace("sput-boolean v0, " + F, "sput v0, " + F, 1)
A(len(_re.findall(r"(?m)^\s*(sget|sput|iget|iput) [^\n]*scxOn:Z\s*$", b)) == 1, "N1 回退为普通 sput 被识别")
b = mm.replace("sget-boolean v0, " + F, "sget v0, " + F, 1)
A(len(_re.findall(r"(?m)^\s*(sget|sput|iget|iput) [^\n]*scxOn:Z\s*$", b)) == 1, "N2 回退为普通 sget 被识别")
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)