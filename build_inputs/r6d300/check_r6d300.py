# -*- coding: utf-8 -*-
"""r6d300 门禁 v2：全屏布局（语义断言 S1–S7 + 变异负样本 N1–N4 必红）"""
import sys, os, re
P = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

if not os.path.exists(P):
    print("FAIL file missing"); sys.exit(1)
s = open(P, encoding="utf-8").read()

INV1 = "    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;IZZ)V"
PAIR = INV1 + "\n\n    move v3, v14"

A(PAIR in s, "S1a posY pair present")
A("div-int/lit8 v1, v10, 0x2" not in s, "S1b old center block absent")

A("sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n\n    sub-int/2addr v10, v14" in s, "S2 height override")

A("invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I" in s, "S3a board max insert")
A("invoke-direct {v1, v2, v2, v12, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V" in s, "S3b Empty uses v3")
A(", v12, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V" not in s, "S3c old Empty arg gone")

i0 = s.find("add-int/lit8 v19, v0, 0xf")
i1 = s.find("add-int v19, v19, v0")
seg = s[i0:i1 + 40] if (i0 > 0 and i1 > i0) else ""
A(i0 > 0 and i1 > i0, "S4a node offset applied")
A(("mul-int/lit8 v0, v0, 0x2" in seg) and ("add-int/lit8 v0, v0, 0x5" in seg), "S4b node recipe")

j0 = s.find(".method private cyOf(I)I")
j1 = s.find(".end method", j0)
cyo = s[j0:j1] if j0 >= 0 else ""
A(("add-int/2addr v2, v0" in cyo) and ("mul-int/lit8 v0, v0, 0x2" in cyo) and ("add-int/lit8 v0, v0, 0x5" in cyo), "S5a cyOf recipe")
A("sub-int/2addr v2, v0" not in cyo, "S5b cyOf polarity")
A(("check-cast v0" in cyo) and ("iget v1" in cyo), "S5c cyOf structure intact")

A(s.count("updateMenuElements_IsInView()V") == 1, "S6a isInView kept")
A(s.count("sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I") >= 1, "S6b pin intact")

A(("const/16 v3, 0x3c" not in s) and ("0x45" not in s), "S7 no stale literals")

def check_after(t):
    return ((PAIR in t)
            and ("sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n\n    sub-int/2addr v10, v14" in t)
            and ("invoke-direct {v1, v2, v2, v12, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V" in t))

t = s.replace("sub-int/2addr v10, v14", "sub-int/2addr v10, v0", 1)
print(("PASS " if not check_after(t) else "FAIL ") + "N1 height reg swap")
if check_after(t): fails.append("N1")

t = s.replace(", v12, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V",
              ", v12, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V", 1)
print(("PASS " if not check_after(t) else "FAIL ") + "N2 Empty arg reverted")
if check_after(t): fails.append("N2")

def node_gap_ok(t):
    i0 = t.find("add-int/lit8 v19, v0, 0xf"); i1 = t.find("add-int v19, v19, v0")
    ss = t[i0:i1 + 40] if (i0 > 0 and i1 > i0) else ""
    return "add-int/lit8 v0, v0, 0x5" in ss
t3 = re.sub(r"(add-int/lit8 v0, v0, )0x5(\n\n    add-int v19, v19)", r"\g<1>0x6\g<2>", s, count=1)
print(("PASS " if (t3 != s and not node_gap_ok(t3)) else "FAIL ") + "N3 node gap 0x5->0x6")
if not (t3 != s and not node_gap_ok(t3)): fails.append("N3")

t4 = s.replace(PAIR, INV1 + "\n\n    move v3, v10", 1)
print(("PASS " if not (PAIR in t4) else "FAIL ") + "N4 posY swap")
if (PAIR in t4): fails.append("N4")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)