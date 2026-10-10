# -*- coding: utf-8 -*-
# B3 门禁 v1：对 STAGE 产出做独立断言（S1-S6）+ 负样本（N1-N4，必须全红）
# 用法: python3 check_b3_v1.py
import re, sys, zipfile

OUT = '/sdcard/GLG/历史23/build_inputs/b3/out'
APK = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d259.apk'
z = zipfile.ZipFile(APK)
BASE_TECH = z.read('assets/game/technologies/Technologies.json').decode('utf-8')

def load():
    d = {}
    d['tech'] = open(OUT + '/assets/game/technologies/Technologies.json', encoding='utf-8').read()
    d['units'] = {f: open(OUT + '/assets/game/units/%s.json' % f, encoding='utf-8').read() for f in ['AirFighter', 'AirInterceptor', 'AirAttacker', 'AirBomber']}
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

S_ID = {'CN': 32, 'US': 45, 'EU': 55, 'RU': 64}
A4 = {32: (33, 34, 35, 36), 45: (46, 47, 48), 55: (56, 57, 58, 59), 64: (65, 66, 67, 68)}

def nodes_of(tech):
    out = {}
    for m in re.finditer(r'\{[^{}]*?ID:\s*(\d+),[^{}]*?\}', tech):
        blk = m.group(0); oid = int(m.group(1))
        g = lambda k: (re.search(k + r':\s*(-?\d+)', blk) or [None, None])[1] if re.search(k + r':\s*(-?\d+)', blk) else None
        name = (re.search(r'Name:\s*"([^"]*)"', blk) or [None, ''])[1]
        req = re.search(r'RequiredTech:\s*(-?\d+)', blk)
        r2 = re.search(r'RequiredTech2:\s*(-?\d+)', blk)
        col = re.search(r'TreeColumn:\s*(-?\d+)', blk)
        row = re.search(r'TreeRow:\s*(-?\d+)', blk)
        cost = re.search(r'ResearchCost:\s*(-?\d+)', blk)
        out[oid] = dict(name=name, req=int(req.group(1)) if req else None, r2=int(r2.group(1)) if r2 else None,
                        col=int(col.group(1)) if col else None, row=int(row.group(1)) if row else None,
                        cost=int(cost.group(1)) if cost else None, blk=blk)
    return out

def check(d, expect_fail=None):
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
    for nm in re.findall(r'Name: "([^"]+)"', BASE_TECH):
        if nm not in d['tech']: errs.append('S1 old node lost: %s' % nm)
    # S2 闭包
    def closure(sid, nn):
        seen = set(); st = [sid]
        while st:
            c = st.pop()
            if c in seen: continue
            seen.add(c)
            if c in nn:
                for p in [nn[c]['req'], nn[c]['r2']]:
                    if p is not None and p >= 0 and p not in seen: st.append(p)
        return seen
    for sid, four in A4.items():
        cl = closure(sid, n)
        exp = {sid} | set(four)
        if cl != exp: errs.append('S2 closure %d=%s exp=%s' % (sid, sorted(cl), sorted(exp)))
    # S3 单位
    keys = set(); imgs = set()
    for f, txt in d['units'].items():
        recs = re.findall(r'\{[^{}]*?\}', txt)
        if len(recs) != 16: errs.append('S3 %s recs=%d' % (f, len(recs)))
        for r in recs:
            req = int(re.search(r'RequiredTechID:\s*(\d+)', r).group(1))
            lvl = int(re.search(r'UnitLevel:\s*(\d+)', r).group(1))
            img = int(re.search(r'ImageID:\s*(\d+)', r).group(1))
            nm = re.search(r'Name:\s*"([^"]+)"', r).group(1)
            if not (32 <= req <= 74): errs.append('S3 req %s' % req)
            if not (0 <= lvl <= 3): errs.append('S3 lvl')
            if not (70 <= img <= 133): errs.append('S3 img %s' % img)
            keys.add(nm); imgs.add(img)
    if imgs != set(range(70, 134)): errs.append('S3 img set')
    # S3b 逐条图号公式断言（独立常量表；修 grp 组序 bug 时新增）
    MAP2 = {
     'CN': {'F': ['J11','J20','J20','J36'], 'I': ['J8','J10','J20','J50'], 'A': ['Q5','J11','J35','J50'], 'B': ['H6','H7','H20','H29']},
     'US': {'F': ['F14','F22','F22','F47'], 'I': ['F14','F22','F35','CFA44'], 'A': ['A10','F35','X32','X32'], 'B': ['B1','B2','B2','B2']},
     'EU': {'F': ['EF2000','EF2000','F35','TEMPEST'], 'I': ['JAS39','JAS39','F35','ASFX'], 'A': ['HARRIER','TORNADO','F35','FCAS'], 'B': ['TORNADO','TORNADO','TORNADO','TEMPEST']},
     'RU': {'F': ['SU27','SU57','SU57','X02S'], 'I': ['MIG31','MIG31','MIG41','MIG41'], 'A': ['SU25','SU34','SU57','MIG41'], 'B': ['TU160','TU160','TU170','TU202']},
    }
    GRP_I = {'CN': 0, 'EU': 1, 'RU': 2, 'US': 3}
    TY_I = {'F': 0, 'I': 1, 'A': 2, 'B': 3}
    FT = {'AirFighter': 'F', 'AirInterceptor': 'I', 'AirAttacker': 'A', 'AirBomber': 'B'}
    for f, txt in d['units'].items():
        t = FT[f]
        recs = re.findall(r'\{[^{}]*?\}', txt)
        names = [re.search(r'Name:\s*"([^"]+)"', r).group(1) for r in recs]
        for k0 in range(0, len(names), 4):
            blk = recs[k0:k0 + 4]; nms = names[k0:k0 + 4]
            g = re.match(r'A_([A-Z]{2})_', nms[0]).group(1)
            for k, (r, nm) in enumerate(zip(blk, nms)):
                g2, code, tt = re.match(r'A_([A-Z]{2})_([A-Z0-9]+)_([FIAB])$', nm).groups()
                exp_code = MAP2[g][t][k]
                exp_img = 70 + k * 16 + GRP_I[g] * 4 + TY_I[t]
                img = int(re.search(r'ImageID:\s*(\d+)', r).group(1))
                lvl = int(re.search(r'UnitLevel:\s*(\d+)', r).group(1))
                if (g2 != g) or (tt != t) or (code != exp_code): errs.append('S3b %s seq' % nm)
                if img != exp_img: errs.append('S3b %s img %d!=%d' % (nm, img, exp_img))
                if lvl != k: errs.append('S3b %s lvl %d!=%d' % (nm, lvl, k))
    # S4 语言
    for b, txt in d['langs'].items():
        hit = len(re.findall(r'(?m)^(A_[A-Z]{2}_|\bAF3_)', txt))
        if hit != 55: errs.append('S4 %s keys=%d' % (b, hit))
    for k in list(keys) + ['AF3_CN', 'AF3_US', 'AF3_EU', 'AF3_RU']:
        for b, txt in d['langs'].items():
            if not re.search(r'(?m)^%s = ' % re.escape(k), txt): errs.append('S4 miss %s@%s' % (k, b))
    # S5 剧本
    tot = 0
    for s, txt in d['scen'].items():
        for m in re.finditer(r'\{[^{}]*?CivTAG[^{}]*?\}', txt):
            rec = m.group(0); tot += 1
            tag = re.search(r'CivTAG:\s*"([^"]+)"', rec).group(1)
            mv = re.search(r'TechnologyID:\s*(-?\d+)', rec)
            if not mv:
                errs.append('S5 %s %s no-techid' % (s, tag)); continue
            val = int(mv.group(1))
            exp = S_ID[group_of(tag)]
            if val != exp: errs.append('S5 %s %s %d!=%d' % (s, tag, val, exp))
    if tot != 955: errs.append('S5 total=%d' % tot)
    # S6 引用域（树 + 单位 + 基线建筑/法律/资源/优势）
    scan = d['tech'] + ''.join(d['units'].values())
    for p in ['game/buildings/Buildings.json', 'game/buildings/BuildingsResources.json', 'game/laws/Laws.json', 'game/resources/Resources.json', 'game/advantages/Advantages.json']:
        scan += z.read('assets/' + p).decode('utf-8')
    ids = [int(x) for x in re.findall(r'RequiredTechID\s*:\s*(\[[^\]]*\]|-?\d+)', scan) for x in re.findall(r'-?\d+', x)] if False else None
    vals = []
    for m in re.finditer(r'RequiredTechID\s*:\s*(\[[^\]]*\]|-?\d+)', scan):
        vals += [int(x) for x in re.findall(r'-?\d+', m.group(1))]
    if max(vals) > 74: errs.append('S6 max %d' % max(vals))
    if min(vals) < -1: errs.append('S6 min %d' % min(vals))
    return errs

