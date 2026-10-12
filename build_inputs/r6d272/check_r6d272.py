#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d271.py — B5b 门禁：查询接口结构 + T2 映射结构 + 模拟器 + 负样本
import re, sys

Q = chr(34)
TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali'

def body_of(s, decl):
    i = s.find(decl)
    assert i >= 0, decl
    j = s.find('.end method', i)
    return s[i:j]


def ops_ok(t):
    return (('if-gez p0, :t270_k1' in t) and ('if-ltz p0, :t270_k1' not in t)
            and ('if-lt p0, v0, :t270_k2' in t) and ('if-ge p0, v0, :t270_k2' not in t)
            and ('if-nez v3, :t270_c_land' in t) and ('if-eqz v3, :t270_c_land' not in t)
            and ('if-nez v3, :t270_c_air' in t) and ('if-eqz v3, :t270_c_air' not in t))

def sim(body_lines, inp):
    labels = {}
    for idx, ln in enumerate(body_lines):
        t = ln.strip()
        if t.startswith(':'):
            labels[t] = idx
    regs = {}
    pc = 0
    pend = None
    steps = 0
    while pc < len(body_lines) and steps < 500:
        steps += 1
        t = body_lines[pc].strip()
        if not t:
            pc += 1; continue
        if t.startswith(':'):
            pc += 1; continue
        m = re.match(r'const-string (v\d+), ' + Q + r'([^' + Q + r']*)' + Q, t)
        if m:
            regs[m.group(1)] = m.group(2); pc += 1; continue
        m = re.match(r'invoke-virtual \{p0, (v\d+)\}, Ljava/lang/String;->equals', t)
        if m:
            a = regs.get(m.group(1))
            pend = (inp == a)
            pc += 1; continue
        m = re.match(r'move-result (v\d+)', t)
        if m and pend is not None:
            regs[m.group(1)] = 1 if pend else 0
            pend = None
            pc += 1; continue
        m = re.match(r'if-eqz (p0|v\d+), (:\S+)', t)
        if m:
            if m.group(1) == 'p0':
                cond = (inp is None)
            else:
                cond = (regs.get(m.group(1)) == 0)
            if cond:
                pc = labels.get(m.group(2), pc + 1); continue
            pc += 1; continue
        m = re.match(r'if-nez (v\d+), (:\S+)', t)
        if m:
            val = regs.get(m.group(1))
            if val not in (0, None):
                pc = labels.get(m.group(2), pc + 1); continue
            pc += 1; continue
        m = re.match(r'return-object (v\d+)', t)
        if m:
            return regs.get(m.group(1))
        pc += 1
    return 'NOSTOP'

def main():
    s = open(TREE, encoding='utf-8').read()
    f = []
    for decl in ('.method public static final getTopCategoryByCategory(',
                 '.method public static final getTopCategory(I)',
                 '.method public static final getTopTabs()',
                 '.method public static final dumpTopCategories()'):
        if s.count(decl) != 1:
            f.append(('S1', decl, s.count(decl)))
    if s.count('->dumpTopCategories()V') != 1:
        f.append(('S2a call', s.count('->dumpTopCategories()V')))
    i_call = s.find('->dumpTopCategories()V'); i_cat = s.find('->dumpTechCategories()V'); i_img = s.find('loadTechnologyImages()V')
    if not (i_cat < i_call < i_img):
        f.append(('S2b order', i_cat, i_call, i_img))
    b = body_of(s, '.method public static final getTopCategoryByCategory(')
    for k, exp in (('const-string v0, ' + Q + 'air' + Q, 2), ('army', 1), ('government', 1),
                   ('const-string v0, ' + Q + 'land' + Q, 2), ('const-string v0, ' + Q + 'civil' + Q, 1)):
        if b.count(k) != exp:
            f.append(('S3 const', k, b.count(k)))
    if b.count('return-object v0') != 4:
        f.append(('S3 ret', b.count('return-object v0')))
    t = body_of(s, '.method public static final getTopTabs()')
    order = [t.find('land'), t.find('air'), t.find('civil')]
    if not (order[0] < order[1] < order[2]):
        f.append(('S4 order', order))
    if t.count('ArrayList;->add') != 3:
        f.append(('S4 add', t.count('ArrayList;->add')))
    d = body_of(s, '.method public static final dumpTopCategories()')
    if d.count('nTOP id=') != 1 or d.count('nTOPSUM land=') != 1:
        f.append(('S5 consts', 0))
    if d.count('AirDbgLog;->dWrite') != 2:
        f.append(('S5 dwrite', d.count('AirDbgLog;->dWrite')))
    if '.registers 7' not in d:
        f.append(('S5 regs', 0))
    if 'loadTechnology()V\n    .registers 8' not in s:
        f.append(('S6a', 0))
    if s.count('dumpTechCategories') != 2 or s.count('nTCAT id=') != 1:
        f.append(('S6b', 0))
    if not ops_ok(s):
        f.append(('S7 ops', 0))

    lines = b.split('\n')
    for inp, exp in (('air', 'air'), ('army', 'land'), ('government', 'land'),
                     ('industry', 'civil'), ('unknown', 'civil'), (None, 'civil')):
        got = sim(lines, inp)
        if got != exp:
            f.append(('SIM', inp, got, exp))

    mut = b.replace('const-string v0, ' + Q + 'air' + Q, 'const-string v0, ' + Q + 'zzz' + Q, 1)
    n1f = (sim(mut.split('\n'), 'air') != 'air')
    s2 = s.replace('    invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->dumpTopCategories()V\n', '', 1)
    n2f = (s2.count('->dumpTopCategories()V') != 1)
    s3 = s.replace('.method public static final dumpTopCategories()V', '.method public static final dumpTopCategoriesX()V', 1)
    n3f = (s3.count('.method public static final dumpTopCategories()') != 1)

    s4 = s.replace('if-gez p0, :t270_k1', 'if-ltz p0, :t270_k1', 1)
    n4f = (not ops_ok(s4)) and ('if-ltz p0, :t270_k1' in s4)

    print('fails =', len(f))
    for x in f:
        print('  ', x)
    print('N1(rev)=', n1f, ' N2=', n2f, ' N3=', n3f, ' N4=', n4f)
    ok = (not f) and n1f and n2f and n3f and n4f
    print('PASS' if ok else 'FAIL')
    sys.exit(0 if ok else 1)

if __name__ == '__main__':
    main()