#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sim_airrange.py —— 行为级模拟器：解释三处真实 smali 的"雷达加成"分支
判据（与 airrange.expected 一致）：(hasRadar, hasLW) → 基础射程 / 加成射程
  (0,0)=base  (1,0)=R2  (0,1)=R2  (1,1)=R2
另做反转敏感性自检：把 if-nez 改成 if-eqz 后，模拟必须给出不同结果（否则模拟器没在真解释）
用法: python3 sim_airrange.py [smali树]
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))

def expected():
    vals = [l.split("#")[0].strip() for l in open(os.path.join(HERE, "airrange.expected"), encoding="utf-8")]
    vals = [v for v in vals if v]
    base, mult = int(vals[0]), float(vals[1])
    return base, int(round(base * mult))

SITES = [
    ("map/battles/AirDefense.smali", "v13", "AirLat;->hit", "inRange 判定"),
    ("map/battles/AirDefDiag.smali", "v15", "AirLat;->hit", "inR 诊断镜像"),
    ("map/province/RadarBitmap.smali", "v11", "AirLat;->f", "AD圈(RadarBitmap.refreshAd)"),
]

def region(src, reg, stop, base):
    start = src.find("const/16 %s, 0x%x" % (reg, base))
    if start < 0:
        return None
    end = src.find(stop, start)
    if end < 0:
        return None
    # 从行首开始
    s = src.rfind("\n", 0, start) + 1
    return src[s:end]

def run(txt, radar, lw):
    lines = [l.strip() for l in txt.splitlines()]
    labels, regs, pending, pc, steps = {}, {}, 0, 0, 0
    for i, l in enumerate(lines):
        m = re.match(r"^(:\w+)$", l)
        if m:
            labels[m.group(1)] = i
    while pc < len(lines) and steps < 500:
        steps += 1
        l = lines[pc]
        if not l or l.startswith("#"):
            pc += 1; continue
        m = re.match(r"^const/16 (\w+), (0x[0-9a-fA-F]+)", l)
        if m:
            regs[m.group(1)] = int(m.group(2), 16); pc += 1; continue
        m = re.match(r"^move-result (\w+)$", l)
        if m:
            regs[m.group(1)] = pending; pc += 1; continue
        m = re.match(r"^invoke-virtual \{\w+, \w+\}, .*->hasRadarBuilding\(I\)Z$", l)
        if m:
            pending = radar; pc += 1; continue
        m = re.match(r"^invoke-virtual \{\w+, \w+\}, .*->hasLongWaveRadarBuilding\(I\)Z$", l)
        if m:
            pending = lw; pc += 1; continue
        m = re.match(r"^(if-nez|if-eqz) (\w+), (:\w+)$", l)
        if m:
            op, r, lab = m.groups()
            v = regs.get(r, 0)
            take = (v == 0) if op == "if-nez" else (v != 0)
            pc = labels[lab] if take else pc + 1
            continue
        m = re.match(r"^goto (:\w+)$", l)
        if m:
            pc = labels[m.group(1)]; continue
        m = re.match(r"^add-int/lit16 (\w+), (\w+), (0x[0-9a-fA-F]+)", l)
        if m:
            regs[m.group(1)] = regs.get(m.group(2), 0) + int(m.group(3), 16); pc += 1; continue
        pc += 1
    return regs.get(REG, None)

def main():
    tree = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
    base, r2 = expected()
    print("  参数：base=%d  R2=%d" % (base, r2))
    ok = True
    for rel, reg, stop, name in SITES:
        global REG
        REG = reg
        src = open(os.path.join(tree, "aoc/kingdoms/lukasz", rel), encoding="utf-8").read()
        txt = region(src, reg, stop, base)
        if not txt:
            print("  ❌ %s：找不到区域（锚点丢了）" % name); ok = False; continue
        want = {(0, 0): base, (1, 0): r2, (0, 1): r2, (1, 1): r2}
        got = {}
        for inp in want:
            got[inp] = run(txt, *inp)
        good = all(got[i] == want[i] for i in want)
        print("  [%s] %-14s %s" % ("PASS" if good else "FAIL", name,
              " ".join("r%d/l%d→%s(期望%d)" % (i[0], i[1], got[i], want[i]) for i in want)))
        ok = ok and good
        # 反转敏感性
        if "if-nez" in txt:
            txt2 = txt.replace("if-nez", "if-eqz", 1)
        else:
            txt2 = txt.replace("if-eqz", "if-nez", 1)
        got2 = {i: run(txt2, *i) for i in want}
        inv = any(got2[i] != want[i] for i in want)
        print("     [%s] 反转敏感性：if-nez→if-eqz 后 %s" % ("OK" if inv else "!!", "结果改变（模拟器真在解释）" if inv else "结果没变 ⇒ 模拟器没覆盖该分支"))
        ok = ok and inv
    print("  模拟器总结：%s" % ("全部通过" if ok else "有问题"))
    sys.exit(0 if ok else 1)

if __name__ == "__main__":
    main()