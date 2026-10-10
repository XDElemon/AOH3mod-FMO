# -*- coding: utf-8 -*-
# B3 生成器 v1: r6d259 基线 -> STAGE（树 43 节点 / 单位 64 记录 / 语言 55 键 / 剧本 955 国）
# 规则：先全量生成于内存 -> 全部校验 -> 才写盘（防半成品）
import zipfile, re, os, hashlib, shutil, collections

APK = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d259.apk'
OUT = '/sdcard/GLG/历史23/build_inputs/b3/out'
SCEN = ['qianxi', 'ModernWorld', 'WW2', 'USA_States', 'brazil', 'SouthAmerica']

# ---------- 1. 节点定义 ----------
S_ID = {'CN': 32, 'US': 45, 'EU': 55, 'RU': 64}
# (id, code) 按区块
NODES = {
 'CN': [(33,'J11'),(34,'J8'),(35,'Q5'),(36,'H6'),(37,'J20'),(38,'J10'),(39,'H7'),(40,'J35'),(41,'H20'),(42,'J36'),(43,'J50'),(44,'H29')],
 'US': [(46,'F14'),(47,'A10'),(48,'B1'),(49,'F22'),(50,'F35'),(51,'B2'),(52,'X32'),(53,'F47'),(54,'CFA44')],
 'EU': [(56,'EF2000'),(57,'JAS39'),(58,'HARRIER'),(59,'TORNADO'),(60,'F35'),(61,'TEMPEST'),(62,'ASFX'),(63,'FCAS')],
 'RU': [(65,'SU27'),(66,'MIG31'),(67,'SU25'),(68,'TU160'),(69,'SU57'),(70,'SU34'),(71,'MIG41'),(72,'TU170'),(73,'X02S'),(74,'TU202')],
}
CODE2ID = {g: {c: i for i, c in lst} for g, lst in NODES.items()}
# 每个模型节点的 (列,行)
POS = {
 'CN': {'J11':(43,0),'J8':(43,1),'Q5':(43,2),'H6':(43,3),'J20':(44,0),'J10':(44,1),'H7':(44,3),'J35':(45,2),'H20':(45,3),'J36':(46,0),'J50':(46,1),'H29':(46,3)},
 'US': {'F14':(48,0),'A10':(48,2),'B1':(48,3),'F22':(49,0),'F35':(49,2),'B2':(49,3),'X32':(50,2),'F47':(51,0),'CFA44':(51,1)},
 'EU': {'EF2000':(53,0),'JAS39':(53,1),'HARRIER':(53,2),'TORNADO':(53,3),'F35':(55,0),'TEMPEST':(56,0),'ASFX':(56,1),'FCAS':(56,2)},
 'RU': {'SU27':(58,0),'MIG31':(58,1),'SU25':(58,2),'TU160':(58,3),'SU57':(59,0),'SU34':(59,2),'MIG41':(60,1),'TU170':(60,3),'X02S':(61,0),'TU202':(61,3)},
}
S_POS = {'CN': (42,4), 'US': (47,4), 'EU': (52,4), 'RU': (57,4)}
# req（型号节点）：见 R3-01 表
REQ = {
 37:33, 38:34, 39:36, 40:33, 41:39, 42:37, 43:37, 44:41,
 49:46, 50:47, 51:48, 52:50, 53:49, 54:50,
 60:56, 61:60, 62:60, 63:60,
 69:65, 70:67, 71:66, 72:68, 73:69, 74:72,
}
# S 闭包链（req, req2）；基础四型 req=-1
S_CHAIN = {'CN': (33, 34, {33: 35, 34: 36}), 'US': (46, 47, {46: 48}), 'EU': (56, 57, {56: 58, 57: 59}), 'RU': (65, 66, {65: 67, 66: 68})}
# (组,型,代) -> code ；型：F战 I截 A攻 B轰
MAP = {
 'CN': {'F': ['J11','J20','J20','J36'], 'I': ['J8','J10','J20','J50'], 'A': ['Q5','J11','J35','J50'], 'B': ['H6','H7','H20','H29']},
 'US': {'F': ['F14','F22','F22','F47'], 'I': ['F14','F22','F35','CFA44'], 'A': ['A10','F35','X32','X32'], 'B': ['B1','B2','B2','B2']},
 'EU': {'F': ['EF2000','EF2000','F35','TEMPEST'], 'I': ['JAS39','JAS39','F35','ASFX'], 'A': ['HARRIER','TORNADO','F35','FCAS'], 'B': ['TORNADO','TORNADO','TORNADO','TEMPEST']},
 'RU': {'F': ['SU27','SU57','SU57','X02S'], 'I': ['MIG31','MIG31','MIG41','MIG41'], 'A': ['SU25','SU34','SU57','MIG41'], 'B': ['TU160','TU160','TU170','TU202']},
}
TYPE_IDX = {'F': 0, 'I': 1, 'A': 2, 'B': 3}
TYPE_FILE = {'F': 'AirFighter', 'I': 'AirInterceptor', 'A': 'AirAttacker', 'B': 'AirBomber'}
GRP_IDX = {'CN': 0, 'US': 1, 'EU': 2, 'RU': 3}
# 显示名
ZH = {'J11':'歼11','J8':'歼8','Q5':'强5','H6':'轰6','J20':'歼20','J10':'歼10','H7':'轰7','J35':'歼35','H20':'轰20','J36':'歼36','J50':'歼50','H29':'轰29',
 'F14':'F-14','A10':'A-10','B1':'B-1','F22':'F-22','F35':'F-35','B2':'B-2','X32':'X-32','F47':'F-47','CFA44':'CFA-44',
 'EF2000':'台风','JAS39':'鹰狮','HARRIER':'鹞式','TORNADO':'狂风','TEMPEST':'暴风雨','ASFX':'ASF-X','FCAS':'FCAS',
 'SU27':'苏27','MIG31':'米格31','SU25':'苏25','TU160':'图160','SU57':'苏57','SU34':'苏34','MIG41':'米格41','TU170':'图170','X02S':'X-02S','TU202':'图202'}