d = load()
errs = check(d)
print('=== 正样本（期望 0 错误）===')
print('errs =', errs[:10], '...' if len(errs) > 10 else '')
ok = len(errs) == 0

print('=== 负样本（期望全红）===')
# N1 删一条 TechnologyID
d1 = {k: (dict(v) if isinstance(v, dict) else v) for k, v in d.items()}
d1['scen'] = {s: t for s, t in d['scen'].items()}
d1['scen']['WW2'] = d1['scen']['WW2'].replace('TechnologyID: 0,', '', 1).replace('TechnologyID: 64,', '', 1)
e1 = check(d1)
# N2 断链：32.req2 -> -1
d2 = dict(d); d2['tech'] = d['tech'].replace('ID: 32,', 'ID: 32,####', 1)  # 防呆占位（不破坏）
d2['tech'] = re.sub(r'(ID: 32,[^{}]*?RequiredTech2:\s*)34', r'\g<1>-1', d['tech'], count=1)
e2 = check(d2)
# N3 删一个语言键
d3 = dict(d); d3['langs'] = dict(d['langs'])
d3['langs']['Bundle'] = re.sub(r'(?m)^A_CN_J11_F = .*\n', '', d['langs']['Bundle'], count=1)
e3 = check(d3)
# N4 单位 req 越界（模拟旧记录回归）
d4 = dict(d); d4['units'] = dict(d['units'])
d4['units']['AirFighter'] = d['units']['AirFighter'].replace('RequiredTechID: 33', 'RequiredTechID: 0', 1)
e4 = check(d4)
# N5 图号错位（模拟组序错位回归：把美国首条图号改回"欧"的74）
d5 = dict(d); d5['units'] = dict(d['units'])
d5['units']['AirFighter'] = d['units']['AirFighter'].replace('ImageID: 82', 'ImageID: 74', 1)
e5 = check(d5)

def red(e, tag):
    print('%-4s -> %s  %s' % (tag, '红 ✓' if len(e) else '绿 ✗(负样本失效)', e[:2]))
red(e1, 'N1'); red(e2, 'N2'); red(e3, 'N3'); red(e4, 'N4'); red(e5, 'N5')

allok = ok and all(len(e) > 0 for e in [e1, e2, e3, e4, e5])
print('=== 门禁结果:', 'PASS' if allok else 'FAIL', '===')
sys.exit(0 if allok else 1)