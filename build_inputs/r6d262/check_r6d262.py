# -*- coding: utf-8 -*-
# r6d262 门禁：文本断言 + 行为级模拟（AirTechEvents / bestIdx / 两插入块）+ 负样本
import re, sys

ROOT = '/tmp/w3a/smali'
ATE = ROOT + '/aoc/kingdoms/lukasz/events/AirTechEvents.smali'
AMT = ROOT + '/aoc/kingdoms/lukasz/map/battles/AirModelTables.smali'
AFM = ROOT + '/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

tA = open(ATE, encoding='utf-8').read()
tM = open(AMT, encoding='utf-8').read()
tF = open(AFM, encoding='utf-8').read()

# ---------------- 文本断言 ----------------
def txt_errs(tA, tM, tF):
    e = []
    if tA.count('af_tech_breakthrough') != 0: e.append('T1 old id still referenced')
    if 'afIdx' in tA: e.append('T1 afIdx remains')
    if 'findEventIndex(Ljava/lang/String;)I' not in tA: e.append('T1 findEventIndex sig')
    if 'if-ne v1, v0, :b4end' not in tA: e.append('T1 player guard')
    if tA.count('new-array v1, v0, [I') != 1: e.append('T1 empty table build')
    if tM.count('const-string v3, "A_') != 51: e.append('T2 key count != 51')
    if tM.count('const v3, 0x') != 51: e.append('T2 info count != 51')
    for s in ['bestIdx(III)I', 'keyOf(I)Ljava/lang/String;', 'genOf(I)I', ':b4mloop']:
        if s not in tM: e.append('T2 missing ' + s)
    if tF.count('# r6d262') != 2: e.append('T3 insert markers != 2')
    if tF.count('AirModelTables;->bestIdx') != 2: e.append('T3 bestIdx calls != 2')
    for s in [':amf_old', ':aimf_old', 'if-ge p0, v2, :amf_hi', 'if-ltz v2, :amf_old', 'if-ltz v0, :aimf_old']:
        if s not in tF: e.append('T3 missing ' + s)
    return e

# ---------------- 解释器 ----------------
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

