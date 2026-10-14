# -*- coding: utf-8 -*-
"""r6d309 行为级模拟器 v2：解释 :cond_6b 起增量滚动块（含原生回退路径）
C1–C7 + M1–M3。"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
src = open(MM, encoding="utf-8").read()
i = src.find("# r6d309")
assert i > 0, "block not found"
j = src.find(":try_end_7d", i)
assert j > i
block = src[i:j]
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

def simulate(blk, vis, idv, treeID, scxOn, scxL, p1v, nx, px, wd, mx, st=0):
    lines = blk.splitlines()
    labels = {}
    for k, ln in enumerate(lines):
        m = re.match(r"^\s*(:[A-Za-z0-9_]+)\s*$", ln)
        if m: labels[m.group(1)] = k
    v = {'v0': 0, 'v1': 0, 'v2': 0, 'v3': 0, 'v4': 0, 'v5': 0, 'p1': p1v}
    f = {'scxOn': scxOn, 'scxL': scxL}
    res = {'set': None, 'log': 0, 'nx': nx}
    k = 0; steps = 0
    while k < len(lines) and steps < 600:
        steps += 1
        ln = lines[k].strip(); k += 1
        if not ln or ln.startswith('#') or ln.startswith('.line'):
            continue
        if re.match(r"^:(.+)$", ln) and not ln.startswith(':try') and not ln.startswith(':catch'):
            continue
        toks = ln.replace(',', ' ').split()
        op = toks[0]
        def R(x): return v.get(x, 0)
        if op in ('sget', 'sget-boolean'):
            v[toks[1]] = f.get(toks[2].split('->')[-1].split(':')[0], 0); continue
        if op in ('sput', 'sput-boolean'):
            f[toks[2].split('->')[-1].split(':')[0]] = R(toks[1]); continue
        if op == 'iget':
            field = toks[-1].split('->')[-1].split(':')[0]
            if field == 'iSliderMenuStartPosX': v[toks[1]] = st
            elif field == 'activeSliderMenuID': v[toks[1]] = idv
            elif field == 'IN_GAME_TECHNOLOGY_TREE': v[toks[1]] = treeID
            else: v[toks[1]] = 0
            continue
        if op in ('const/4', 'const/16'):
            v[toks[1]] = int(toks[2], 16) if toks[2].startswith(('0x', '-0x')) else int(toks[2]); continue
        if op == 'sub-int':
            v[toks[1]] = R(toks[2]) - R(toks[3]); continue
        if op == 'sub-int/2addr':
            v[toks[1]] = R(toks[1]) - R(toks[2]); continue
        if op == 'add-int/2addr':
            v[toks[1]] = R(toks[1]) + R(toks[2]); continue
        if op == 'move':
            v[toks[1]] = R(toks[2]); continue
        if op.startswith('if-'):
            sop = op[3:]
            if len(toks) == 4: a = R(toks[1]); b = R(toks[2]); lb = toks[3]
            else: a = R(toks[1]); b = 0; lb = toks[2]
            cond = {'eqz': a == 0, 'nez': a != 0, 'eq': a == b, 'ne': a != b,
                    'le': a <= b, 'ge': a >= b, 'lt': a < b, 'gt': a > b}[sop]
            if cond: k = labels[lb]
            continue
        if op == 'goto':
            k = labels[toks[1]]; continue
        if op.startswith('invoke'):
            mr = re.match(r"move-result(?:-object)? (v\d+)", lines[k].strip()) if k < len(lines) else None
            tgt = mr.group(1) if mr else 'v0'
            if 'getVisibleInGame_TechnologyTree' in ln: v[tgt] = vis; continue
            if 'getActiveMenu' in ln: v[tgt] = 'MENU'; continue
            if 'List;->get' in ln: v[tgt] = 'MENU'; continue
            if 'getNewMenuPosX' in ln: v[tgt] = res['nx']; continue
            if 'getPosX()I' in ln: v[tgt] = px; continue
            if 'getWidth()I' in ln: v[tgt] = wd; continue
            if 'getMaxSliderX()I' in ln: v[tgt] = mx; continue
            if 'setMenuPosX(I)V' in ln:
                mm2 = re.search(r"\{(.+?)\}", ln)
                args = [a.strip() for a in mm2.group(1).split(',')] if mm2 else []
                val = R(args[1]) if len(args) >= 2 else 0
                res['set'] = val; res['nx'] = val; continue
            if 'scaLog' in ln: res['log'] += 1; continue
            continue
        if op.startswith('move-result') or op == 'check-cast':
            continue
    return res, f

A(simulate(block, 1, 45, 45, 0, 0, 1100, -500, 0, 2318, 27758)[0]['set'] is None, "C1 首次事件=初始化（不滚动）")
r, f2 = simulate(block, 1, 45, 45, 1, 1000, 1100, -500, 0, 2318, 27758)
A(r['set'] == -400 and f2['scxL'] == 1100, "C2 delta=100 → -400")
r, _ = simulate(block, 1, 45, 45, 1, 1000, 3100, -500, 0, 2318, 27758)
A(r['set'] is None, "C3 大跳变(2000)→重新初始化")
r, _ = simulate(block, 1, 45, 45, 1, 1000, 1200, 100, 0, 2318, 27758)
A(r['set'] == 0, "C4 上界 clamp → 0")
r, _ = simulate(block, 1, 45, 45, 1, 1000, 800, -25400, 0, 2318, 27758)
A(r['set'] == -25440, "C5 下界 clamp → -25440")
r, _ = simulate(block, 0, 45, 45, 1, 1000, 1100, -500, 0, 2318, 27758, st=5)
A(r['set'] == 1105, "C6 树不可见→原生路径(st+p1)")
r, _ = simulate(block, 1, 3, 45, 1, 1000, 1100, -500, 0, 2318, 27758, st=5)
A(r['set'] == 1105, "C7 目标非科技树→原生路径")

b1 = block.replace("if-le v1, v2, :scx_g1", "if-gt v1, v2, :scx_g1", 1)
r, _ = simulate(b1, 1, 45, 45, 1, 1000, 3100, -500, 0, 2318, 27758)
A(r['set'] is not None, "M1 守卫极性反转被抓")
b2 = block.replace("if-le v2, v3, :scx_hi", "if-ge v2, v3, :scx_hi", 1)
r, _ = simulate(b2, 1, 45, 45, 1, 1000, 1200, 100, 0, 2318, 27758)
A(r['set'] == 300, "M2 clamp 反转被抓")
b3 = block.replace("if-ne v0, v1, :scx_native", "if-eq v0, v1, :scx_native", 1)
r, _ = simulate(b3, 1, 45, 45, 1, 1000, 1100, -500, 0, 2318, 27758, st=5)
A(r['set'] == 1105, "M3 树ID比较翻转被抓（走原生）")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)