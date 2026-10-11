# -*- coding: utf-8 -*-
# B3b 门禁：文本断言 + 行为级模拟器（解释真实 smali）+ 反转敏感性 + 负样本
import re, sys

ROOT = '/tmp/w3a/smali'
T = ROOT + '/aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali'
F = ROOT + '/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
C = ROOT + '/aoc/kingdoms/lukasz/map/civilization/Civilization.smali'
tT = open(T, encoding='utf-8').read()
tF = open(F, encoding='utf-8').read()
tC = open(C, encoding='utf-8').read()

def txt_errs(tT, tF, tC):
    e = []
    if tT.count('.method public static isTechAllowedForCiv(II)Z') != 1: e.append('S1a helper!=1')
    for lab, n in [(':nlow', 2), (':inr', 2), (':chk3', 2), (':chk1', 2), (':set2', 2)]:
        if len(re.findall(re.escape(lab) + r'(?![0-9A-Za-z_])', tT)) != n: e.append('S1b %s!=%d' % (lab, n))
    if len(re.findall(r':chk(?![0-9A-Za-z_])', tT)) != 4: e.append('S1b :chk!=4')
    if len(re.findall(r':allow(?![0-9A-Za-z_])', tT)) != 2: e.append('S1b :allow!=2')
    if tF.count('isTechAllowedForCiv') != 1: e.append('S1c call!=1')
    if 'if-nez v0, :b3b_vis_ok' not in tF: e.append('S1c branch missing')
    if len(re.findall(r':b3b_vis_ok(?![0-9A-Za-z_])', tF)) != 2: e.append('S1c vis_ok!=2')
    if tF.count('goto :goto_56') != 1: e.append('S1c skip-goto!=1')
    if tC.count('isTechAllowedForCiv') != 1: e.append('S1d call!=1')
    for lab in [':b3b_nlow', ':b3b_chk', ':b3b_no']:
        if len(re.findall(re.escape(lab) + r'(?![0-9A-Za-z_])', tC)) != 2: e.append('S1d %s!=2' % lab)
    return e

# ---------- 行为级模拟器 ----------
def get_method(text, sig):
    i = text.find(sig)
    j = text.find('.end method', i)
    return text[i:j].split('\n')

