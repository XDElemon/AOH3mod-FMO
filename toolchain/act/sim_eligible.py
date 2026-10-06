#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sim_eligible.py —— 行为级模拟器：解释 AirDefense.eligible 的真实 smali
真值表（应当成立）：result = 1 仅当 (!同国 && 交战 && 有活机 && 在射程内)
另做反转敏感性自检：把交战门的 if-eqz 改成 if-nez 后，结果必须改变
用法: python3 sim_eligible.py [smali树]
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
REL = "aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
SIG = "eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z"

def body(tree):
    s = open(os.path.join(tree, REL), encoding="utf-8").read()
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(SIG), s, re.S | re.M)
    assert m, "找不到 eligible"
    return m.group(1)

def run(txt, sameCiv, atWar, alive, inRange):
    lines = [l.strip() for l in txt.splitlines()]
    labels, regs, pending, pc = {}, {}, 0, 0
    for i, l in enumerate(lines):
        m = re.match(r"^(:\w+)\s*$", l)
        if m:
            labels[m.group(1)] = i
    # 预先设定参数语义
    regs["p1"] = 1                       # 开火方 civ
    regs["p0"] = "mission" if sameCiv or True else None
    steps = 0
    while pc < len(lines) and steps < 500:
        steps += 1
        l = lines[pc]
        if not l or l.startswith("#"):
            pc += 1; continue
        m = re.match(r"^const/4 (\w+), 0x0$", l)
        if m:
            regs[m.group(1)] = 0; pc += 1; continue
        m = re.match(r"^iget (\w+), p0, .*AirMission;->civID:I$", l)
        if m:
            regs[m.group(1)] = (1 if sameCiv else 2); pc += 1; continue
        m = re.match(r"^if-eq (\w+), (\w+), (:\w+)$", l)
        if m:
            a, b, lab = m.groups()
            if regs.get(a) == regs.get(b):
                pc = labels[lab]
            else:
                pc += 1
            continue
        m = re.match(r"^if-eqz (\w+), (:\w+)$", l)
        if m:
            r, lab = m.groups()
            pc = labels[lab] if regs.get(r, 0) == 0 else pc + 1
            continue
        m = re.match(r"^if-nez (\w+), (:\w+)$", l)
        if m:
            r, lab = m.groups()
            pc = labels[lab] if regs.get(r, 0) != 0 else pc + 1
            continue
        m = re.match(r"^if-lez (\w+), (:\w+)$", l)
        if m:
            r, lab = m.groups()
            pc = labels[lab] if regs.get(r, 0) <= 0 else pc + 1
            continue
        m = re.match(r"^iget-object (\w+), p0, .*AirMission;->aliveAircraft", l)
        if m:
            regs[m.group(1)] = "list" if alive else None; pc += 1; continue
        m = re.match(r"^invoke-interface \{(\w+)\}, Ljava/util/List;->size\(\)I$", l)
        if m:
            pending = 1 if alive else 0; pc += 1; continue
        m = re.match(r"^invoke-static \{p1, (\w+)\}, .*DiplomacyManager;->isAtWar\(II\)Z$", l)
        if m:
            pending = 1 if atWar else 0; pc += 1; continue
        m = re.match(r"^invoke-static \{p0, (\w+)\}, .*AirDefense;->inRange", l)
        if m:
            pending = 1 if inRange else 0; pc += 1; continue
        m = re.match(r"^move-result (\w+)$", l)
        if m:
            regs[m.group(1)] = pending; pc += 1; continue
        m = re.match(r"^const/4 (\w+), 0x1$", l)
        if m:
            regs[m.group(1)] = 1; pc += 1; continue
        if l == ":no":
            pass
        m = re.match(r"^return (\w+)$", l)
        if m:
            return regs.get(m.group(1), 0)
        pc += 1
    return None

def main():
    tree = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
    txt = body(tree)
    cases = [(sc, aw, al, ir) for sc in (0, 1) for aw in (0, 1) for al in (0, 1) for ir in (0, 1)]
    bad = 0
    print("  真值表（同国/交战/有活机/在射程 → 应当开火）")
    for c in cases:
        want = 1 if (not c[0] and c[1] and c[2] and c[3]) else 0
        got = run(txt, *c)
        ok = (got == want)
        if not ok:
            bad += 1
        print("    %s c=%d → %s（期望 %d）" % ("OK " if ok else "!! ", c[0], got, want))
    print("  真值表 %d/%d %s" % (len(cases) - bad, len(cases), "PASS" if bad == 0 else "FAIL"))
    # 反转敏感性
    txt2 = txt.replace("if-eqz v5, :no", "if-nez v5, :no", 1)
    diff = any(run(txt2, *c) != run(txt, *c) for c in cases)
    print("  [%s] 反转敏感性（把交战门 if-eqz→if-nez）：%s" % ("OK" if diff else "!!", "结果改变 ✓" if diff else "结果没变（模拟器没覆盖）"))
    sys.exit(0 if (bad == 0 and diff) else 1)

if __name__ == "__main__":
    main()