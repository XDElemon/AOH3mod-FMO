# -*- coding: utf-8 -*-
"""r6d308 补丁：修 r6d307 的 instance-of 误用（instance-of 直接写目标寄存器，无 move-result）。
把：
    instance-of v2, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;
    move-result v1
改成：
    instance-of v1, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;
"""
import hashlib, os, sys, time

BATCH = "r6d308"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

OLD = ('    instance-of v2, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;\n'
       '    move-result v1\n')
NEW = '    instance-of v1, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;\n'

ok = True
for root in ROOTS:
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    c = s.count(OLD)
    print("PRE", root.split("/")[1], c)
    if c != 1: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    t = root + "/" + MM
    raw = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw)
    s = raw.replace(OLD, NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE", root.split("/")[1], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))