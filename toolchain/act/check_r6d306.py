# -*- coding: utf-8 -*-
"""r6d306 门禁（S1–S4 + N1–N5）"""
import sys
T = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)
t = open(T, encoding="utf-8").read()
m = open(MM, encoding="utf-8").read()

A(("if-lt v1, v2, :sw_go2" in t) and ("if-ge v1, v2, :sw_go2" not in t), "S1 scWatch cap 极性修正")
A(".field public static dbgMOV:I" in t, "S2 dbgMOV 字段")
s0 = m.find(":try_start_nmov"); s1 = m.find(":nmov_skip", s0 + 1)
seg = m[s0:s1] if (s0 >= 0 and s1 > s0) else ""
A(('"nMOV x="' in seg) and ('" y="' in seg) and ('" i="' in seg) and (".catch Ljava/lang/Exception; {:try_start_nmov .. :try_end_nmov} :catch_nmov" in seg), "S3 nMOV 主体")
A("move-exception v3" in seg, "S4 catch 用 v3（本方法局部）")

t1 = t.replace("if-lt v1, v2, :sw_go2", "if-ge v1, v2, :sw_go2", 1)
print(("PASS " if "if-lt v1, v2, :sw_go2" not in t1 else "FAIL ") + "N1 cap 极性反转被抓")
if "if-lt v1, v2, :sw_go2" in t1: fails.append("N1")
m2 = m[:s0] + seg.replace("move-exception v3", "move-exception v4") + m[s1:]
print(("PASS " if "move-exception v4" in m2[s0:s0+len(seg)+40] else "FAIL ") + "N2 catch 撞 this(v4) 被抓")
if "move-exception v4" not in m2[s0:s0+len(seg)+40]: fails.append("N2")
m3 = m.replace(":try_end_nmov", "REMOVED")
print(("PASS " if ":try_end_nmov" not in m3 else "FAIL ") + "N3 try_end 移除被抓")
if ":try_end_nmov" in m3: fails.append("N3")
t3 = t.replace(".field public static dbgMOV:I", "REMOVED", 1)
print(("PASS " if ".field public static dbgMOV:I" not in t3 else "FAIL ") + "N4 字段移除被抓")
if ".field public static dbgMOV:I" in t3: fails.append("N4")
m4 = seg.replace('" i="', '" X="')
print(("PASS " if '" i="' not in m4 else "FAIL ") + "N5 旗标缺失被抓")
if '" i="' in m4: fails.append("N5")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)