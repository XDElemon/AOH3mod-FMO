# -*- coding: utf-8 -*-
"""r6d300 行为级模拟器 v2：解析真实 smali -> 多机型不变量 + 变异敏感性。"""
import re, sys
P = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
s = open(P, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

INV1 = "    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;IZZ)V"
PAIR = INV1 + "\n\n    move v3, v14"

NODE_RE = re.compile(r"add-int/lit8 v19, v0, 0xf\s+sget v0, [^\n]*PADDING:I\s+mul-int/lit8 v0, v0, 0x2\s+sget v2, [^\n]*BUTTON_HEIGHT:I\s+add-int/2addr v0, v2\s+add-int/lit8 v0, v0, (0x[0-9a-fA-F]+)")

def parse(t):
    posy = (PAIR in t)
    hgt = bool(re.search(r"sget v10, [^\n]*GAME_HEIGHT:I\s+sub-int/2addr v10, v14", t))
    m = NODE_RE.search(t)
    gap = int(m.group(1), 16) if m else None
    j = t.find(".method private cyOf(I)I")
    cyo = "add-int/2addr v2, v0" in t[j:t.find(".end method", j)]
    return posy, hgt, gap, cyo

posy, hgt, gap, cyo = parse(s)
print("parsed: posy=%s hgt=%s gap=%s cyo=%s" % (posy, hgt, gap, cyo))
A(posy, "P1 菜单 y = titleH（贴顶）")
A(hgt, "P2 高度 = GAME_HEIGHT − titleH")
A(gap == 5, "P3 节点增量常量 == 0x5（20−15 净增量）")
A(cyo, "P4 cyOf 同款偏移")

for (H, th, pad, btn) in [(1080, 60, 6, 60), (720, 60, 6, 60), (1440, 60, 6, 60), (1080, 72, 8, 72), (1080, 60, 12, 72)]:
    mh = H - th
    tab = th + pad * 2
    tabB = tab + btn
    tech = th + 15 + (pad * 2 + btn + (gap if gap else 0))
    tag = "%s" % ((H, th, pad, btn),)
    A(th + mh == H, "R%s 底边=屏底" % tag)
    A(tech == th + pad * 2 + btn + 20, "R%s 内容顶公式" % tag)
    A(tech - tabB == 20, "R%s 按钮下间隙=20" % tag)
    A(tabB > tab and tech > tabB, "R%s 顺序：标题<按钮<内容" % tag)

t = s.replace(PAIR, INV1 + "\n\n    move v3, v10", 1)
p2 = parse(t)[0]
print(("PASS " if not p2 else "FAIL ") + "M1 posY 换寄存器被抓")
if p2: fails.append("M1")
t = s.replace("sub-int/2addr v10, v14", "sub-int/2addr v10, v0", 1)
h2 = parse(t)[1]
print(("PASS " if not h2 else "FAIL ") + "M2 高度换寄存器被抓")
if h2: fails.append("M2")
t = NODE_RE.sub(lambda m: m.group(0).replace("0x5", "0x6"), s, count=1)
g2 = parse(t)[2]
print(("PASS " if g2 != 5 else "FAIL ") + "M3 增量 0x5→0x6 被抓")
if g2 == 5: fails.append("M3")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)