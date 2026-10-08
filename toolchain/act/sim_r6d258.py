#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sim_r6d258.py -- 行为级模拟器：解释【真实 smali】里的
(A) adFxStep NaN 守卫（d==0 极性）；(B) AirDbgLog 采样闸（dKey/dWrite 两段）。
含反转敏感性自检（突变必须改变结果）。"""
import re, sys

W = '/tmp/w3a/smali'
PDM = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
ADL = W + '/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
NL = chr(10)

pd = open(PDM, encoding='utf-8').read().split(NL)
ad = open(ADL, encoding='utf-8').read().split(NL)

# ---------------- Part A: NaN guard ----------------
i0 = next(i for i, l in enumerate(pd) if 'r6d258: d==0' in l)
guard = [l.strip() for l in pd[i0:i0+4] if l.strip() and not l.strip().startswith('#')][:3]
assert guard[0].startswith('const/4 v9'), guard
assert guard[1].startswith('cmpl-float v9, v8, v9'), guard
assert guard[2] == 'if-eqz v9, :d0c', guard

def nan_route(d, mut=False):
    # emulate 3 instructions
    v9 = 0.0            # const/4 v9,0x0
    sign = (d > v9) - (d < v9)  # cmpl-float v9, v8, v9
    v9 = sign
    op = 'if-nez' if mut else 'if-eqz'
    taken = (v9 == 0) if op == 'if-eqz' else (v9 != 0)
    return 'SETTLE' if taken else 'NORMAL'

c1 = nan_route(0.0)
c2 = nan_route(1.0)
c3 = nan_route(0.0001)
ok_a = (c1 == 'SETTLE' and c2 == 'NORMAL' and c3 == 'NORMAL')
m1 = nan_route(0.0, mut=True)
sens_a = (m1 != c1)

# ---------------- Part B: sampling gates ----------------
def extract(lines, marker, endlabel):
    s = next(i for i, l in enumerate(lines) if marker in l)
    e = next(i for i, l in enumerate(lines) if i > s and l.strip() == endlabel)
    raw = [l for l in lines[s:e+1]]
    return raw

def build(raw):
    prog = []
    labels = {}
    for l in raw:
        t = l.strip()
        if not t or t.startswith('#'):
            continue
        if re.match(r'^:r258_[a-z0-9]+$', t):
            labels[t] = len(prog)
            prog.append(('label', t))
        else:
            prog.append(('i', t))
    return prog, labels

def run(prog, labels, env):
    regs = {}
    strs = {}
    pc = 0
    pending = None
    while pc < len(prog):
        kind, t = prog[pc]
        if kind == 'label':
            pc += 1
            continue
        m = re.match(r'const-string v(\d+), "(.*)"$', t)
        if m:
            strs[int(m.group(1))] = m.group(2); pc += 1; continue
        m = re.match(r'invoke-virtual \{(p0|p1), v(\d+)\}, Ljava/lang/String;->startsWith\(Ljava/lang/String;\)Z', t)
        if m:
            s = env['tag'] if m.group(1) == 'p0' else env['msg']
            pending = s.startswith(strs[int(m.group(2))]); pc += 1; continue
        m = re.match(r'invoke-virtual \{(p0|p1), v(\d+)\}, Ljava/lang/String;->equals\(Ljava/lang/Object;\)Z', t)
        if m:
            s = env['tag'] if m.group(1) == 'p0' else env['msg']
            pending = (s == strs[int(m.group(2))]); pc += 1; continue
        m = re.match(r'move-result v(\d+)', t)
        if m:
            regs[int(m.group(1))] = pending; pending = None; pc += 1; continue
        m = re.match(r'if-(nez|eqz) v(\d+), (:r258_[a-z0-9]+)', t)
        if m:
            op, r, lbl = m.group(1), int(m.group(2)), m.group(3)
            v = regs.get(r, 0)
            j = (v != 0) if op == 'nez' else (v == 0)
            pc = labels[lbl] if j else pc + 1
            continue
        m = re.match(r'goto (:r258_[a-z0-9]+)', t)
        if m:
            pc = labels[m.group(1)]; continue
        m = re.match(r'const/(?:4|16) v(\d+), (\S+)', t)
        if m:
            regs[int(m.group(1))] = int(m.group(2), 16); pc += 1; continue
        if 'sget v0' in t and 'smpN' in t:
            regs[0] = env['smpN']; pc += 1; continue
        if 'sput v0' in t and 'smpN' in t:
            env['smpN'] = regs.get(0, 0); pc += 1; continue
        m = re.match(r'add-int/lit8 v(\d+), v(\d+), (\S+)', t)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(2)), 0) + int(m.group(3), 16); pc += 1; continue
        m = re.match(r'and-int/lit8 v(\d+), v(\d+), (\S+)', t)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(2)), 0) & int(m.group(3), 16); pc += 1; continue
        m = re.match(r'and-int v(\d+), v(\d+), v(\d+)', t)
        if m:
            regs[int(m.group(1))] = regs.get(int(m.group(2)), 0) & regs.get(int(m.group(3)), 0); pc += 1; continue
        if t == 'return v0' or t == 'return-void':
            return 'DROP'
        raise SystemExit('SIM UNHANDLED: %r' % t)
    return 'KEEP'

rawK = extract(ad, '# r6d258: sampling gate for legacy noisy families', ':r258_pass')
rawW = extract(ad, '# r6d258: sampling gate (nMK', ':r258_wpass')
progK, labK = build(rawK)
progW, labW = build(rawW)

def simK(tag, msg, smpN, mut=None):
    prog, lab = progK, labK
    if mut:
        prog = [(k, t.replace(*mut)) if k == 'i' else (k, t) for (k, t) in prog]
        _, lab = build(['    ' + t for k, t in prog])
    return run(prog, lab, {'tag': tag, 'msg': msg, 'smpN': smpN})

def simW(msg, smpN, mut=None):
    prog, lab = progW, labW
    if mut:
        prog = [(k, t.replace(*mut)) if k == 'i' else (k, t) for (k, t) in prog]
        _, lab = build(['    ' + t for k, t in prog])
    return run(prog, lab, {'tag': msg, 'msg': msg, 'smpN': smpN})

cases = [
    ('A1 d=0 -> SETTLE', c1, 'SETTLE'),
    ('A2 d=1 -> NORMAL', c2, 'NORMAL'),
    ('A3 d=0.0001 -> NORMAL', c3, 'NORMAL'),
]
for n, g_, w in cases:
    print(('✅ ' if g_ == w else '❌ ') + n)

bcase = [
    ('B1 afd n=256 -> KEEP', simK('afd:enter', 'e', 255), 'KEEP'),
    ('B2 afd n=1 -> DROP', simK('afd:enter', 'e', 0), 'DROP'),
    ('B3 AIRDBG nMS -> KEEP', simK('AIRDBG', 'nMS gx id=1', 0), 'KEEP'),
    ('B4 AIRDBG nSpd n=64 -> KEEP', simK('AIRDBG', 'nSpd:700', 63), 'KEEP'),
    ('B5 AIRDBG nSpd n=32 -> DROP', simK('AIRDBG', 'nSpd:700', 31), 'DROP'),
    ('B6 BOOT2 -> KEEP', simK('BOOT2', 'dbg=1', 0), 'KEEP'),
    ('B7 dW nMK n=64 -> KEEP', simW('nMK s=3', 63), 'KEEP'),
    ('B8 dW nHIT n=32 -> DROP', simW('nHIT k=8', 31), 'DROP'),
    ('B9 dW nABOOT -> KEEP', simW('nABOOT v=r6d258', 0), 'KEEP'),
]
bad = 0
for n, g_, w in bcase:
    okc = g_ == w
    print(('✅ ' if okc else '❌ ') + n + '  got=%s want=%s' % (g_, w))
    if not okc:
        bad += 1

# mutations
m_a = nan_route(0.0, mut=True)
ok_m1 = (m_a != c1)
print(('✅ ' if ok_m1 else '❌ ') + 'M1 NaN polarity flip sensitive (%s vs %s)' % (m_a, c1))

m_k1 = simK('AIRDBG', 'nSpd:700', 31, mut=('0x3f', '0x1f'))
ok_m2 = (m_k1 != 'DROP')
print(('✅ ' if ok_m2 else '❌ ') + 'M2 mask 3f->1f sensitive (%s)' % m_k1)

m_k2 = simK('AIRDBG', 'nMS gx id=1', 0, mut=('if-nez v1, :r258_pass', 'if-eqz v1, :r258_pass'))
ok_m3 = (m_k2 != 'KEEP')
print(('✅ ' if ok_m3 else '❌ ') + 'M3 nMS gate polarity flip sensitive (%s)' % m_k2)

m_w = simW('nHIT k=8', 31, mut=('if-eqz v0, :r258_wpass', 'if-nez v0, :r258_wpass'))
ok_m4 = (m_w != 'DROP')
print(('✅ ' if ok_m4 else '❌ ') + 'M4 dWrite polarity flip sensitive (%s)' % m_w)

if not ok_a or not sens_a or bad or not ok_m1 or not ok_m2 or not ok_m3 or not ok_m4:
    print('❌ sim_r6d258 未过')
    sys.exit(1)
print('✅ sim_r6d258 ALL PASS（A1-A3 + B1-B9 + M1-M3）')
sys.exit(0)