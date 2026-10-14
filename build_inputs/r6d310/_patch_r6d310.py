# -*- coding: utf-8 -*-
"""r6d310 热修：Z 字段必须用 -boolean 字节码
把 scxOn:Z 的 sget/sput 改为 sget-boolean/sput-boolean（sget×1、sput×2）。
"""
import os, sys, time
BATCH = "r6d310"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

PAIRS = [
    ("sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z",
     "sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z"),
    ("sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z",
     "sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxOn:Z"),
]

ok = True
for root in ROOTS:
    s = open(root + "/" + MM, encoding="utf-8").read()
    n1 = s.count(PAIRS[0][0]); n2 = s.count(PAIRS[1][0])
    print("PRE", root.split("/")[1], n1, n2)
    if n1 != 1 or n2 != 2: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    for a, b in PAIRS:
        s = s.replace(a, b)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))