def run(labels, ops, regs, stubs, maxsteps=600):
    rec = []
    pending = [None]
    pc = 0
    steps = 0
    while steps < maxsteps:
        steps += 1
        if pc >= len(ops): return rec
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
        if m:
            key = m.group(3)
            regs[m.group(1)] = stubs.get('sgetobj', lambda k: k)(key)
            pc += 1; continue
        m = re.match(r'sget\s+([pv]\d+),\s*([^\s]+)->([A-Za-z0-9_]+):', s)
        if m:
            key = m.group(3)
            regs[m.group(1)] = stubs.get('sget', lambda k: 0)(key)
            pc += 1; continue
        m = re.match(r'iget\s+([pv]\d+),\s*([pv]\d+),\s*([^\s]+)->([A-Za-z0-9_]+):', s)
        if m:
            regs[m.group(1)] = stubs.get('iget', lambda c, f: 0)(m.group(2), m.group(4))
            pc += 1; continue
        m = re.match(r'mul-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) * num(m.group(3)); pc += 1; continue
        m = re.match(r'add-int/2addr\s+([pv]\d+),\s*([pv]\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(1)) + regs.get(m.group(2)); pc += 1; continue
        m = re.match(r'add-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) + num(m.group(3)); pc += 1; continue
        m = re.match(r'ushr-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) >> num(m.group(3)); pc += 1; continue
        m = re.match(r'and-int/lit8\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) & num(m.group(3)); pc += 1; continue
        m = re.match(r'and-int/lit16\s+([pv]\d+),\s*([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = regs.get(m.group(2)) & num(m.group(3)); pc += 1; continue
        m = re.match(r'move-result(?:-object)?\s+([pv]\d+)', s)
        if m: regs[m.group(1)] = pending[0]; pending[0] = None; pc += 1; continue
        m = re.match(r'invoke-virtual\s+\{([^}]*)\},\s*([^\s]+)->([A-Za-z0-9_<>]+)\(', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            stubs['invoke']('virtual', m.group(3), args, regs, pending, rec); pc += 1; continue
        m = re.match(r'invoke-static\s+\{([^}]*)\},\s*([^\s]+)->([A-Za-z0-9_<>$]+)\(', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            stubs['invoke']('static', m.group(3), args, regs, pending, rec); pc += 1; continue
        m = re.match(r'invoke-interface\s+\{([^}]*)\},\s*([^\s]+)->([A-Za-z0-9_<>]+)\(', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            stubs['invoke']('interface', m.group(3), args, regs, pending, rec); pc += 1; continue
        m = re.match(r'move-exception\s+([pv]\d+)', s)
        if m: regs[m.group(1)] = 'EXC'; pc += 1; continue
        m = re.match(r'return-object\s+([pv]\d+)', s)
        if m: rec.append(('return-object', regs.get(m.group(1)))); return rec
        m = re.match(r'return\s+([pv]\d+)', s)
        if m: rec.append(('return', regs.get(m.group(1)))); return rec
        m = re.match(r'return-void', s)
        if m: rec.append(('retvoid',)); return rec
        if s.startswith('check-cast'):
            pc += 1; continue
        if s.startswith('new-instance'):
            m = re.match(r'new-instance\s+([pv]\d+)', s)
            regs[m.group(1)] = 'NEW'; pc += 1; continue
        pc += 1
    return rec

# ---------------- 模拟①：AirTechEvents ----------------
def sim_ate(ate_text, sp_tech, sp_event, ev_ids, tech, civid, playerid):
    lines = get_method(ate_text, '.method public static onTechCompleted(')
    labels, ops = parse(lines)
    regs = {'p0': 'CIV', 'p1': tech, 'v0': 0, 'v1': 0, 'v2': 0, 'v3': 0}
    def sgetobj(k):
        return {'spTech': sp_tech, 'spEvent': sp_event}.get(k, k)
    def sget(k):
        return {'spTech': sp_tech, 'spEvent': sp_event}.get(k, 0)
    def iget(c, f):
        return playerid
    def invoke(kind, name, args, regs, pending, rec):
        if name == 'getCivID': pending[0] = civid
        elif name == 'findEventIndex':
            i = ev_ids.index(args[0]) if args[0] in ev_ids else -1
            pending[0] = i
        elif name == 'format': rec.append(('format', args))
        elif name == 'addActiveEvent': rec.append(('fire', tuple(args)))
        elif name == 'addSimpleTask': rec.append(('sched',))
        elif name == 'exceptionStack': rec.append(('err',))
        elif name == '<init>': rec.append(('task',))
        else: pending[0] = None
    return run(labels, ops, regs, {'sgetobj': sgetobj, 'sget': sget, 'iget': iget, 'invoke': invoke})

def fired(rec): return any(r[0] == 'fire' for r in rec)

# ---------------- 模拟②：bestIdx ----------------
def load_tables(tM):
    infos = [num(m.group(1)) for m in re.finditer(r'const v3, (-?0x[0-9a-fA-F]+|-?\d+)', tM)]
    keys = re.findall(r'const-string v3, "([^"]+)"', tM)
    assert len(infos) == 51 and len(keys) == 51
    return infos, keys

def expected_best(infos, keys, g, t, researched):
    target = g * 4 + t
    best, bestimg, minidx, minimg = None, -1, None, 1 << 20
    for i, info in enumerate(infos):
        if (info >> 16) != target: continue
        node = (info >> 8) & 0x7f
        img = info & 0xff
        if node in researched:
            if img > bestimg: best, bestimg = i, img
        else:
            if img < minimg: minidx, minimg = i, img
    return best if best is not None else minidx

def sim_bestidx(tM, g, t, researched):
    lines = get_method(tM, '.method public static bestIdx(')
    labels, ops = parse(lines)
    infos, keys = load_tables(tM)
    regs = {'p0': 0, 'p1': g, 'p2': t}
    def sgetobj(k): return infos if k == 'INFO' else (keys if k == 'KEY' else k)
    def invoke(kind, name, args, regs, pending, rec):
        if name == 'getCiv': pending[0] = 'CIV'
        elif name == 'getTechResearched': pending[0] = 1 if args[1] in researched else 0
        else: pending[0] = None
    regs['v0'] = 0; regs['v1'] = 0; regs['v2'] = 0; regs['v3'] = 0; regs['v4'] = 0; regs['v5'] = 0; regs['v6'] = 0; regs['v7'] = 0; regs['v8'] = 0
    rec = run(labels, ops, regs, {'sgetobj': sgetobj, 'invoke': invoke})
    for r in rec:
        if r[0] == 'return': return r[1]
    return None

# ---------------- 模拟③：插入块映射 ----------------
def sim_block(afm_text, marker, end_label, p0, bestidx_ret):
    i = afm_text.find(marker)
    m = re.search(r'(?m)^\s*' + re.escape(end_label) + r'\s*$', afm_text[i:])
    j = i + m.start()
    blk = (afm_text[i:j] + '\n    ' + end_label + '\n').split('\n')
    labels, ops = parse(blk)
    regs = {'p0': p0, 'p1': 0, 'v0': 0, 'v1': 0, 'v2': 0}
    rec = []
    calls = []
    def sgetobj(k): return 'PLAYER'
    def iget(c, f): return 5  # player civID
    def invoke(kind, name, args, regs, pending, rec2):
        if name == 'artGroupOf': pending[0] = args[0]  # g = civID for test
        elif name == 'bestIdx': calls.append(tuple(args)); pending[0] = bestidx_ret
        elif name == 'keyOf': pending[0] = 'K'
        elif name == 'genOf': pending[0] = 9
        elif name == 'pickAirImage': calls.append(('pick',) + tuple(args)); pending[0] = 77
        elif name == 'get': pending[0] = args[1]
        else: pending[0] = None
    rec = run(labels, ops, regs, {'sgetobj': sgetobj, 'iget': iget, 'invoke': invoke})
    return rec, calls

def block_errs(tF):
    e = []
    # name 映射：n∈{0..3} → t∈{2,3,0,1}
    for n, texp in [(0, 2), (1, 3), (2, 0), (3, 1)]:
        rec, calls = sim_block(tF, '# r6d262: 动态型号名', ':amf_old', n, 7)
        if not any(c[2] == texp for c in calls if len(c) >= 3 and c[0] != 'pick'):
            e.append('m3 name n=%d t!=%d %s' % (n, texp, calls[:2]))
        if not any(r[0] == 'return-object' for r in rec):
            e.append('m3 name n=%d no return' % n)
    # 未命中 → 不返回（回落旧逻辑）
    rec, calls = sim_block(tF, '# r6d262: 动态型号名', ':amf_old', 0, -1)
    if any(r[0] == 'return-object' for r in rec): e.append('m3 name fallback returned')
    # img 块：pickAirImage(gen=9, g, t)
    rec, calls = sim_block(tF, '# r6d262: 动态机型图', ':aimf_old', 2, 5)
    pick = [c for c in calls if c[0] == 'pick']
    if not pick or pick[0][1:4] != (9, 5, 2): e.append('m3 img pick %s' % (pick[:1],))
    rec, calls = sim_block(tF, '# r6d262: 动态机型图', ':aimf_old', 2, -1)
    if [c for c in calls if c[0] == 'pick']: e.append('m3 img fallback fired')
    return e

# ---------------- 汇总 ----------------
errs = []
errs += txt_errs(tA, tM, tF)

# 模拟①
cases = [
    ([], [], [], 37, 0, 0, False),
    ([37], ['evX'], ['evX'], 37, 0, 0, True),
    ([37], ['evX'], ['evX'], 36, 0, 0, False),
    ([37], ['evX'], ['evX'], 37, 2, 0, False),
    ([37], ['evX'], [], 37, 0, 0, False),
]
for (st, se, ids, tech, civ, pl, exp) in cases:
    rec = sim_ate(tA, st, se, ids, tech, civ, pl)
    if fired(rec) != exp:
        errs.append('m1 (%s,%s,tech=%d,civ=%d) got=%s' % (st, se, tech, civ, fired(rec)))

# 模拟②
infos, keys = load_tables(tM)
best_cases = [
    (0, 0, set(), 'A_CN_J11_F'),
    (0, 0, {33}, 'A_CN_J11_F'),
    (0, 0, {33, 37}, 'A_CN_J20_F'),
    (0, 0, {33, 37, 42}, 'A_CN_J36_F'),
    (0, 0, {42}, 'A_CN_J36_F'),
    (9, 0, set(), None),
]
for (g, t, rs, expkey) in best_cases:
    idx = sim_bestidx(tM, g, t, rs)
    gotkey = keys[idx] if isinstance(idx, int) and idx >= 0 else None
    if gotkey != expkey:
        errs.append('m2 (g=%d,t=%d,rs=%s) got=%s exp=%s' % (g, t, sorted(rs), gotkey, expkey))
# 与我们独立算的期望再交叉 20 组随机
import random
random.seed(7)
for _ in range(20):
    g = random.randint(0, 3); t = random.randint(0, 3)
    rs = set(random.sample(range(32, 75), random.randint(0, 10)))
    idx = sim_bestidx(tM, g, t, rs)
    got = idx if isinstance(idx, int) and idx >= 0 else None
    exp = expected_best(infos, keys, g, t, rs)
    if got != exp:
        errs.append('m2x (g=%d,t=%d) got=%s exp=%s' % (g, t, got, exp))

errs += block_errs(tF)

print('=== 正样本 errs =', errs[:8], '... ' if len(errs) > 8 else '', '(共%d)' % len(errs))

# ---------------- 负样本（必须全红） ----------------
print('=== 负样本 ===')
n1t = tA.replace('    if-ne v1, v0, :b4end\n', '')
r1 = False
for (st, se, ids, tech, civ, pl, exp) in cases:
    if fired(sim_ate(n1t, st, se, ids, tech, civ, pl)) != exp: r1 = True
print('N1 删玩家守卫:', '红 ✓' if r1 else '绿 ✗')

n2t = tA.replace('if-ne v3, p1, :b4next', 'if-eq v3, p1, :b4next')
r2 = False
for (st, se, ids, tech, civ, pl, exp) in cases:
    if fired(sim_ate(n2t, st, se, ids, tech, civ, pl)) != exp: r2 = True
print('N2 扫描比较翻极性:', '红 ✓' if r2 else '绿 ✗')

n3t = tM.replace('if-le v7, v3, :b4mnext', 'if-ge v7, v3, :b4mnext')
r3 = False
for (g, t, rs, expkey) in best_cases[:5]:
    idx = sim_bestidx(n3t, g, t, rs)
    gotkey = keys[idx] if isinstance(idx, int) and idx >= 0 else None
    if gotkey != expkey: r3 = True
print('N3 取最大→翻半:', '红 ✓' if r3 else '绿 ✗')

n4t = tM.replace('if-gez v2, :b4mbret', 'if-ltz v2, :b4mbret')
r4 = False
for (g, t, rs, expkey) in best_cases[:5]:
    idx = sim_bestidx(n4t, g, t, rs)
    gotkey = keys[idx] if isinstance(idx, int) and idx >= 0 else None
    if gotkey != expkey: r4 = True
print('N4 返回分支翻极性:', '红 ✓' if r4 else '绿 ✗')

n5t = tF.replace('if-ge p0, v2, :amf_hi', 'if-lt p0, v2, :amf_hi')
r5 = []
for n, texp in [(0, 2), (1, 3), (2, 0), (3, 1)]:
    rec, calls = sim_block(n5t, '# r6d262: 动态型号名', ':amf_old', n, 7)
    if not any(c[2] == texp for c in calls if len(c) >= 3 and c[0] != 'pick'):
        r5.append(n)
print('N5 名称映射翻极性:', '红 ✓' if r5 else '绿 ✗', r5[:2])

allok = (len(errs) == 0) and r1 and r2 and r3 and r4 and bool(r5)
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)