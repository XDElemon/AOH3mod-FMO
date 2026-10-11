# -*- coding: utf-8 -*-
# B4 门禁：文本断言 + 行为级模拟器（解释真实 smali）+ 反转敏感性 + 负样本 + STAGE 检查
import re, sys

ROOT = '/tmp/w3a/smali'
A = ROOT + '/aoc/kingdoms/lukasz/events/AirTechEvents.smali'
T = ROOT + '/aoc/kingdoms/lukasz/events/AirTechEvents$Task.smali'
C = ROOT + '/aoc/kingdoms/lukasz/map/civilization/Civilization.smali'
STAGE = '/sdcard/GLG/历史23/build_inputs/b4/out'

tA = open(A, encoding='utf-8').read()
tT = open(T, encoding='utf-8').read()
tC = open(C, encoding='utf-8').read()

# ---------------- 文本断言 ----------------
def txt_errs(tA, tT, tC, stage_ok=True):
    e = []
    if '.method public static onTechCompleted(' not in tA: e.append('S1a onTechCompleted missing')
    if 'if-lt p1, v0, :b4end' not in tA: e.append('S1a lower polarity missing')
    if 'if-gt p1, v0, :b4end' not in tA: e.append('S1a upper polarity missing')
    if tA.count('if-gez v2, :b4have') != 2: e.append('S1a if-gez count != 2')
    if 'if-ltz v2' in tA: e.append('S1a stale if-ltz')
    if ':b4ge' in tA: e.append('S1a stale label b4ge')
    for s in ['findEventIndex', 'af_tech_breakthrough', 'rfEvent;->format', 'addActiveEvent', 'addSimpleTask']:
        if s not in tA: e.append('S1b missing ' + s)
    if 'rebuildInGame_Event' not in tT: e.append('S2 task missing rebuild')
    if tT.count(':b4tend') != 3: e.append('S2 task label count != 3')
    if tC.count('AirTechEvents;->onTechCompleted') != 1: e.append('S3 injection != 1')
    if 'addTechnology(IZ)V\n\n    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/events/AirTechEvents;->onTechCompleted' not in tC:
        e.append('S3 injection adjacency wrong')
    if stage_ok:
        ev = open(STAGE + '/assets/game/events/common/af_tech_breakthrough.txt', encoding='utf-8').read()
        for s in ['id=af_tech_breakthrough', 'possible_to_run=false', 'popUp=true', 'only_once=false',
                  'random_chance=0', 'image=44.png']:
            if s not in ev: e.append('S4 event key missing: ' + s)
        if ev.count('option_btn') != 2: e.append('S4 option count != 2')
        lc = open(STAGE + '/assets/game/events/list_common.txt', encoding='utf-8').read()
        if lc.count('af_tech_breakthrough.txt') != 1: e.append('S4 list append != 1')
        if 'af_tech_breakthrough.txt;' not in lc: e.append('S4 list entry missing')
        for bn in ['Bundle.properties', 'Bundle_cn_sp.properties', 'Bundle_cn_tr.properties']:
            bt = open(STAGE + '/assets/game/languages/' + bn, encoding='utf-8').read()
            for k in ['af_tech_breakthrough.t', 'af_tech_breakthrough.d', 'b4_af_opt_a', 'b4_af_opt_b']:
                if bt.count(k) != 1: e.append('S4 %s key %s != 1' % (bn, k))
    return e

# ---------------- 行为级模拟器 ----------------
def get_method(text, sig):
    i = text.find(sig)
    j = text.find('.end method', i)
    return text[i:j].split('\n')

