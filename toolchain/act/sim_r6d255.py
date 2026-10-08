#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sim_r6d255.py -- 行为级模拟器：解释【真实 smali】里 missileTick 的"在飞"判定链。
覆盖：目标丢失→清理 / not-yet-grace→等待 / [grace,hard) 近期步进→等待、未步进→兜底 /
       >=hard→兜底 / msFlyHours<=0 边界；并对 3 个血案形态做"反转敏感性"自检。
"""
import re, sys
W = '/tmp/w3a/smali'
PDM = W + '/aoc/kingdoms/lukasz/map/battles/AirMission.smali'

s = open(PDM, encoding='utf-8').read()
mt = s[s.index('.method private missileTick()V'):]
mt = mt[:mt.index('.end method')]

# ---- slice: from the last guard before due-math to :msl_fb / return ----
anchor = 'if-lez v4, :msl_lost'
assert mt.count(anchor) == 1, ('guard anchor', mt.count(anchor))
start = mt.index(anchor) + len(anchor)
start = mt.index('\n', start) + 1
m_end = re.search(r'(?m)^[ \t]*:msl_fb[ \t]*$', mt)
assert m_end and m_end.start() > start, 'msl_fb label pos'
endfb = m_end.start()
region = mt[start:endfb]
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
    regs = {}
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
        if l == 'return-void':
            return 'RET'
        m = re.match(r'if-(gtz|lez|gez|eqz|nez|lz) v(\d+), (:\w+)', l)
        if m:
            op, r, lbl = m.group(1), int(m.group(2)), m.group(3)
            v = regs.get(r, 0)
            j = {'gtz': v > 0, 'lez': v <= 0, 'gez': v >= 0, 'eqz': v == 0, 'nez': v != 0, 'lz': v < 0}[op]
            if j and lbl == ':msl_fb':
                return 'FB'
            pc = labels[lbl] if j else pc + 1
            continue
        m = re.match(r'if-(ge|lt|le|gt) v(\d+), v(\d+), (:\w+)', l)
        if m:
            op, a, b, lbl = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4)
            va, vb = regs.get(a, 0), regs.get(b, 0)
            j = {'ge': va >= vb, 'lt': va < vb, 'le': va <= vb, 'gt': va > vb}[op]
            if j and lbl == ':msl_fb':
                return 'FB'
            pc = labels[lbl] if j else pc + 1
            continue
        if 'sget' in l and 'TURN_ID' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['TURN_ID']; pc += 1; continue
        if 'sget' in l and 'HOUR' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['HOUR']; pc += 1; continue
        if 'iget-wide' in l and 'msFxStepMs' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['stepMs']; pc += 1; continue
        if 'iget' in l and 'lastMissileHours' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['last']; pc += 1; continue
        if 'iget' in l and 'msFlyHours' in l:
            regs[int(re.search(r'v(\d+)', l).group(1))] = env['fly']; pc += 1; continue
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

def scen(now, fly, step, mocknow=1000000, last=1000):
    T, H = divmod(now, 24)
    return run(lines, {'TURN_ID': T, 'HOUR': H, 'fly': fly, 'stepMs': step, 'nowReal': mocknow, 'last': last})

cases = [
    ('C1 not-yet-grace -> RET',      scen(1010, 4, 0),            'RET'),
    ('C2 grace,never-step -> FB',    scen(1020, 4, 0),            'FB'),
    ('C3 grace,recent-step -> RET',  scen(1020, 4, 999500),       'RET'),
    ('C4 grace,stale-step -> FB',    scen(1020, 4, 980000),       'FB'),
    ('C5 past-hard -> FB',           scen(1060, 4, 999500),       'FB'),
    ('C6 fly=0,due=1002 -> FB',      scen(1020, 0, 0),            'FB'),
    ('C7 fly=0,now=1013 -> RET',     scen(1013, 0, 0),            'RET'),
]
bad = 0
for name, got, want in cases:
    okc = got == want
    print(('✅ ' if okc else '❌ ') + name + '  got=%s want=%s' % (got, want))
    if not okc:
        bad += 1

# ---- reverse sensitivity: three blood-scene forms must flip an outcome ----
def run_mut(mut, now, fly, step):
    mut_lines = [l.strip() for l in mut.split('\n') if l.strip()]
    return run(mut_lines, {'TURN_ID': now // 24, 'HOUR': now % 24, 'fly': fly, 'stepMs': step,
                           'nowReal': 1000000, 'last': 1000})

muts = [
    ('N1 grace 0xc->0x18', region.replace('add-int/lit8 v3, v2, 0xc', 'add-int/lit8 v3, v2, 0x18'), (1020, 4, 0), 'FB'),
    ('N2 if-ge -> if-lt',  region.replace('if-ge v0, v3, :msl_f2', 'if-lt v0, v3, :msl_f2'),       (1010, 4, 0), 'RET'),
    ('N3 hard 0x30->0x60', region.replace('add-int/lit8 v3, v2, 0x30', 'add-int/lit8 v3, v2, 0x60'), (1060, 4, 999500), 'FB'),
]
for name, mut, (now, fly, step), good in muts:
    assert mut != region, name + ' mutation had no effect'
    got = run_mut(mut, now, fly, step)
    okc = got != good  # must differ from the real-run outcome
    print(('✅ ' if okc else '❌ ') + name + '  mutated=%s (good=%s) -> %s' % (got, good, 'sensitive' if okc else 'COLLAPSED'))
    if not okc:
        bad += 1

print()
if bad:
    print('❌ sim_r6d255 未过：%d 项' % bad)
    sys.exit(1)
print('✅ sim_r6d255 ALL PASS（C1-C7 + N1-N3 反转敏感性）')
sys.exit(0)