def sim_method(lines, tech, civ, art_of=lambda x: x):
    regs = {'p0': tech, 'p1': civ}
    labels = {}
    ops = []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.method') or s.startswith('.registers') or s.startswith('.local') or s.startswith('.param'):
            continue
        if s.startswith(':'):
            labels[s] = len(ops); continue
        ops.append(s)
    def num(x):
        return int(x, 16) if x.startswith('0x') else int(x)
    pc = 0
    for _ in range(400):
        if pc >= len(ops):
            return None
        s = ops[pc]
        m = re.match(r'const(?:/4|/16)?\s+(v\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m:
            regs[m.group(1)] = num(m.group(2)); pc += 1; continue
        m = re.match(r'if-(ge|le|gt|lt|eq|ne)\s+([pv]\d+),\s*([pv]\d+),\s*(:\w+)', s)
        if m:
            op, a, b, lab = m.groups()
            va, vb = regs.get(a), regs.get(b)
            cond = {'ge': va >= vb, 'le': va <= vb, 'gt': va > vb, 'lt': va < vb, 'eq': va == vb, 'ne': va != vb}[op]
            pc = labels[lab] if cond else pc + 1; continue
        m = re.match(r'if-eqz\s+([pv]\d+),\s*(:\w+)', s)
        if m:
            pc = labels[m.group(2)] if regs.get(m.group(1)) == 0 else pc + 1; continue
        m = re.match(r'if-nez\s+([pv]\d+),\s*(:\w+)', s)
        if m:
            pc = labels[m.group(2)] if regs.get(m.group(1)) != 0 else pc + 1; continue
        m = re.match(r'goto\s+(:\w+)', s)
        if m:
            pc = labels[m.group(1)]; continue
        if s.startswith('invoke-static'):
            m = re.search(r'\{(\w+)\}', s)
            regs['__pending'] = art_of(regs.get(m.group(1)))
            pc += 1; continue
        m = re.match(r'move-result\s+(v\d+)', s)
        if m:
            regs[m.group(1)] = regs.pop('__pending', None); pc += 1; continue
        m = re.match(r'return\s+(v\d+)', s)
        if m:
            return regs.get(m.group(1))
        # 其它（iget 等）视为桩：置 None
        m = re.match(r'iget\s+(v\d+),', s)
        if m:
            regs[m.group(1)] = civ  # 桩：把 iCivID 视为 civ
            pc += 1; continue
        pc += 1
    return None

def map_group(tech):
    if tech < 32 or tech > 74: return None
    if tech <= 44: return 0
    if tech <= 54: return 3
    if tech <= 63: return 1
    return 2

def expected(tech, civ):
    g = map_group(tech)
    return True if g is None else (g == civ)

techs = [-1, 0, 31, 32, 37, 44, 45, 50, 54, 55, 60, 63, 64, 70, 74, 75, 90]
civs = [0, 1, 2, 3]

def sim_errs(tT_mut):
    lines = get_method(tT_mut, '.method public static isTechAllowedForCiv(II)Z')
    errs = []
    for tech in techs:
        for civ in civs:
            got = sim_method(lines, tech, civ)
            exp = expected(tech, civ)
            if got != exp:
                errs.append('sim (%d,%d) got=%s exp=%s' % (tech, civ, got, exp))
    return errs

errs = []
errs += txt_errs(tT, tF, tC)
sim_e = sim_errs(tT)
if sim_e: errs.append('S2 ' + sim_e[0] + (' (+%d)' % (len(sim_e) - 1) if len(sim_e) > 1 else ''))

# C 尾部模拟（衔接）
def sim_c(tC_mut):
    lines = get_method(tC_mut, '.method public getAvailableToResearch(I)Z')
    # 仅取 :cond_5a 之后的片段做衔接验证
    idx = [i for i, l in enumerate(lines) if l.strip() == ':cond_5a']
    sub = lines[idx[0]:] if idx else lines
    out = []
    samples = [(10, 2), (75, 1), (32, 0), (32, 1), (44, 0), (45, 3), (55, 1), (64, 2), (74, 2), (63, 1)]
    helper_lines = get_method(tT, '.method public static isTechAllowedForCiv(II)Z')
    for tech, civ in samples:
        got = sim_method(sub, tech, civ, art_of=lambda x: x)
        # 注意：C 块内 artGroupOf 不在其中（它在 helper 内）；C 里的桩调用是 helper 本体 → 直接用真 helper 模拟
        # 这里改用手动等价：重放 sub，但把 invoke-static helper 一步替换
        got = sim_c_one(sub, tech, civ, helper_lines)
        exp = expected(tech, civ)
        if got != exp: out.append('simC (%d,%d) got=%s exp=%s' % (tech, civ, got, exp))
    return out

def sim_c_one(sub, tech, civ, helper_lines):
    regs = {'p0': civ, 'p1': tech}
    labels = {}
    ops = []
    for ln in sub:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.method') or s.startswith('.registers') or s.startswith('.local') or s.startswith('.param') or s.startswith('.end'):
            continue
        if s.startswith(':'):
            labels[s] = len(ops); continue
        ops.append(s)
    if ':cond_5a' in labels:
        pc = labels[':cond_5a']
    else:
        return 'NOBLOCK'
    def num(x):
        return int(x, 16) if x.startswith('0x') else int(x)
    for _ in range(80):
        if pc >= len(ops): return None
        s = ops[pc]
        m = re.match(r'const(?:/4|/16)?\s+(v\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)', s)
        if m: regs[m.group(1)] = num(m.group(2)); pc += 1; continue
        m = re.match(r'iget\s+(v\d+),', s)
        if m: regs[m.group(1)] = civ; pc += 1; continue
        m = re.match(r'if-(ge|le|gt|lt|eq|ne)\s+([pv]\d+),\s*([pv]\d+),\s*(:\w+)', s)
        if m:
            op, a, b, lab = m.groups(); va, vb = regs.get(a), regs.get(b)
            cond = {'ge': va >= vb, 'le': va <= vb, 'gt': va > vb, 'lt': va < vb, 'eq': va == vb, 'ne': va != vb}[op]
            pc = labels[lab] if cond else pc + 1; continue
        m = re.match(r'if-eqz\s+([pv]\d+),\s*(:\w+)', s)
        if m: pc = labels[m.group(2)] if regs.get(m.group(1)) == 0 else pc + 1; continue
        if s.startswith('invoke-static') and 'isTechAllowedForCiv' in s:
            regs['__pending'] = sim_method(helper_lines, tech, civ)
            pc += 1; continue
        m = re.match(r'move-result\s+(v\d+)', s)
        if m: regs[m.group(1)] = regs.pop('__pending', None); pc += 1; continue
        m = re.match(r'return\s+(v\d+)', s)
        if m: return regs.get(m.group(1))
        pc += 1
    return None

ce = sim_c(tC)
if ce: errs.append('S2C ' + ce[0] + (' (+%d)' % (len(ce) - 1) if len(ce) > 1 else ''))
print('=== 正样本（期望 0 错误）===')
print('errs =', errs[:8], '...' if len(errs) > 8 else '')
ok = len(errs) == 0

print('=== 反转敏感性（两个突变都必须被模拟器抓到）===')
m1 = tT.replace('if-eq v1, v2, :allow', 'if-ne v1, v2, :allow')
m2 = tT.replace('const/4 v1, 0x3', 'const/4 v1, 0x1', 1)
r1 = sim_errs(m1); r2 = sim_errs(m2)
print('反转①(if-eq→if-ne):', '红 ✓' if r1 else '绿 ✗', r1[:1])
print('反转②(组3→组1)   :', '红 ✓' if r2 else '绿 ✗', r2[:1])

print('=== 负样本（期望全红）===')
n1 = txt_errs(tT, tF.replace('if-nez v0, :b3b_vis_ok', 'if-eqz v0, :b3b_vis_ok'), tC)
print('N1 B块极性翻转(S1c vis逻辑):', '红 ✓' if n1 else '绿 ✗', n1[:1])
n2 = sim_errs(tT.replace('0x2c', '0x2b'))
print('N2 44→43:', '红 ✓' if n2 else '绿 ✗', n2[:1])
n3 = sim_errs(tT.replace('const/4 v1, 0x2', 'const/4 v1, 0x0'))
print('N3 俄组2→0:', '红 ✓' if n3 else '绿 ✗', n3[:1])
tF_broken = tF.replace('    :b3b_vis_ok\n', '')
n4 = txt_errs(tT, tF_broken, tC)
print('N4 删B块:', '红 ✓' if n4 else '绿 ✗', n4[:1])

allok = ok and bool(r1) and bool(r2) and bool(n1) and bool(n2) and bool(n3) and bool(n4)
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)