EN = {'J11':'J-11','J8':'J-8','Q5':'Q-5','H6':'H-6','J20':'J-20','J10':'J-10','H7':'H-7','J35':'J-35','H20':'H-20','J36':'J-36','J50':'J-50','H29':'H-29',
 'F14':'F-14','A10':'A-10','B1':'B-1','F22':'F-22','F35':'F-35','B2':'B-2','X32':'X-32','F47':'F-47','CFA44':'CFA-44',
 'EF2000':'EF-2000','JAS39':'JAS-39','HARRIER':'Harrier','TORNADO':'Tornado','TEMPEST':'Tempest','ASFX':'ASF-X','FCAS':'FCAS',
 'SU27':'Su-27','MIG31':'MiG-31','SU25':'Su-25','TU160':'Tu-160','SU57':'Su-57','SU34':'Su-34','MIG41':'MiG-41','TU170':'Tu-170','X02S':'X-02S','TU202':'Tu-202'}
SUF_ZH = {'F':'战斗机','I':'截击机','A':'攻击机','B':'轰炸机'}
SUF_EN = {'F':' Fighter','I':' Interceptor','A':' Attacker','B':' Bomber'}
TRMAP = str.maketrans('歼击轰强苏图风狮鹰鹞战斗军国欧台罗机', '殲擊轟強蘇圖風獅鷹鷂戰鬥軍國歐颱羅機')
def to_tr(s): return s.translate(TRMAP)

# ---------- 2. 读基线 ----------
z = zipfile.ZipFile(APK)
TECH_OLD = z.read('assets/game/technologies/Technologies.json').decode('utf-8')
BUNDLES = {n: z.read('assets/game/languages/%s.properties' % n).decode('utf-8') for n in ['Bundle', 'Bundle_cn_sp', 'Bundle_cn_tr']}
SCEN_TXT = {s: z.read('assets/map/Earth3/scenarios/%s/Data.json' % s).decode('utf-8') for s in SCEN}

# ---------- 3. 生成：节点 ----------
def node_key(g, c, tlist):
    return 'A_%s_%s_%s' % (g, c, tlist[0])  # placeholder, fixed later by first-unit sim
def base_key(g, c): return 'A_%s_%s' % (g, c)

records = []  # (g, t, gen, code, key, img, level, req, stats)
for g in ['CN', 'US', 'EU', 'RU']:
    for t in ['F', 'I', 'A', 'B']:
        for gi, code in enumerate(MAP[g][t]):
            gen = 3 + gi
            key = 'A_%s_%s_%s' % (g, code, t)
            img = 70 + (gen - 3) * 16 + GRP_IDX[g] * 4 + TYPE_IDX[t]
            req = CODE2ID[g][code]
            records.append((g, t, gen, code, key, img, gi, req))

