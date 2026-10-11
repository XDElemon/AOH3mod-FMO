# -*- coding: utf-8 -*-
# B3 门禁 v2：对 STAGE 产出做独立断言（S1-S6）+ 负样本（N1-N7，必须全红）
# v2：适配【去重51记录 + 节点 MaintainTechnologyName=true 纯名】；新增 N6/N7
import re, sys, zipfile

OUT = '/sdcard/GLG/历史23/build_inputs/b3/out'
APK = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d259.apk'
z = zipfile.ZipFile(APK)
BASE_TECH = z.read('assets/game/technologies/Technologies.json').decode('utf-8')

S_ID = {'CN': 32, 'US': 45, 'EU': 55, 'RU': 64}
A4 = {32: (33, 34, 35, 36), 45: (46, 47, 48), 55: (56, 57, 58, 59), 64: (65, 66, 67, 68)}
NODEID = {
 'CN': {'J11':33,'J8':34,'Q5':35,'H6':36,'J20':37,'J10':38,'H7':39,'J35':40,'H20':41,'J36':42,'J50':43,'H29':44},
 'US': {'F14':46,'A10':47,'B1':48,'F22':49,'F35':50,'B2':51,'X32':52,'F47':53,'CFA44':54},
 'EU': {'EF2000':56,'JAS39':57,'HARRIER':58,'TORNADO':59,'F35':60,'TEMPEST':61,'ASFX':62,'FCAS':63},
 'RU': {'SU27':65,'MIG31':66,'SU25':67,'TU160':68,'SU57':69,'SU34':70,'MIG41':71,'TU170':72,'X02S':73,'TU202':74},
}
MAP2 = {
 'CN': {'F': ['J11','J20','J20','J36'], 'I': ['J8','J10','J20','J50'], 'A': ['Q5','J11','J35','J50'], 'B': ['H6','H7','H20','H29']},
 'US': {'F': ['F14','F22','F22','F47'], 'I': ['F14','F22','F35','CFA44'], 'A': ['A10','F35','X32','X32'], 'B': ['B1','B2','B2','B2']},
 'EU': {'F': ['EF2000','EF2000','F35','TEMPEST'], 'I': ['JAS39','JAS39','F35','ASFX'], 'A': ['HARRIER','TORNADO','F35','FCAS'], 'B': ['TORNADO','TORNADO','TORNADO','TEMPEST']},
 'RU': {'F': ['SU27','SU57','SU57','X02S'], 'I': ['MIG31','MIG31','MIG41','MIG41'], 'A': ['SU25','SU34','SU57','MIG41'], 'B': ['TU160','TU160','TU170','TU202']},
}
GRP_I = {'CN': 0, 'EU': 1, 'RU': 2, 'US': 3}
TY_I = {'F': 0, 'I': 1, 'A': 2, 'B': 3}
FT = {'AirFighter': 'F', 'AirInterceptor': 'I', 'AirAttacker': 'A', 'AirBomber': 'B'}
RECN = {'AirFighter': 12, 'AirInterceptor': 13, 'AirAttacker': 15, 'AirBomber': 11}

def dedupe(seq):
    seen = set(); out = []
    for gi, c in enumerate(seq):
        if c in seen: continue
        seen.add(c); out.append((gi, c))
    return out

def load():
    d = {}
    d['tech'] = open(OUT + '/assets/game/technologies/Technologies.json', encoding='utf-8').read()
    d['units'] = {f: open(OUT + '/assets/game/units/%s.json' % f, encoding='utf-8').read() for f in RECN}
    d['langs'] = {b: open(OUT + '/assets/game/languages/%s.properties' % b, encoding='utf-8').read() for b in ['Bundle', 'Bundle_cn_sp', 'Bundle_cn_tr']}
    d['scen'] = {s: open(OUT + '/assets/map/Earth3/scenarios/%s/Data.json' % s, encoding='utf-8').read() for s in ['qianxi', 'ModernWorld', 'WW2', 'USA_States', 'brazil', 'SouthAmerica']}
    return d

def group_of(tag):
    t = tag.lower()
    for p in ['chi', 'chn']:
        if t.startswith(p): return 'CN'
    for p in ['usa', 'jap', 'kor', 'tai']:
        if t.startswith(p): return 'US'
    for p in ['rus', 'sov', 'prk', 'ind', 'vnm', 'irn']:
        if t.startswith(p): return 'RU'
    for p in ['ger', 'fra', 'eng', 'ita', 'spa', 'pol', 'ukr']:
        if t.startswith(p): return 'EU'
    return 'RU'

