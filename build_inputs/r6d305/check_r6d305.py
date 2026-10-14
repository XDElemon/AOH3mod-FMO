# -*- coding: utf-8 -*-
"""r6d305 门禁：修 VerifyError（nSCM 不再碰 v3）+ 保留诊断（S1–S5 + N1–N5）"""
import sys, re
T = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

t = open(T, encoding="utf-8").read()
m = open(MM, encoding="utf-8").read()

# S5（关键）：nSCM 段内不得出现 v3
s0 = m.find(":try_start_nscm"); s1 = m.find(":nscm_skip", s0 + 1)
seg = m[s0:s1] if (s0 >= 0 and s1 > s0) else ""
A(("v3" not in seg) and ("move-exception v2" in seg), "S5a nSCM 段不碰 v3（p0 安全）")
A((":try_start_nscm" in m) and (":try_end_nscm" in m) and (".catch Ljava/lang/Exception; {:try_start_nscm .. :try_end_nscm} :catch_nscm" in m), "S5b nSCM catch 完整")
A(('"nSCM p1="' in m) and ('" f="' in m) and ('" st="' in m) and ('" mi="' in m), "S5c 字段齐")

A(("if-nez v1, :sw_go" in t) and ("if-ge v1, v2, :sw_go2" in t) and (":sw_r1" not in t), "S1 scWatch 极性修正")
A(".field public static dbgSCM:I" in t, "S4 dbgSCM 字段")
A('const-string v0, "nMMU m"' in m, "S3 nMMU m 字段")

# 负样本
t1 = t.replace("if-nez v1, :sw_go", "if-eqz v1, :sw_go", 1)
print(("PASS " if "if-nez v1, :sw_go" not in t1 else "FAIL ") + "N1 采样极性反转被抓")
if "if-nez v1, :sw_go" in t1: fails.append("N1")
t2 = t.replace("if-ge v1, v2, :sw_go2", "if-lt v1, v2, :sw_go2", 1)
print(("PASS " if "if-ge v1, v2, :sw_go2" not in t2 else "FAIL ") + "N2 上限极性反转被抓")
if "if-ge v1, v2, :sw_go2" in t2: fails.append("N2")
seg_mut = seg.replace("move-exception v2", "move-exception v3")
okN5 = ("v3" in seg_mut) and ("move-exception v3" in seg_mut)
print(("PASS " if okN5 else "FAIL ") + "N5 v3 复发被抓")
if not okN5: fails.append("N5")
t3 = m.replace(":try_end_nscm", "REMOVED")
print(("PASS " if ":try_end_nscm" not in t3 else "FAIL ") + "N3 try_end 移除被抓")
if ":try_end_nscm" in t3: fails.append("N3")
t4 = m.replace('const-string v0, "nMMU m"', "REMOVED", 1)
print(("PASS " if 'const-string v0, "nMMU m"' not in t4 else "FAIL ") + "N4 m 字段移除被抓")
if 'const-string v0, "nMMU m"' in t4: fails.append("N4")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)