# 统计每个节点被哪些记录引用（登记序：型 7I,8F,9B,10A -> 我们的顺序 I,F,B,A? 实际：截7→战8→轰9→攻10）
FIRST_ORDER = ['I', 'F', 'B', 'A']
first_key = {}
for g in ['CN', 'US', 'EU', 'RU']:
    for fi in FIRST_ORDER:
        for (rg, rt, rgen, rcode, rkey, rimg, rlvl, rreq) in records:
            if rg == g and rt == fi:
                if rreq not in first_key:
                    first_key[rreq] = rkey

blocks = []
for g in ['CN', 'US', 'EU', 'RU']:
    sid = S_ID[g]
    c0, r0 = S_POS[g]
    a1, a2, chain = S_CHAIN[g]
    blocks.append((sid, 'AF3_%s' % g, c0, r0, 250, -1, -1))
    for (cid, code) in NODES[g]:
        col, row = POS[g][code]
        cost = [11000, 13000, 16000, 20000][0]  # 占位，稍后覆盖
        gen = min(gi for gi, cc in enumerate(MAP[g]['F']) if cc == code) if code in MAP[g]['F'] else None
        # 代 = 该节点在 (型,代) 表中最小的 gen
        gens = [3 + gi for t in ['F','I','A','B'] for gi, cc in enumerate(MAP[g][t]) if cc == code]
        gen = min(gens)
        cost = [11000, 13000, 16000, 20000][gen - 3]
        req = REQ.get(cid, -1)
        r2 = chain.get(cid, -1)
        if a1 == cid: req = -1; r2 = a2 if cid == a1 else chain.get(cid, -1)
        # 基础四型：req=-1；其 req2 来自 chain
        if cid in (a1, a2) or cid in chain:
            req = -1
            r2 = chain.get(cid, -1)
            if cid == a1: r2 = a2
        if cid == sid: req = -1
        blocks.append((cid, first_key[cid], col, row, cost, req, r2))
# 修正 S 节点：req=a1, req2=a2
blocks[:] = []
for g in ['CN', 'US', 'EU', 'RU']:
    sid = S_ID[g]; a1, a2, chain = S_CHAIN[g]
    c0, r0 = S_POS[g]
    blocks.append((sid, 'AF3_%s' % g, c0, r0, 250, a1, a2))
    for (cid, code) in NODES[g]:
        col, row = POS[g][code]
        gens = [3 + gi for t in ['F','I','A','B'] for gi, cc in enumerate(MAP[g][t]) if cc == code]
        gen = min(gens); cost = [11000, 13000, 16000, 20000][gen - 3]
        req = REQ.get(cid, -1); r2 = chain.get(cid, -1)
        blocks.append((cid, first_key[cid], col, row, cost, req, r2))

# ---------- 4. 生成：树文本（CRLF） ----------
NL = '\r\n'
new_blocks = ''
for (nid, key, col, row, cost, req, r2) in blocks:
    new_blocks += ('\t\t{%s\t\t\tID: %d,%s\t\t\tName: "%s",%s\t\t\tImageID: 0,%s\t\t\t%s'
                   '\t\t\tTreeColumn: %d,%s\t\t\tTreeRow: %d,%s\t\t\t%s'
                   '\t\t\tRequiredTech: %d,%s\t\t\tRequiredTech2: %d,%s\t\t\t%s'
                   '\t\t\tResearchCost: %d,%s\t\t\t%s'
                   '\t\t\tRepeatable: false,%s\t\t\tAI: 8,%s\t\t},%s' %
                   (NL, nid, NL, key, NL, NL, NL, col, NL, row, NL, NL,
                    req, NL, r2, NL, NL, cost, NL, NL, NL, NL, NL))
anchor = '\r\n\t],\r\n\tAge_of_History: Technology\r\n}'
assert TECH_OLD.count(anchor) == 1, 'tree anchor not single'
TECH_NEW = TECH_OLD.replace(anchor, '\r\n' + new_blocks + '\t],\r\n\tAge_of_History: Technology\r\n}')

