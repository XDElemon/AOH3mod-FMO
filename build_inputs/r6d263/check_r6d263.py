# -*- coding: utf-8 -*-
# r6d263 门禁：pickAirImage 全方法行为模拟 + 文本断言 + 负样本
import re, sys

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
tF = open(AFM, encoding='utf-8').read()

def txt_errs(tF):
    e = []
    if 'if-ge p0, v0, :gen_lo_ok' not in tF: e.append('T1 fixed clamp missing')
    if 'if-lt p0' in tF: e.append('T1 old if-lt remains')
    if tF.count('# r6d262') != 2: e.append('T2 r6d262 blocks missing')
    if tF.count('AirModelTables;->bestIdx') != 2: e.append('T2 bestIdx calls != 2')
    return e

OPS_OK = {'const/4', 'goto', 'if-eq', 'if-ge', 'if-le', 'if-lt', 'return', 'sget'}

def get_method(text, sig):
    i = text.find(sig)
    j = text.find('.end method', i)
    return text[i:j].split('\n')

def parse(lines):
    labels, ops = {}, []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.'):
            continue
        if s.startswith(':'):
            labels[s] = len(ops); continue
        ops.append(s)
    return labels, ops

def num(x):
    neg = x.startswith('-')
    if neg: x = x[1:]
    v = int(x, 16) if x.startswith('0x') else int(x)
    return -v if neg else v

def run_pick(tF_mut, gen, grp, typ):
    lines = get_method(tF_mut, '.method public static pickAirImage(III)I')
    labels, ops = parse(lines)
    regs = {'p0': gen, 'p1': grp, 'p2': typ, 'v0': 0}
    unknown = []
    pc = 0
    for _ in range(4000):
        if pc >= len(ops): return 'NO-RETURN', unknown
        s = ops[pc]
        mn = s.split()[0] if s.split() else ''
        if mn not in OPS_OK:
            unknown.append(s); return 'UNK', unknown
        m = re.match(r'const/4\s+([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = num(m.group(2)); pc += 1; continue
        m = re.match(r'if-eq\s+([pv]\d+),\s*([pv]\d+),\s*(:\w+)', s)
        if m:
            pc = labels[m.group(3)] if regs.get(m.group(1)) == regs.get(m.group(2)) else pc + 1; continue
        m = re.match(r'if-(lt|ge|le)\s+([pv]\d+),\s*([pv]\d+),\s*(:\w+)', s)
        if m:
            op, a, b, lab = m.groups(); va, vb = regs.get(a), regs.get(b)
            cond = {'lt': va < vb, 'ge': va >= vb, 'le': va <= vb}[op]
            pc = labels[lab] if cond else pc + 1; continue
        m = re.match(r'goto\s+(:\w+)', s)
        if m: pc = labels[m.group(1)]; continue
        m = re.match(r'sget\s+([pv]\d+),\s*([^\s]+)->([A-Za-z0-9_]+):', s)
        if m: regs[m.group(1)] = m.group(3); pc += 1; continue
        m = re.match(r'return\s+([pv]\d+)', s)
        if m: return regs.get(m.group(1)), unknown
        pc += 1
    return 'TIMEOUT', unknown

cases = [
    (3, 0, 0, 'airG3_CN_FIGHTER'),
    (4, 0, 0, 'airG4_CN_FIGHTER'),
    (5, 1, 2, 'airG5_EU_ATTACKER'),
    (6, 2, 1, 'airG6_RU_INTERCEPTOR'),
    (7, 3, 3, 'airG6_US_BOMBER'),
    (2, 0, 0, 'airG3_CN_FIGHTER'),
    (-1, 0, 0, 'airG3_CN_FIGHTER'),
]
extra = [(4, -1, 0, 'airG4_CN_FIGHTER')]

errs = txt_errs(tF)
tot_unk = []
for (g, gr, t, exp) in cases + extra:
    got, unk = run_pick(tF, g, gr, t)
    tot_unk += unk
    if got != exp:
        errs.append('sim (%d,%d,%d) got=%s exp=%s' % (g, gr, t, got, exp))
if tot_unk:
    errs.append('unknown ops: %s' % (tot_unk[:3],))

print('=== 正样本 errs =', errs[:8], '(共%d)' % len(errs))

print('=== 负样本 ===')
m1 = tF.replace('if-ge p0, v0, :gen_lo_ok', 'if-lt p0, v0, :gen_lo_ok')
r1 = False
for (g, gr, t, exp) in cases + extra:
    if run_pick(m1, g, gr, t)[0] != exp: r1 = True
print('N1 还原旧钳位:', '红 ✓' if r1 else '绿 ✗')

m2 = tF.replace('if-eq p0, v0, :A_G4', 'if-eq p0, v0, :A_G5')
r2 = False
for (g, gr, t, exp) in cases + extra:
    if run_pick(m2, g, gr, t)[0] != exp: r2 = True
print('N2 G4分支错位:', '红 ✓' if r2 else '绿 ✗')

m3 = tF.replace('if-ge p1, v0, :grp_lo_ok', 'if-le p1, v0, :grp_lo_ok')
r3 = False
for (g, gr, t, exp) in cases + extra:
    if run_pick(m3, g, gr, t)[0] != exp: r3 = True
print('N3 组钳位翻转:', '红 ✓' if r3 else '绿 ✗')

allok = (len(errs) == 0) and r1 and r2 and r3
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)