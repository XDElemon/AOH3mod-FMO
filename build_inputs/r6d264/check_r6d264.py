# -*- coding: utf-8 -*-
# r6d264 门禁：genOf 推导公式 + 全链模拟（bestIdx→genOf→pickAirImage）+ 负样本
import re, sys

T = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirModelTables.smali'
F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
tT = open(T, encoding='utf-8').read()
tF = open(F, encoding='utf-8').read()

def txt_errs(tT, tF):
    e = []
    if 'add-int/lit8 v0, v0, -0x46' not in tT: e.append('T1 -70 missing')
    if 'ushr-int/lit8 v0, v0, 0x4' not in tT: e.append('T1 shift missing')
    if 'add-int/lit8 v0, v0, 0x3' not in tT: e.append('T1 +3 missing')
    if 'if-ge p0, v0, :gen_lo_ok' not in tF: e.append('T2 r6d263 clamp missing')
    if 'if-lt p0' in tF: e.append('T2 old clamp present')
    if tF.count('# r6d262') != 2: e.append('T2 r6d262 blocks')
    if tT.count('const-string v3, "A_') != 51: e.append('T3 keys != 51')
    if tT.count('const v3, 0x') != 51: e.append('T3 infos != 51')
    return e

def get_method(text, sig):
    i = text.find(sig); j = text.find('.end method', i)
    return text[i:j].split('\n')

def parse(lines):
    labels, ops = {}, []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.'): continue
        if s.startswith(':'): labels[s] = len(ops); continue
        ops.append(s)
    return labels, ops

def num(x):
    neg = x.startswith('-')
    if neg: x = x[1:]
    v = int(x, 16) if x.startswith('0x') else int(x)
    return -v if neg else v