def nodes_of(tech):
    out = {}
    for m in re.finditer(r'\{[^{}]*?ID:\s*(\d+),[^{}]*?\}', tech):
        blk = m.group(0); oid = int(m.group(1))
        name = (re.search(r'Name:\s*"([^"]*)"', blk) or [None, ''])[1]
        def g(k):
            mm = re.search(k + r':\s*(-?\d+)', blk)
            return int(mm.group(1)) if mm else None
        out[oid] = dict(name=name, req=g('RequiredTech'), r2=g('RequiredTech2'), col=g('TreeColumn'),
                        row=g('TreeRow'), cost=g('ResearchCost'), blk=blk)
    return out

def check(d):
    errs = []
    # S1 树
    n = nodes_of(d['tech'])
    if len(n) != 75: errs.append('S1 nodes=%d' % len(n))
    if sorted(n) != list(range(75)): errs.append('S1 id gap')
    for i in range(32, 75):
        nd = n.get(i)
        if not nd: errs.append('S1 missing %d' % i); continue
        if not (42 <= nd['col'] <= 61): errs.append('S1 col %d=%s' % (i, nd['col']))
        if not (0 <= nd['row'] <= 4): errs.append('S1 row %d=%s' % (i, nd['row']))
        if not (nd['cost'] and nd['cost'] > 0): errs.append('S1 cost %d' % i)
        if 'ImageID: 0' not in nd['blk']: errs.append('S1 img %d' % i)
        if 'Repeatable: false' not in nd['blk']: errs.append('S1 rep %d' % i)
        if 'MaintainTechnologyName: true' not in nd['blk']: errs.append('S1 maintain %d' % i)
        if not re.match(r'^(T_|AF3_)', nd['name']): errs.append('S1 name %d=%s' % (i, nd['name']))
    for nm in re.findall(r'Name: "([^"]+)"', BASE_TECH):
        if nm not in d['tech']: errs.append('S1 old node lost: %s' % nm)
    # S2 闭包
    def closure(sid):
        seen = set(); st = [sid]
        while st:
            c = st.pop()
            if c in seen: continue
            seen.add(c)
            if c in n:
                for p in [n[c]['req'], n[c]['r2']]:
                    if p is not None and p >= 0 and p not in seen: st.append(p)
        return seen
    for sid, four in A4.items():
        cl = closure(sid)
        exp = {sid} | set(four)
        if cl != exp: errs.append('S2 closure %d=%s exp=%s' % (sid, sorted(cl), sorted(exp)))
    # S3 单位（顺序序列断言：去重后逐条核对）
    total = 0
    for f, txt in d['units'].items():
        t = FT[f]
        recs = re.findall(r'\{[^{}]*?\}', txt)
        if len(recs) != RECN[f]: errs.append('S3 %s recs=%d' % (f, len(recs)))
        expected = []
        for g in ['CN', 'US', 'EU', 'RU']:
            for gi, code in dedupe(MAP2[g][t]):
                expected.append((g, gi, code))
        if len(expected) != len(recs): errs.append('S3 %s expected=%d' % (f, len(expected)))
        for (r, (g, gi, code)) in zip(recs, expected):
            nm = re.search(r'Name:\s*"([^"]+)"', r).group(1)
            img = int(re.search(r'ImageID:\s*(\d+)', r).group(1))
            lvl = int(re.search(r'UnitLevel:\s*(\d+)', r).group(1))
            req = int(re.search(r'RequiredTechID:\s*(\d+)', r).group(1))
            exp_nm = 'A_%s_%s_%s' % (g, code, t)
            exp_img = 70 + gi * 16 + GRP_I[g] * 4 + TY_I[t]
            if nm != exp_nm: errs.append('S3 name %s!=%s' % (nm, exp_nm))
            if img != exp_img: errs.append('S3 img %s %d!=%d' % (nm, img, exp_img))
            if lvl != gi: errs.append('S3 lvl %s %d!=%d' % (nm, lvl, gi))
            if req != NODEID[g][code]: errs.append('S3 req %s %d' % (nm, req))
        if len(set(re.findall(r'Name:\s*"([^"]+)"', txt))) != len(recs): errs.append('S3 %s dup names' % f)
        total += len(recs)
    if total != 51: errs.append('S3 total=%d' % total)
    # 每个节点的解锁集合不得有重复名（用户要求）
    byNode = {}
    for f, txt in d['units'].items():
        for r in re.findall(r'\{[^{}]*?\}', txt):
            nm = re.search(r'Name:\s*"([^"]+)"', r).group(1)
            req = int(re.search(r'RequiredTechID:\s*(\d+)', r).group(1))
            byNode.setdefault(req, []).append(nm)
    for rid, nms in byNode.items():
        if len(set(nms)) != len(nms): errs.append('S3 node %d dup %s' % (rid, nms))
    # S4 语言
    for b, txt in d['langs'].items():
        hit = len(re.findall(r'(?m)^((A_[A-Z]{2}_|T_[A-Z]{2}_|AF3_))', txt))
        if hit != 94: errs.append('S4 %s keys=%d' % (b, hit))
    for k in ['T_CN_J20', 'T_US_F22', 'T_EU_TORNADO', 'T_RU_TU160', 'A_CN_J11_F', 'AF3_CN']:
        for b, txt in d['langs'].items():
            if not re.search(r'(?m)^%s = ' % re.escape(k), txt): errs.append('S4 miss %s@%s' % (k, b))
    # S5 剧本
    tot = 0
    for s, txt in d['scen'].items():
        for m in re.finditer(r'\{[^{}]*?CivTAG[^{}]*?\}', txt):
            rec = m.group(0); tot += 1
            tag = re.search(r'CivTAG:\s*"([^"]+)"', rec).group(1)
            mv = re.search(r'TechnologyID:\s*(-?\d+)', rec)
            if not mv: errs.append('S5 %s %s no-techid' % (s, tag)); continue
            val = int(mv.group(1))
            exp = S_ID[group_of(tag)]
            if val != exp: errs.append('S5 %s %s %d!=%d' % (s, tag, val, exp))
    if tot != 955: errs.append('S5 total=%d' % tot)
    # S6 引用域
    scan = d['tech'] + ''.join(d['units'].values())
    for p in ['game/buildings/Buildings.json', 'game/buildings/BuildingsResources.json', 'game/laws/Laws.json', 'game/resources/Resources.json', 'game/advantages/Advantages.json']:
        scan += z.read('assets/' + p).decode('utf-8')
    vals = []
    for m in re.finditer(r'RequiredTechID\s*:\s*(\[[^\]]*\]|-?\d+)', scan):
        vals += [int(x) for x in re.findall(r'-?\d+', m.group(1))]
    if max(vals) > 74: errs.append('S6 max %d' % max(vals))
    if min(vals) < -1: errs.append('S6 min %d' % min(vals))
    return errs

