# -*- coding: utf-8 -*-
"""r6d312 热修：异常处理器首指令必须是 move-exception
把 r6d311 误插在 :catch_7e/:catch_83 标签后、move-exception 之前的计数器，挪到 move-exception 之后（正则版，容忍空行）。
"""
import os, re, sys, time
BATCH = "r6d312"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

def fix(s, ctag, fld):
    pat = (r'(:' + ctag + r'\n)'
           r'(\s*sget v1, [^\n]*?->' + fld + r':I\n'
           r'\s*add-int/lit8 v1, v1, 0x1\n'
           r'\s*sput v1, [^\n]*?->' + fld + r':I\n)'
           r'(\s*move-exception v0\n)')
    rep = r'\1 move-exception v0\n\2'
    n = len(re.findall(pat, s))
    print("HIT", ctag, n)
    return re.sub(pat, rep, s, count=1), n

ok = True
for root in ROOTS:
    s = open(root + "/" + MM, encoding="utf-8").read()
    for ctag, fld in [("catch_7e", "dbgSFC1"), ("catch_83", "dbgSFC2")]:
        _, n = fix(s, ctag, fld)
        if n != 1: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(s)
    for ctag, fld in [("catch_7e", "dbgSFC1"), ("catch_83", "dbgSFC2")]:
        s, _ = fix(s, ctag, fld)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1])
print("DONE", BATCH, time.strftime("%H:%M:%S"))