UNK = []
def run(labels, ops, regs, sgetobj, invoke, maxsteps=4000):
    rec = []; pending = [None]; pc = 0
    for _ in range(maxsteps):
        if pc >= len(ops): rec.append(('END',)); return rec
        s = ops[pc]
        m = re.match(r'const(?:/4|/16)?\s+([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = num(m.group(2)); pc += 1; continue
        m = re.match(r'const-string\s+([pv]\d+),\s*"([^"]*)"', s)
        if m: regs[m.group(1)] = m.group(2); pc += 1; continue
        m = re.match(r'if-(lt|gt|le|ge|eq|ne)\s+([pv]\d+),\s*([pv]\d+),\s*(:\w+)', s)
        if m:
            op, a, b, lab = m.groups(); va, vb = regs.get(a), regs.get(b)
            cond = {'lt': va < vb, 'gt': va > vb, 'le': va <= vb, 'ge': va >= vb, 'eq': va == vb, 'ne': va != vb}[op]
            pc = labels[lab] if cond else pc + 1; continue
        m = re.match(r'if-(eqz|nez|ltz|gez)\s+([pv]\d+),\s*(:\w+)', s)
        if m:
            op, a, lab = m.groups(); v = regs.get(a)
            cond = {'eqz': v == 0, 'nez': v != 0, 'ltz': v < 0, 'gez': v >= 0}[op]
            pc = labels[lab] if cond else pc + 1; continue
        m = re.match(r'goto\s+(:\w+)', s)
        if m: pc = labels[m.group(1)]; continue
        m = re.match(r'move(?:/from16|/16)?\s+([pv]\d+),\s*([pv]\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)); pc += 1; continue
        m = re.match(r'array-length\s+([pv]\d+),\s*([pv]\d+)', s)
        if m: regs[m.group(1)] = len(regs.get(m.group(2)) or []); pc += 1; continue
        m = re.match(r'aget-object\s+([pv]\d+),\s*([pv]\d+),\s*([pv]\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2))[regs.get(m.group(3))]; pc += 1; continue
        m = re.match(r'aget\s+([pv]\d+),\s*([pv]\d+),\s*([pv]\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2))[regs.get(m.group(3))]; pc += 1; continue
        m = re.match(r'sget-object\s+([pv]\d+),\s*([^\s]+)->([A-Za-z0-9_]+):', s)
        if m: regs[m.group(1)] = sgetobj(m.group(3)); pc += 1; continue
        m = re.match(r'sget\s+([pv]\d+),\s*([^\s]+)->([A-Za-z0-9_]+):', s)
        if m: regs[m.group(1)] = sgetobj(m.group(3)); pc += 1; continue
        m = re.match(r'iget\s+([pv]\d+),\s*([pv]\d+),\s*([^\s]+)->([A-Za-z0-9_]+):', s)
        if m: regs[m.group(1)] = invoke('iget', m.group(4), [], regs, pending, rec); pc += 1; continue
        m = re.match(r'mul-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) * num(m.group(3)); pc += 1; continue
        m = re.match(r'(add|sub)-int/2addr\s+([pv]\d+),\s*([pv]\d+)', s)
        if m:
            op, g1, g2 = m.groups()
            regs[g1] = regs.get(g1) + (regs.get(g2) if op == 'add' else -regs.get(g2)); pc += 1; continue
        m = re.match(r'(add|sub)-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m:
            op, d, b, lit = m.groups()
            regs[d] = regs.get(b) + (num(lit) if op == 'add' else -num(lit)); pc += 1; continue
        m = re.match(r'(ushr|shr|shl)-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m:
            op, d, b, lit = m.groups(); v = regs.get(b); n = num(lit)
            regs[d] = (v >> n) if op in ('ushr', 'shr') else (v << n); pc += 1; continue
        m = re.match(r'and-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) & num(m.group(3)); pc += 1; continue
        m = re.match(r'and-int/lit16\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) & num(m.group(3)); pc += 1; continue
        m = re.match(r'move-result(?:-object)?\s+([pv]\d+)', s)
        if m: regs[m.group(1)] = pending[0]; pending[0] = None; pc += 1; continue
        m = re.match(r'invoke-virtual\s+\{([^}]*)\},\s*([^\s]+)->([A-Za-z0-9_<>]+)\(', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            r = invoke('virtual', m.group(3), args, regs, pending, rec)
            if r is not None: pending[0] = r
            pc += 1; continue
        m = re.match(r'invoke-static\s+\{([^}]*)\},\s*([^\s]+)->([A-Za-z0-9_<>$]+)\(', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            r = invoke('static', m.group(3), args, regs, pending, rec)
            if r is not None: pending[0] = r
            pc += 1; continue
        m = re.match(r'invoke-interface\s+\{([^}]*)\},\s*([^\s]+)->([A-Za-z0-9_<>]+)\(', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            r = invoke('interface', m.group(3), args, regs, pending, rec)
            if r is not None: pending[0] = r
            pc += 1; continue
        m = re.match(r'return-object\s+([pv]\d+)', s)
        if m: rec.append(('ret', regs.get(m.group(1)))); return rec
        m = re.match(r'return\s+([pv]\d+)', s)
        if m: rec.append(('ret', regs.get(m.group(1)))); return rec
        if s.startswith('return-void'): rec.append(('retvoid',)); return rec
        if s.startswith('check-cast'): pc += 1; continue
        if s.startswith('new-instance'):
            m2 = re.match(r'new-instance\s+([pv]\d+)', s)
            regs[m2.group(1)] = 'NEW'; pc += 1; continue
        UNK.append(s); pc += 1
    rec.append(('TIMEOUT',)); return rec

def load_tables_from(text):
    infos = [int(m.group(1), 16) for m in re.finditer(r'const v3, (0x[0-9a-fA-F]+)', text)]
    keys = re.findall(r'const-string v3, "([^"]+)"', text)
    return infos, keys

def run_genof(tT_mut, idx):
    lines = get_method(tT_mut, '.method public static genOf(I)I')
    labels, ops = parse(lines)
    infos, keys = load_tables_from(tT_mut)
    regs = {'p0': idx, 'v0': 0}
    rec = run(labels, ops, regs, lambda k: infos if k == 'INFO' else None, lambda *a: None)
    for r in rec:
        if r[0] == 'ret': return r[1]
    return None

def run_bestidx(tT_mut, g, t, researched):
    lines = get_method(tT_mut, '.method public static bestIdx(III)I')
    labels, ops = parse(lines)
    infos, keys = load_tables_from(tT_mut)
    regs = {'p0': 0, 'p1': g, 'p2': t, 'v0': 0, 'v1': 0, 'v2': 0, 'v3': 0, 'v4': 0, 'v5': 0, 'v6': 0, 'v7': 0, 'v8': 0}
    def invoke(kind, name, args, regs, pending, rec):
        if name == 'getCiv': return 'CIV'
        if name == 'getTechResearched': return 1 if args[1] in researched else 0
        return None
    rec = run(labels, ops, regs, lambda k: infos if k == 'INFO' else (keys if k == 'KEY' else None), invoke)
    for r in rec:
        if r[0] == 'ret': return r[1]
    return None

def run_pick(tF_mut, gen, g, t):
    lines = get_method(tF_mut, '.method public static pickAirImage(III)I')
    labels, ops = parse(lines)
    regs = {'p0': gen, 'p1': g, 'p2': t, 'v0': 0}
    rec = run(labels, ops, regs, lambda k: k, lambda *a: None)
    for r in rec:
        if r[0] == 'ret': return r[1]
    return None

def chain(tT_mut, tF_mut, g, t, researched):
    infos, keys = load_tables_from(tT_mut)
    idx = run_bestidx(tT_mut, g, t, researched)
    if not isinstance(idx, int) or idx < 0: return None
    key = keys[idx]
    gen = run_genof(tT_mut, idx)
    field = run_pick(tF_mut, gen, g, t)
    return idx, key, gen, field

GRPN = ['CN', 'EU', 'RU', 'US']; TYPN = ['FIGHTER', 'INTERCEPTOR', 'ATTACKER', 'BOMBER']

errs = txt_errs(tT, tF)
infos, keys = load_tables_from(tT)

sweep_bad = 0
for i in range(len(infos)):
    img = infos[i] & 0xff
    expg = ((img - 70) >> 4) + 3
    got = run_genof(tT, i)
    if got != expg or not (3 <= got <= 6): sweep_bad += 1
if sweep_bad: errs.append('genOf sweep bad=%d' % sweep_bad)

cases = [
    (0, 0, set(), 'A_CN_J11_F', 'airG3_CN_FIGHTER'),
    (0, 0, {33}, 'A_CN_J11_F', 'airG3_CN_FIGHTER'),
    (0, 0, {33, 37}, 'A_CN_J20_F', 'airG4_CN_FIGHTER'),
    (0, 0, {33, 37, 42}, 'A_CN_J36_F', 'airG6_CN_FIGHTER'),
]
for (g, t, rs, expk, expf) in cases:
    r = chain(tT, tF, g, t, rs)
    if not r or r[1] != expk or r[3] != expf:
        errs.append('chain (g%d,t%d,rs=%s) got=%s exp=(%s,%s)' % (g, t, sorted(rs), r, expk, expf))

for (g, t) in [(3, 3), (3, 0), (1, 2), (2, 1), (2, 3)]:
    ent = [i for i in range(len(infos)) if (infos[i] >> 16) == g * 4 + t]
    if not ent: continue
    ent_sorted = sorted(ent, key=lambda i: infos[i] & 0xff)
    top = ent_sorted[-1]; low = ent_sorted[0]
    rs_all = set((infos[i] >> 8) & 0x7f for i in ent)
    r_top = chain(tT, tF, g, t, rs_all)
    gen_top = ((infos[top] & 0xff) - 70 >> 4) + 3
    exptop = 'airG%d_%s_%s' % (gen_top, GRPN[g], TYPN[t])
    if not r_top or r_top[1] != keys[top] or r_top[3] != exptop:
        errs.append('auto-top (g%d,t%d) got=%s exp=(%s,%s)' % (g, t, r_top, keys[top], exptop))
    r_low = chain(tT, tF, g, t, set())
    gen_low = ((infos[low] & 0xff) - 70 >> 4) + 3
    explow = 'airG%d_%s_%s' % (gen_low, GRPN[g], TYPN[t])
    if not r_low or r_low[1] != keys[low] or r_low[3] != explow:
        errs.append('auto-low (g%d,t%d) got=%s exp=(%s,%s)' % (g, t, r_low, keys[low], explow))

if UNK: errs.append('unknown ops: %s' % (UNK[:3],))

print('=== 正样本 errs =', errs[:8], '(共%d)' % len(errs))

print('=== 负样本 ===')
tT1 = tT.replace('    add-int/lit8 v0, v0, -0x46\n', '').replace('    ushr-int/lit8 v0, v0, 0x4\n', '').replace('    add-int/lit8 v0, v0, 0x3\n', '')
r1 = chain(tT1, tF, 0, 0, {33, 37})
n1 = (r1 is None) or (r1[3] != 'airG4_CN_FIGHTER')
print('N1 还原掩码解码:', '红 ✓' if n1 else '绿 ✗', r1 and r1[3])

tT2 = tT.replace('ushr-int/lit8 v0, v0, 0x4', 'ushr-int/lit8 v0, v0, 0x3')
r2 = chain(tT2, tF, 0, 0, {33, 37})
n2 = (r2 is None) or (r2[3] != 'airG4_CN_FIGHTER')
print('N2 移位错(4→3):', '红 ✓' if n2 else '绿 ✗', r2 and r2[3])

tF3 = tF.replace('if-ge p0, v0, :gen_lo_ok', 'if-lt p0, v0, :gen_lo_ok')
r3 = chain(tT, tF3, 0, 0, {33, 37})
n3 = (r3 is None) or (r3[3] != 'airG4_CN_FIGHTER')
print('N3 钳位回退:', '红 ✓' if n3 else '绿 ✗', r3 and r3[3])

allok = (len(errs) == 0) and n1 and n2 and n3
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)