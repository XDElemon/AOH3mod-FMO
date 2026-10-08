#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sim_r6d256.py -- 行为级模拟器：解释【真实 smali】里 tickHits 的"迷雾兜底"判定链。
覆盖：dmg<=0 / 未到期 / 宽限内 / 从未步进 / 陈旧 / 近期步进 / 硬上限 / 边界；
并对 3 个血案形态做"反转敏感性"自检（突变必须改变结果）。
"""
import re, sys
W = '/tmp/w3a/smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'

s = open(PAD, encoding='utf-8').read()
mt = s[s.index('.method public static tickHits()V'):]
mt = mt[:mt.index('.end method')]

# ---- slice: from the per-mission entry guard to the ':fb' label definition ----
anchor = 'if-eqz v5, :next'
assert mt.count(anchor) == 1, ('slice anchor', mt.count(anchor))
start = mt.index(anchor) + len(anchor)
start = mt.index('\n', start) + 1
m_end = re.search(r'(?m)^[ \t]*:fb[ \t]*$', mt)
assert m_end and m_end.start() > start, ':fb label pos'
region = mt[start:m_end.start()]
lines = [l.strip() for l in region.split('\n') if l.strip()]

def build_labels(lines):
    labels = {}
    for i, l in enumerate(lines):
        if l.startswith(':'):
            labels[l] = i
    return labels

def lit(x):
    x = x.strip().rstrip(')')
    return int(x, 16) if x.lower().startswith('0x') or x.lower().startswith('-0x') else int(x)

def run(lines, env):
    labels = build_labels(lines)
    regs = {0: env.get('now', env['TURN_ID'] * 24 + env['HOUR'])}          # v0 = now (computed in the method head, outside this slice)
    pc = 0
    steps = 0
    pending = None
    while pc < len(lines):
        steps += 1
        if steps > 500:
            return 'LOOP'
        l = lines[pc]
        if l.startswith(':'):
            pc += 1
            continue
        if l.startswith('#'):
            pc += 1
            continue
        if l == 'return-void':
            return 'RET'
        m = re.match(r'if-(gtz|lez|gez|eqz|nez|lz) v(\d+), (:\w+)', l)
        if m:
            op, r, lbl = m.group(1), int(m.group(2)), m.group(3)
            v = regs.get(r, 0)
            j = {'gtz': v > 0, 'lez': v <= 0, 'gez': v >= 0, 'eqz': v == 0, 'nez': v != 0, 'lz': v < 0}[op]
            if j:
                if lbl == ':fb':
                    return 'FB'
                if lbl not in labels:
                    return 'WAIT'
                pc = labels[lbl]
            else:
                pc += 1
            continue
        m = re.match(r'if-(ge|lt|le|gt) v(\d+), v(\d+), (:\w+)', l)
        if m:
            op, a, b, lbl = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4)
            va, vb = regs.get(a, 0), regs.get(b, 0)
            j = {'ge': va >= vb, 'lt': va < vb, 'le': va <= vb, 'gt': va > vb}[op]
            if j:
                if lbl == ':fb':
                    return 'FB'
                if lbl not in labels:
                    return 'WAIT'
                pc = labels[lbl]
            else:
                pc += 1
            continue
        m = re.match(r'goto(?:/16)? (:\w+)', l)
        if m:
            lbl = m.group(1)
            if lbl == ':fb':
                return 'FB'
            if lbl not in labels:
                return 'WAIT'
            pc = labels[lbl]
            continue
        if 'sget' in l and 'TURN_ID' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['TURN_ID']; pc += 1; continue
        if 'sget' in l and 'HOUR' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['HOUR']; pc += 1; continue
        if 'iget-wide' in l and 'adFxStepMs' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['stepMs']; pc += 1; continue
        if 'iget' in l and 'adHitDmg' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['dmg']; pc += 1; continue
        if 'iget' in l and 'adHitAt' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['hitAt']; pc += 1; continue
        m = re.match(r'cmpg-float v(\d+), v(\d+), v(\d+)', l)
        if m:
            va, vb = regs.get(int(m.group(2)), 0), regs.get(int(m.group(3)), 0)
            regs[int(m.group(1))] = (va > vb) - (va < vb); pc += 1; continue
        m = re.match(r'mul-int/lit8 v(\d+), v(\d+), (\S+)', l)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(2)), 0) * lit(m.group(3)); pc += 1; continue
        m = re.match(r'add-int/2addr v(\d+), v(\d+)', l)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(1)), 0) + regs.get(int(m.group(2)), 0); pc += 1; continue
        m = re.match(r'add-int/lit8 v(\d+), v(\d+), (\S+)', l)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(2)), 0) + lit(m.group(3)); pc += 1; continue
        m = re.match(r'const-wide/16 v(\d+), (\S+)', l)
        if m:
            regs[int(m.group(1))] = lit(m.group(2)); pc += 1; continue
        m = re.match(r'const/4 v(\d+), (\S+)', l)
        if m:
            regs[int(m.group(1))] = lit(m.group(2)); pc += 1; continue
        m = re.match(r'cmp-long v(\d+), v(\d+), v(\d+)', l)
        if m:
            va, vb = regs.get(int(m.group(2)), 0), regs.get(int(m.group(3)), 0)
            regs[int(m.group(1))] = (va > vb) - (va < vb); pc += 1; continue
        m = re.match(r'sub-long v(\d+), v(\d+), v(\d+)', l)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(2)), 0) - regs.get(int(m.group(3)), 0); pc += 1; continue
        if 'invoke-static' in l and 'currentTimeMillis' in l:
            pending = 'nowReal'; pc += 1; continue
        m = re.match(r'move-result-wide v(\d+)', l)
        if m:
            assert pending, 'move-result-wide without pending'
            regs[int(m.group(1))] = env[pending]; pending = None; pc += 1; continue
        raise SystemExit('SIM UNHANDLED INSTR: %r' % l)
    return 'END'

def scen(now, hitAt, dmg, stepMs, mocknow=1000000):
    T, H = divmod(now, 24)
    return run(lines, {'TURN_ID': T, 'HOUR': H, 'hitAt': hitAt, 'dmg': dmg,
                       'stepMs': stepMs, 'nowReal': mocknow})

cases = [
    ('C1 dmg=0 (already settled) -> WAIT',        scen(1020, 1000, 0.0, 0),      'WAIT'),
    ('C2 not due yet (990<1000) -> WAIT',         scen(990, 1000, 50.0, 0),      'WAIT'),
    ('C3 grace in (1010), never-step -> WAIT',    scen(1010, 1000, 50.0, 0),     'WAIT'),
    ('C4 [12h,48h) never-step (1020) -> FB',      scen(1020, 1000, 50.0, 0),     'FB'),
    ('C5 [12h,48h) stale (delta=20s) -> FB',      scen(1020, 1000, 50.0, 980000),'FB'),
    ('C6 [12h,48h) recent (delta=0.5s) -> WAIT',  scen(1020, 1000, 50.0, 999500),'WAIT'),
    ('C7 >=due+48h recent (1060) -> FB (forced)', scen(1060, 1000, 50.0, 999500),'FB'),
    ('C8a now==due (1000) -> WAIT',               scen(1000, 1000, 50.0, 0),     'WAIT'),
    ('C8b now==due+12h (1012) never -> FB',       scen(1012, 1000, 50.0, 0),     'FB'),
    ('C9 now==due+48h (1048) recent -> FB',       scen(1048, 1000, 50.0, 999500),'FB'),
]
bad = 0
for name, got, want in cases:
    okc = got == want
    print(('✅ ' if okc else '❌ ') + name + '  got=%s want=%s' % (got, want))
    if not okc:
        bad += 1

# ---- reverse sensitivity: three blood-scene forms must flip an outcome ----
def run_mut(mut, now, hitAt, dmg, stepMs):
    mut_lines = [l.strip() for l in mut.split('\n') if l.strip()]
    T, H = divmod(now, 24)
    return run(mut_lines, {'TURN_ID': T, 'HOUR': H, 'hitAt': hitAt, 'dmg': dmg,
                           'stepMs': stepMs, 'nowReal': 1000000})

muts = [
    ('N1 if-gez :fb -> :next (stale check)',
     region.replace('if-gez v8, :fb', 'if-gez v8, :next'), (1020, 1000, 50.0, 980000), 'FB'),
    ('N2 grace 0xc -> 0x18',
     region.replace('add-int/lit8 v8, v8, 0xc', 'add-int/lit8 v8, v8, 0x18'), (1020, 1000, 50.0, 0), 'FB'),
    ('N3 hard 0x30 -> 0x60',
     region.replace('add-int/lit8 v8, v8, 0x30', 'add-int/lit8 v8, v8, 0x60'), (1060, 1000, 50.0, 999500), 'FB'),
]
for name, mut, (now, hitAt, dmg, step), good in muts:
    assert mut != region, name + ' mutation had no effect'
    got = run_mut(mut, now, hitAt, dmg, step)
    okc = got != good  # must differ from the real-run outcome
    print(('✅ ' if okc else '❌ ') + name + '  mutated=%s (good=%s) -> %s' % (got, good, 'sensitive' if okc else 'COLLAPSED'))
    if not okc:
        bad += 1

print()
if bad:
    print('❌ sim_r6d256 未过：%d 项' % bad)
    sys.exit(1)
print('✅ sim_r6d256 ALL PASS（C1-C9 + N1-N3 反转敏感性）')
sys.exit(0)