d = load()
errs = check(d)
print('=== 正样本（期望 0 错误）===')
print('errs =', errs[:8], '...' if len(errs) > 8 else '')
ok = len(errs) == 0

print('=== 负样本（期望全红）===')
d1 = dict(d); d1['scen'] = dict(d['scen'])
d1['scen']['WW2'] = re.sub(r'TechnologyID: \d+,', '', d['scen']['WW2'], count=1)
e1 = check(d1)
d2 = dict(d)
d2['tech'] = re.sub(r'(ID: 32,[^{}]*?RequiredTech2:\s*)34', r'\g<1>-1', d['tech'], count=1)
e2 = check(d2)
d3 = dict(d); d3['langs'] = dict(d['langs'])
d3['langs']['Bundle'] = re.sub(r'(?m)^A_CN_J11_F = .*\n', '', d['langs']['Bundle'], count=1)
e3 = check(d3)
d4 = dict(d); d4['units'] = dict(d['units'])
d4['units']['AirFighter'] = d['units']['AirFighter'].replace('RequiredTechID: 33', 'RequiredTechID: 0', 1)
e4 = check(d4)
d5 = dict(d); d5['units'] = dict(d['units'])
d5['units']['AirFighter'] = d['units']['AirFighter'].replace('ImageID: 82', 'ImageID: 74', 1)
e5 = check(d5)
d6 = dict(d)
d6['tech'] = d['tech'].replace('MaintainTechnologyName: true,', 'MaintainTechnologyName: false,', 1)
e6 = check(d6)
d7 = dict(d); d7['units'] = dict(d['units'])
d7['units']['AirFighter'] = d['units']['AirFighter'].replace('A_CN_J36_F', 'A_CN_J20_F', 1)
e7 = check(d7)

def red(e, tag):
    print('%-4s -> %s  %s' % (tag, '红 ✓' if len(e) else '绿 ✗(负样本失效)', e[:2]))
red(e1, 'N1'); red(e2, 'N2'); red(e3, 'N3'); red(e4, 'N4'); red(e5, 'N5'); red(e6, 'N6'); red(e7, 'N7')

allok = ok and all(len(e) > 0 for e in [e1, e2, e3, e4, e5, e6, e7])
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)