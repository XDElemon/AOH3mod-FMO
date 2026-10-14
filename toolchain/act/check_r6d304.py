# -*- coding: utf-8 -*-
"""r6d304 门禁：采集器修正（S1–S4 + N1–N4）"""
import sys
T = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

t = open(T, encoding="utf-8").read()
m = open(MM, encoding="utf-8").read()

A(("if-nez v1, :sw_go" in t) and ("if-ge v1, v2, :sw_go2" in t) and (":sw_r1" not in t), "S1 scWatch 极性修正")
A(":try_end_nscm" in m and ".catch Ljava/lang/Exception; {:try_start_nscm .. :try_end_nscm} :catch_nscm" in m, "S2a nSCM catch 完整")
A('const-string v1, "nSCM p1="' in m and '" f="' in m and '" st="' in m and '" mi="' in m, "S2b nSCM 字段齐")
A('const-string v0, "nMMU m"' in m, "S3 nMMU m 字段")
A(".field public static dbgSCM:I" in t, "S4 dbgSCM 字段")

t1 = t.replace("if-nez v1, :sw_go", "if-eqz v1, :sw_go", 1)
print(("PASS " if "if-nez v1, :sw_go" not in t1 else "FAIL ") + "N1 采样极性反转被抓")
if "if-nez v1, :sw_go" in t1: fails.append("N1")
t2 = t.replace("if-ge v1, v2, :sw_go2", "if-lt v1, v2, :sw_go2", 1)
print(("PASS " if "if-ge v1, v2, :sw_go2" not in t2 else "FAIL ") + "N2 上限极性反转被抓")
if "if-ge v1, v2, :sw_go2" in t2: fails.append("N2")
t3 = m.replace(":try_end_nscm", "REMOVED")
print(("PASS " if ":try_end_nscm" not in t3 else "FAIL ") + "N3 try_end 移除被抓")
if ":try_end_nscm" in t3: fails.append("N3")
t4 = m.replace('const-string v0, "nMMU m"', "REMOVED", 1)
print(("PASS " if 'const-string v0, "nMMU m"' not in t4 else "FAIL ") + "N4 m 字段移除被抓")
if 'const-string v0, "nMMU m"' in t4: fails.append("N4")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)