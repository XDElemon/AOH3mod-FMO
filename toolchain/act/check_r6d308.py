# -*- coding: utf-8 -*-
"""r6d308 门禁：instance-of 修正（S1–S4 + N1–N4，负样本用模拟器复算）"""
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
A((s0 >= 0) and (s1 > s0), "S1 块存在")
A("instance-of v1, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;" in blk, "S2 instance-of 直写 v1")
A("move-result v1" not in blk, "S3 不再有 move-result v1")
A(("v3" not in blk) and ("v4" not in blk) and ("move-exception" not in blk), "S4 不碰参数槽")
# 负样本（文本级：确保替换/移除会被门禁或审计器发现）
b1 = blk.replace("instance-of v1, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;",
                 "instance-of v2, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;\n    move-result v1")
print(("PASS " if ("move-result v1" in b1 and "instance-of v1, v2" not in b1) else "FAIL ") + "N1 回退形态可被识别")
if not ("move-result v1" in b1 and "instance-of v1, v2" not in b1): fails.append("N1")
b2 = blk.replace('if-eqz v1, :redir_skip', 'if-nez v1, :redir_skip', 1)
print(("PASS " if 'if-eqz v1, :redir_skip' not in b2 else "FAIL ") + "N2 极性反转可被识别")
if 'if-eqz v1, :redir_skip' in b2: fails.append("N2")
b3 = blk.replace('iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I', 'REMOVED', 1)
print(("PASS " if 'iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I' not in b3 else "FAIL ") + "N3 写回移除可被识别")
if 'iput v0, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I' in b3: fails.append("N3")
b4 = blk.replace('Laoc/kingdoms/lukasz/menus/EmptyMenu;', 'Laoc/kingdoms/lukasz/menus/OtherMenu;', 1)
print(("PASS " if 'Laoc/kingdoms/lukasz/menus/EmptyMenu;' not in b4 else "FAIL ") + "N4 类名替换可被识别")
if 'Laoc/kingdoms/lukasz/menus/EmptyMenu;' in b4: fails.append("N4")
print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)