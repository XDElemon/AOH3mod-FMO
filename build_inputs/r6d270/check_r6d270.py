#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d270.py — B5a 门禁：类别数据 + 字段/探针结构 + 负样本自检
import re, sys

Q = chr(34)
JSON = '/root/history23_repo/build_inputs/r6d270/out/assets/game/technologies/Technologies.json'
CLS  = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology.smali'
TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali'

ALLOWED = {'foundation','army','air','industry','electronics','nuclear','society','economy','agriculture','government','future'}
EXPECT = {'air':47,'army':20,'economy':2,'future':2,'foundation':1,'industry':1,'nuclear':1,'government':1}

def parse_records(s):
    out = {}
    for m in re.finditer(r'\{\n\t\t\tID: (\d+),', s):
        rid = int(m.group(1))
        nxt = s.find('},', m.start())
        seg = s[m.start():nxt+2]
        cat = re.search(r'Category: '+Q+r'([a-z]+)'+Q, seg)
        sub = re.search(r'SubTag: '+Q+r'([^'+Q+r']*)'+Q, seg)
        out[rid] = (cat.group(1) if cat else None, sub.group(1) if sub else None)
    return out

def data_checks(s):
    f = []
    if s.count('Category: ') != 75: f.append(('S1a Category count', s.count('Category: ')))
    if s.count('SubTag: ') != 75: f.append(('S1b SubTag count', s.count('SubTag: ')))
    recs = parse_records(s)
    if len(recs) != 75: f.append(('S1c records', len(recs)))
    from collections import Counter
    cats = Counter(v[0] for v in recs.values() if v[0])
    for k, v in EXPECT.items():
        if cats.get(k, 0) != v: f.append(('S1d cat='+k, cats.get(k, 0)))
    for rid, (cat, sub) in recs.items():
        if cat not in ALLOWED: f.append(('S1e bad cat', rid, cat))
    for rid, ec, es in ((0,'foundation','root'),(33,'air','cn.fighter'),(54,'air','us.interceptor'),(73,'air','ru.fighter'),(74,'air','ru.bomber')):
        if recs.get(rid) != (ec, es): f.append(('S2 spot', rid, recs.get(rid)))
    for k in ('Name: ','TreeColumn: ','TreeRow: ','RequiredTech: ','RequiredTech2: ','ResearchCost: ','AI: '):
        c = s.count(chr(10)+chr(9)*3+k)
        if c != 75: f.append(('S6 key', k, c))
    return f

def smali_checks(cs, ts):
    f = []
    if cs.count('.field public Category:Ljava/lang/String;') != 1: f.append(('S3a Category field', cs.count('.field public Category:Ljava/lang/String;')))
    if cs.count('.field public SubTag:Ljava/lang/String;') != 1: f.append(('S3b SubTag field', cs.count('.field public SubTag:Ljava/lang/String;')))
    if ts.count('dumpTechCategories') != 2: f.append(('S4a dump count', ts.count('dumpTechCategories')))
    call = 'invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->dumpTechCategories()V'
    if ts.count(call) != 1: f.append(('S4b call count', ts.count(call)))
    i_sp = ts.find('sput v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I')
    i_ca = ts.find(call)
    if not (i_sp >= 0 and i_ca > i_sp): f.append(('S4c order', i_sp, i_ca))
    m = re.search(r'\.method public static final dumpTechCategories\(\)V(.*?)\.end method', ts, re.S)
    if not m: f.append(('S4d method missing', 0))
    else:
        body = m.group(1)
        if body.count('nTCAT id=') != 1: f.append(('S4e nTCAT', body.count('nTCAT id=')))
        if body.count('AirDbgLog;->dWrite') != 1: f.append(('S4f dWrite', body.count('AirDbgLog;->dWrite')))
        if '.registers 4' not in body: f.append(('S4g regs', 0))
    if 'loadTechnology()V\n    .registers 8' not in ts: f.append(('S5 loadTechnology regs', 0))
    return f

def main():
    s = open(JSON, encoding='utf-8').read()
    cs = open(CLS, encoding='utf-8').read()
    ts = open(TREE, encoding='utf-8').read()
    fails = data_checks(s) + smali_checks(cs, ts)
    print('REAL fails =', len(fails))
    for x in fails: print('  ', x)

    neg1 = s.replace('Category: '+Q+'air'+Q, 'Category: '+Q+'zzz'+Q, 1)
    n1 = data_checks(neg1)
    neg2 = s.replace('Category: ', 'Cotegory: ', 1)
    n2 = data_checks(neg2)
    neg3 = ts.replace('    invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->dumpTechCategories()V\n', '', 1)
    n3 = smali_checks(cs, neg3)
    print('N1 fails =', len(n1), '| N2 fails =', len(n2), '| N3 fails =', len(n3))
    ok = (not fails) and n1 and n2 and n3
    print('PASS' if ok else 'FAIL')
    sys.exit(0 if ok else 1)

if __name__ == '__main__':
    main()