def sim_ontech(txt, tech, civid, playerid, afidx=-1, findidx=7, formatted=0):
    lines = get_method(txt, '.method public static onTechCompleted(')
    labels, ops = {}, []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.'):
            continue
        if s.startswith(':'):
            labels[s] = len(ops); continue
        ops.append(s)
    regs = {'p0': 'CIV', 'p1': tech}
    st = {'afidx': afidx, 'formatted': formatted}
    rec = []
    pending = None
    def num(x): return int(x, 16) if x.startswith('0x') or x.startswith('-0x') else int(x)
    pc = 0
    for _ in range(500):
        if pc >= len(ops): return rec
        s = ops[pc]
        m = re.match(r'const(?:/4|/16|/high16)?\s+([pv]\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
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
        m = re.match(r'sget-object\s+([pv]\d+),\s*.*Game;->player', s)
        if m: regs[m.group(1)] = 'PLAYER'; pc += 1; continue
        m = re.match(r'sget-object\s+([pv]\d+),\s*.*EventsManager;->events', s)
        if m: regs[m.group(1)] = 'EVLIST'; pc += 1; continue
        m = re.match(r'sget-boolean\s+([pv]\d+),\s*.*->formatted', s)
        if m: regs[m.group(1)] = st['formatted']; pc += 1; continue
        m = re.match(r'sget\s+([pv]\d+),\s*.*->afIdx', s)
        if m: regs[m.group(1)] = st['afidx']; pc += 1; continue
        m = re.match(r'sput\s+([pv]\d+),\s*.*->afIdx', s)
        if m: st['afidx'] = regs.get(m.group(1)); pc += 1; continue
        m = re.match(r'sput-boolean\s+([pv]\d+),\s*.*->formatted', s)
        if m: st['formatted'] = regs.get(m.group(1)); pc += 1; continue
        m = re.match(r'iget\s+([pv]\d+),\s*([pv]\d+),\s*.*->iCivID', s)
        if m: regs[m.group(1)] = playerid; pc += 1; continue
        m = re.match(r'invoke-virtual\s+\{(\w+)\},\s*.*getCivID', s)
        if m: pending = civid; pc += 1; continue
        m = re.match(r'invoke-static\s+\{\},?\s*.*findEventIndex', s)
        if m: pending = findidx; pc += 1; continue
        m = re.match(r'invoke-interface\s+\{.*\},\s*.*List;->get', s)
        if m: pending = 'EVOBJ'; pc += 1; continue
        m = re.match(r'invoke-static\s+\{.*\},\s*.*rfEvent;->format', s)
        if m: rec.append(('format',)); pc += 1; continue
        m = re.match(r'invoke-virtual\s+\{(.*)\},\s*.*addActiveEvent', s)
        if m:
            args = [regs.get(x.strip()) for x in m.group(1).split(',')]
            rec.append(('fire', tuple(args))); pc += 1; continue
        m = re.match(r'invoke-static\s+\{(\w+)\},\s*.*addSimpleTask', s)
        if m: rec.append(('sched',)); pc += 1; continue
        m = re.match(r'move-result(?:-object)?\s+([pv]\d+)', s)
        if m: regs[m.group(1)] = pending; pc += 1; continue
        m = re.match(r'new-instance\s+([pv]\d+)', s)
        if m: regs[m.group(1)] = 'NEW'; pc += 1; continue
        m = re.match(r'check-cast', s)
        if m: pc += 1; continue
        m = re.match(r'move-exception', s)
        if m: rec.append(('exc',)); pc += 1; continue
        m = re.match(r'invoke-static\s+\{.*\},\s*.*exceptionStack', s)
        if m: rec.append(('err',)); pc += 1; continue
        m = re.match(r'return-void', s)
        if m: return rec
        if s.startswith('invoke-'):
            pc += 1; continue
        pc += 1
    return rec

def fired(rec):
    return any(r[0] == 'fire' for r in rec)

cases = [
    # tech, civid, playerid, afidx, formatted, expect_fire
    (30, 0, 0, -1, 0, False),
    (75, 0, 0, -1, 0, False),
    (31, 0, 0, -1, 0, False),
    (32, 0, 0, -1, 0, True),
    (37, 0, 0, -1, 0, True),
    (37, 2, 0, -1, 0, False),
    (74, 0, 0, -1, 0, True),
    (90, 0, 0, -1, 0, False),
    (32, 0, 0, 7, 1, True),
]

errs = []
errs += txt_errs(tA, tT, tC)
for (tech, civ, pl, afl, fmt, exp) in cases:
    rec = sim_ontech(tA, tech, civ, pl, afidx=afl, formatted=fmt)
    got = fired(rec)
    if got != exp:
        errs.append('sim (%d,%d,pl=%d,af=%d,f=%d) got=%s exp=%s' % (tech, civ, pl, afl, fmt, got, exp))
    if exp and fmt == 0 and not any(r[0] == 'format' for r in rec):
        errs.append('sim (%d) fire without format' % tech)

print('=== 正样本（期望 0 错误）===')
print('errs =', errs[:10])

print('=== 反转敏感性 ===')
m1 = tA.replace('if-lt p1, v0, :b4end', 'if-gt p1, v0, :b4end')
r1 = []
for (tech, civ, pl, afl, fmt, exp) in cases:
    if fired(sim_ontech(m1, tech, civ, pl, afidx=afl, formatted=fmt)) != exp:
        r1.append(tech)
m2 = tA.replace('const/16 v0, 0x4a', 'const/16 v0, 0x40')
r2 = []
for (tech, civ, pl, afl, fmt, exp) in cases:
    if fired(sim_ontech(m2, tech, civ, pl, afidx=afl, formatted=fmt)) != exp:
        r2.append(tech)
print('反转①(下界极性):', '红 ✓' if r1 else '绿 ✗', r1[:3])
print('反转②(上界74→64):', '红 ✓' if r2 else '绿 ✗', r2[:3])

print('=== 负样本 ===')
n1 = [t for t in ['x'] if not r1] or ([] if r1 else ['flip1'])
print('N1 下界极性翻转:', '红 ✓' if r1 else '绿 ✗')
print('N2 上界收缩:', '红 ✓' if r2 else '绿 ✗')
m4 = tA.replace('    if-ne v1, v0, :b4end\n', '')
r4 = []
for (tech, civ, pl, afl, fmt, exp) in cases:
    if fired(sim_ontech(m4, tech, civ, pl, afidx=afl, formatted=fmt)) != exp:
        r4.append(tech)
print('N3 删玩家守卫:', '红 ✓' if r4 else '绿 ✗', r4[:3])
n4e = txt_errs(tA, tT, tC.replace('AirTechEvents;->onTechCompleted', 'X'), stage_ok=False)
print('N4 删注入:', '红 ✓' if n4e else '绿 ✗', n4e[:1])
lc_txt = open(STAGE + '/assets/game/events/list_common.txt', encoding='utf-8').read()

def stage_list_err(lc):
    e = []
    if lc.count('af_tech_breakthrough.txt') != 1: e.append('S4 list append != 1')
    if 'af_tech_breakthrough.txt;' not in lc: e.append('S4 list entry missing')
    return e

lc_bad = lc_txt.replace('af_tech_breakthrough.txt;', '')
n5 = stage_list_err(lc_bad)
print('N5 删 list 条目(坏样必红):', '红 ✓' if n5 else '绿 ✗', n5[:1])

allok = (len(errs) == 0) and bool(r1) and bool(r2) and bool(r4) and bool(n4e) and bool(n5)
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)