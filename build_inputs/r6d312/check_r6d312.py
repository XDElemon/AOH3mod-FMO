# -*- coding: utf-8 -*-
"""r6d312 门禁：catch 首指令必须是 move-exception（S + N）"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
mm = open(MM, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

def first_after(ctag):
    m = re.search(r"(?m)^\s*:" + ctag + r"\s*\n", mm)
    if not m: return None
    nxt = mm[m.end():].lstrip()
    return nxt.split("\n")[0].strip()

for ctag in ["catch_7e", "catch_83"]:
    f = first_after(ctag)
    A(f is not None and f.startswith("move-exception v0"), "%s 首指令=move-exception（实际：%s）" % (ctag, f))

A("dbgSFC1:I" in mm and "dbgSFC2:I" in mm, "S3 计数器仍存在")
# 负样本：把 move-exception 与计数行换回去 → 检测函数应判假
b = mm.replace(":catch_7e\n move-exception v0\n", ":catch_7e\n", 1)
m = re.search(r"(?m)^\s*:catch_7e\s*\n", b)
nxt = b[m.end():].lstrip().split("\n")[0].strip()
A(not nxt.startswith("move-exception"), "N1 回退形态被识别")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)