# ---------- 5. 生成：单位文件（LF） ----------
def stats(t, gi):
    base = {'F': (20, 15, 11.4, 40, 0.32), 'I': (30, 12, 12.0, 32, 0.24), 'A': (30, 20, 11.0, 48, 0.38), 'B': (60, 22, 10.6, 80, 0.64)}[t]
    am, dm = [1.0, 1.25, 1.55, 1.9][gi], [1.0, 1.25, 1.55, 1.9][gi]
    msadd, cm, mcm = [0, 1, 2, 3][gi], [1.0, 1.3, 1.7, 2.1][gi], [1.0, 1.25, 1.5, 1.8][gi]
    return (int(base[0] * am + 0.5), int(base[1] * dm + 0.5), base[2] + msadd,
            int(base[3] * cm + 0.5), base[4] * mcm, 80 + 10 * gi)

unit_txt = {}
for t in ['F', 'I', 'A', 'B']:
    s = '{\n\tArmy: [\n'
    for g in ['CN', 'US', 'EU', 'RU']:
        for gi, code in enumerate(MAP[g][t]):
            gen = 3 + gi
            key = 'A_%s_%s_%s' % (g, code, t)
            img = 70 + (gen - 3) * 16 + GRP_IDX[g] * 4 + TYPE_IDX[t]
            req = CODE2ID[g][code]
            atk, df, ms, cost, mc, rt = stats(t, gi)
            s += ('\t\t{\n\t\t\tName: "%s",\n\t\t\tImageID: %d,\n\t\t\tUnitLevel: %d,\n\t\t\tAttack: %d,\n\t\t\tDefense: %d,\n'
                  '\t\t\tMovementSpeed: %.1f,\n\t\t\tAttackRange: 3,\n\t\t\tSiegeProgress: 0.25,\n\t\t\tRequiredTechID: %d,\n'
                  '\t\t\tCost: %d,\n\t\t\tMaintenanceCost: %.2f,\n\t\t\tRecruitmentTime: %d,\n\t\t},\n' % (key, img, gi, atk, df, ms, req, cost, mc, rt))
    s += '\t],\n\tAge_of_History: Army\n}\n'
    unit_txt[TYPE_FILE[t]] = s

# ---------- 6. 语言键 ----------
lang_keys = collections.OrderedDict()
for g in ['CN', 'US', 'EU', 'RU']:
    for t in ['F', 'I', 'A', 'B']:
        for code in MAP[g][t]:
            k = 'A_%s_%s_%s' % (g, code, t)
            if k not in lang_keys:
                lang_keys[k] = (ZH[code] + SUF_ZH[t], EN[code] + SUF_EN[t], to_tr(ZH[code] + SUF_ZH[t]))
for g, nm in [('CN', '中国'), ('US', '美国'), ('EU', '欧洲'), ('RU', '俄罗斯')]:
    k = 'AF3_%s' % g
    lang_keys[k] = (nm + '三代空军', g + ' 3rd-Gen Air Force', to_tr(nm + '三代空军'))

bundle_new = {}
for bn, txt in BUNDLES.items():
    add = '\n' + ''.join('%s = %s\n' % (k, v[0] if bn == 'Bundle_cn_sp' else (v[1] if bn == 'Bundle' else v[2])) for k, v in lang_keys.items())
    bundle_new[bn] = txt + add

# ---------- 7. 剧本 ----------
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

scen_new = {}; scen_ledger = []
for s in SCEN:
    txt = SCEN_TXT[s]; out = []; last = 0; cnt = 0; fb = 0
    for m in re.finditer(r'\{[^{}]*?\}', txt):
        rec = m.group(0)
        if 'CivTAG' not in rec:
            continue
        tag = re.search(r'CivTAG:\s*"([^"]+)"', rec).group(1)
        g = group_of(tag); val = S_ID[g]; cnt += 1
        old = None
        if 'TechnologyID' in rec:
            old = re.search(r'TechnologyID:\s*(-?\d+)', rec).group(1)
            new_rec = re.sub(r'(TechnologyID:\s*)(-?\d+)', r'\g<1>%d' % val, rec, count=1)
        else:
            nl = '\r\n' if '\r\n' in rec else '\n'
            if nl + '\tPopulation' in rec:
                new_rec = rec.replace(nl + '\tPopulation', nl + '\tTechnologyID: %d,' % val + nl + '\tPopulation', 1)
            else:
                fb += 1
                i = rec.rfind(nl + '}')
                head = rec[:i]
                head = (head + ',') if not head.endswith(',') else head
                new_rec = head + nl + '\tTechnologyID: %d' % val + rec[i:]
        out.append(txt[last:m.start()]); out.append(new_rec); last = m.end()
        scen_ledger.append((s, tag, g, old, val))
    out.append(txt[last:])
    scen_new[s] = ''.join(out)
    print('scen %-14s civs=%d  fb=%d' % (s, cnt, fb))

# ---------- 8. 全量校验 ----------
errs = []
# 8.1 节点
ids = [n[0] for n in blocks]
assert ids == list(range(32, 75)), 'node id continuity broken'
assert len(blocks) == 43
# 8.2 闭包模拟
def closure(sid):
    req = {n[0]: (n[5], n[6]) for n in blocks}
    seen = set(); stack = [sid]
    while stack:
        cur = stack.pop()
        if cur in seen: continue
        seen.add(cur)
        if cur in req:
            for p in req[cur]:
                if p >= 0 and p not in seen: stack.append(p)
    return seen
for g, (a1, a2, chain) in S_CHAIN.items():
    cl = closure(S_ID[g])
    expect = {S_ID[g], a1, a2} | set(chain.keys()) | set(chain.values())
    if cl != expect:
        errs.append('closure %s: %s != %s' % (g, sorted(cl), sorted(expect)))
# 8.3 树文本
if TECH_NEW.count('\t\t\tID: ') != 75: errs.append('tree id count != 75')
if TECH_NEW.count('\t\t\tTreeColumn: ') != 75: errs.append('tree column count != 75')
# 8.4 单位
uniq_img = set()
for t in ['F', 'I', 'A', 'B']:
    s = unit_txt[TYPE_FILE[t]]
    n = s.count('\t\t{\n\t\t\tName:')
    if n != 16: errs.append('%s records=%d' % (t, n))
    for m in re.finditer(r'ImageID: (\d+)', s):
        uniq_img.add(int(m.group(1)))
if uniq_img != set(range(70, 134)): errs.append('images mismatch %s' % sorted(uniq_img)[:5])
# 8.5 语言：键唯一且不与旧冲突
for bn, txt in bundle_new.items():
    for k in lang_keys:
        if re.search(r'(?m)^%s = ' % re.escape(k), BUNDLES[bn]):
            errs.append('key exists: %s in %s' % (k, bn))
# 8.6 剧本
for s in SCEN:
    c1 = scen_new[s].count('CivTAG'); c2 = scen_new[s].count('TechnologyID')
    c3 = SCEN_TXT[s].count('CivTAG')
    if c1 != c3: errs.append('scen %s civ count changed %d->%d' % (s, c3, c1))
    if c2 != c3: errs.append('scen %s techid %d != civs %d' % (s, c2, c3))
    vals = set(re.findall(r'TechnologyID:\s*(-?\d+)', scen_new[s]))
    if not vals <= {'32', '45', '55', '64'}: errs.append('scen %s bad vals %s' % (s, vals))
# 8.7 子树引用域
tot = sum(scen_new[s].count('CivTAG') for s in SCEN)
if tot != 955: errs.append('total civs %d != 955' % tot)
print('checks done, total civs =', tot, 'errs =', errs)

# ---------- 9. 写盘 ----------
if errs:
    print('BLOCKED - 不写盘')
    raise SystemExit(1)
if os.path.exists(OUT):
    shutil.rmtree(OUT)
for sub in ['assets/game/technologies', 'assets/game/units', 'assets/game/languages']:
    os.makedirs(os.path.join(OUT, sub), exist_ok=True)
open(os.path.join(OUT, 'assets/game/technologies/Technologies.json'), 'w', encoding='utf-8').write(TECH_NEW)
for fn, txt in unit_txt.items():
    open(os.path.join(OUT, 'assets/game/units/%s.json' % fn), 'w', encoding='utf-8').write(txt)
for bn, txt in bundle_new.items():
    open(os.path.join(OUT, 'assets/game/languages/%s.properties' % bn), 'w', encoding='utf-8').write(txt)
for s in SCEN:
    d = os.path.join(OUT, 'assets/map/Earth3/scenarios', s)
    os.makedirs(d, exist_ok=True)
    open(os.path.join(d, 'Data.json'), 'w', encoding='utf-8').write(scen_new[s])
print('WROTE to', OUT)
print('lang keys =', len(lang_keys))
print('sample node:', blocks[0])
print('sample record:', records[0])
print('sample lang:', list(lang_keys.items())[:2])
